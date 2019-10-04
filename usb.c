#include "GLOBAL.H"
#include "MCU.H"
#include "KEYBOARD.H"
#include "USB.H"
#include "USB_DSC.H"


//-----main.c-----//
extern void Reboot_Mcu( BYTE );
extern void Delay_Xms( BYTE );
extern void idle();

//-----KEYBOARD.C-----//
extern BYTE LED_STATUS;

//extern KEY Key;
extern void KB_LED_Status( void );
extern void KB_LED_Off( void );
extern void initKeyboard( void );


BYTE volatile TxBusy;

BYTE IdleRate;
BYTE Protocol;

EP0INFO Ep0;


void Initial_USB( void )
  { USB[IEN] = CLR;                              // Disable USB all related interrupts
    
    USB[EPINDEX] = EP0;                          // Change to EP0 
    USB[EPCON] = ( TXEPEN | RXEPEN );            // Enable Tx & Rx
    USB[EPCON] |= ( TXSTL | RXSTL );             // Set RXSTL & TXSTL (prevent not SETUP Token)
    USB[TXCON] = TXCLR;                          // Clear Tx FIFO
    USB[RXCON] = RXCLR;                          // Clear Rx FIFO
    
    USB[UIE] = ( UTXIE0 | URXIE0 | UTXIE1 );   
      
    USB[IEN] = ( EF | EFSR );                    // Enable USB all related interrupts
    
    Ep0.Unit = EP0_MAX;                          // 
    Ep0.EmuOk = CLR;                             // Check Emulation status
    Ep0.RWEN = CLR;                              // Remote/Wakeup flag ( Default " Disable " )
    
    USB[UPCON] |= CONEN;                         // Connecter to Host ( Enable the pull-up resistor )
  }


void USB_Rd_FIFO( BYTE *Buffer , BYTE Cnt ) { 
  	BYTE i;
    for (i = 0; i < Cnt; i++) {  
        Buffer[i] = USB[RXDAT];
    }
}


void USB_Wr_FIFO( BYTE *Buffer , BYTE Cnt )
  { BYTE i;
    
    
    for ( i=0 ; i<Cnt ; i++ )  
       USB[TXDAT] = Buffer[i];
  }


void USB_Ep0_FIFO( void )
  { BYTE BLen;
    
    
    USB[TXCON] = TXCLR;                          // Clear Tx FIFO
    
    if ( USB[RXSTAT] & ( STOVW | EDOVW ))        // Setup Token
      { Ep0.Stage = SETUPSTAGE;
        while(1)
          { while(USB[RXSTAT] & STOVW);          // waiting STOVE = 0
            while(!( USB[RXSTAT] & EDOVW ));     // waiting EDOVW = 1
            USB[RXSTAT] &= ~EDOVW;               // Clear the EDOVW bit when reading the contents of the FIFO
            USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
            BLen = USB[RXCNT];                   // Chk total Rx Data count in Byte
            USB_Rd_FIFO( Ep0.RxTx , BLen );
            if (!(USB[RXSTAT] & ( STOVW | EDOVW )))
              break;
          }
        USB[EPCON] &= ~( RXSTL | TXSTL );        // Release Rx/Tx STAL
        USB[RXSTAT] &= ~RXSETUP;                 // Release Setup Token flag
        Ep0.All = BLen;                          // Only for analytic "Urd"
      }
    else if ( Ep0.Stage == DFU_STAGE )
      { BLen = USB[RXCNT];                       // Chk total Rx Data count in Byte  
      	Ep0.All -= BLen;
      	
      	USB_Rd_FIFO( Ep0.RxTx , BLen );
      	if ( BLen == EP0_MAX )
      	  { USB[TXCNT] = 0;
      	    Ep0.Stage = Ep0.RxTx[0];
      	  }
      	else
      	  { LED_STATUS = Ep0.RxTx[0];
      	    KB_LED_Status();
      	    USB[TXCNT] = 0;
            Ep0.Stage = STATUSSTAGE;
      	  }
      }
    else                                         // Zero Length Data in RXCNT
      { Ep0.Stage = STATUSSTAGE;
      	USB[EPCON] |= ( RXSTL | TXSTL );         // Receive the host "ACK" transaction , we should set Rx/Tx STAL
      }
    
    USB[RXCON] |= RXFFRC;                        // Set this bit , meaning that Rx Data has Read Complete
  }
  

void USB_Get_Status( void )
  { Ep0.All = 2;                                 // Only 2 byte transfer to the host
    
    
    Ep0.RxTx[1] = 0;
    switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      { case DEVICEREQUEST:    if ( Ep0.RWEN )
                                 Ep0.RxTx[0] = 0x02;// Return Function Remove Wake-up Enable
                               else
                                 Ep0.RxTx[0] = 0x00;// Return Function Remove Wake-up Disable
                               break;            // Chk Remote wakeup enabled or not
        case ENDPOINTREQUEST:  USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
                               if (( USB[EPCON] & RXSTL )||( USB[EPCON] & TXSTL ))
                                 Ep0.RxTx[0] = 0x01;// if EndPoint Rx/Tx STAL then set EndPoint Halt
                               else
                                 Ep0.RxTx[0] = 0x00;// else seting this EndPoint Avaliable for Rx/Tx  
                               USB[EPINDEX] = EP0;
                               break;
        case INTERFACEREQUEST: break;
        default:               USB[EPCON] |= ( RXSTL | TXSTL );
                               break; 
      }
  }  	


void USB_Clear_Feature( void )
  { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
                                 Ep0.RWEN = CLR;
                               else
                                 USB[EPCON] |= ( RXSTL | TXSTL );
                               break;            // Disable the Device Remote Wakeup function
        case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
                                 { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
                                   USB[EPCON] &= ~( RXSTL | TXSTL );
                                   USB[RXSTAT] = RXSOVW;// Enable RXSEQ/TXSEQ bit can be Updata , and
                                   USB[TXSTAT] = TXSOVW;// set Rx/Tx toggle buffer into DATA0
                                   USB[EPINDEX] = EP0;
                                 }
                               else
                                 USB[EPCON] |= ( RXSTL | TXSTL );
                               break;
        case INTERFACEREQUEST: break;
        default:               USB[EPCON] |= ( RXSTL | TXSTL );
                               break;
      }
  }
 
  
void USB_Set_Feature( void )
  { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
                                 Ep0.RWEN = SET;
                               else
                                 USB[EPCON] |= ( RXSTL | TXSTL );
                               break;            // Disable the Device Remote Wakeup function
        case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
                                 { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
                                   USB[EPCON] |= ( RXSTL | TXSTL );
                                   USB[EPINDEX] = EP0;
                                 }
                               else
                                 USB[EPCON] |= ( RXSTL | TXSTL );
                               break;
        case INTERFACEREQUEST: break;
        default:               USB[EPCON] |= ( RXSTL | TXSTL );
                               break; 
      }
  }  


void USB_Get_Descriptor( void )
  { union WTYPE WLen;
    
    
    WLen.B[0] = 0x00;                            // MSB
    Ep0.All = Ep0.RxTx[7];                       // MSB
    Ep0.All <<= 8;
    Ep0.All += Ep0.RxTx[6];                      // LSB
    switch( Ep0.RxTx[3] ) { 
    	case DEVICEDESCRIPTOR:        
    		Ep0.Buf = (void *)DEVICE_DESCRIPTOR;
            WLen.B[1] = Ep0.Buf[0];
            break;
        case CONFIGURATIONDESCRIPTOR: 
        	Ep0.Buf = (void *)CONGFIGURATION_DESCRIPTOR;
            WLen.B[1] = Ep0.Buf[2];// LSB
            break;
        case STRINGDESCRIPTOR:        
        	switch( Ep0.RxTx[2] ) { 
        		case 0:  
        			Ep0.Buf = (void *)LANGUAGEID_DESCRIPTOR;
        			break;
                case 1:  
                	if ( DEVICE_DESCRIPTOR[14] )
                		Ep0.Buf = (void *)MANUFACTURER_DESCRIPTOR;
                    else
                    	USB[EPCON] |= ( RXSTL | TXSTL );
                    break;
                case 2:  
                	if ( DEVICE_DESCRIPTOR[15] )
                		Ep0.Buf = (void *)PRODUCT_DESCRIPTOR;
                    else
                        USB[EPCON] |= ( RXSTL | TXSTL );
                    break;
                case 3:  
                	if ( DEVICE_DESCRIPTOR[16] )
                		Ep0.Buf = (void *)SERIALNUMBER_DESCRIPTOR;
                    else
                    	USB[EPCON] |= ( RXSTL | TXSTL );
                    break;
                default: USB[EPCON] |= ( RXSTL | TXSTL );
                	break;
            }
            WLen.B[1] = Ep0.Buf[0];
            break;
        case HIDDESCRIPTOR:           
        	Ep0.Buf = (void *)KB_HID_DESCRIPTOR;
            WLen.B[1] = Ep0.Buf[0];
            break;
      	case HIDREPORT:               
      		Ep0.Buf = (void *)KB_HID_REPORT;
      	    WLen.B[1] = KB_HID_DESCRIPTOR[7];
      	    WLen.B[0] = KB_HID_DESCRIPTOR[8];
      	    break;
      	default:                      
      		USB[EPCON] |= ( RXSTL | TXSTL );
            break;
      }
    
    if (Ep0.All > WLen.W)
        Ep0.All = WLen.W;
}


void USB_Set_Configuration( void )
  { BYTE i;
    
    
    Ep0.Tmp = Ep0.RxTx[2];
    if ( Ep0.Tmp )
      { for ( i=1 ; i<6 ; i++ )
           { USB[EPINDEX] = i;
             USB[EPCON] = ( TXEPEN | RXEPEN );   // Enable Receive Input/Transmit Output
             USB[RXCON] = RXCLR;                 // Clear Rx FIFO
             USB[TXCON] = TXCLR;                 // Clear Tx FIFO
             USB[RXSTAT] = RXSOVW;               // Enable RXSEQ/TXSEQ bit can be Updata , and
             USB[TXSTAT] = TXSOVW;               // set Rx/Tx toggle buffer into DATA0
           }
        Ep0.EmuOk = SET;                         // Emulation Flow pass
      }
    else                                         // Set EP1,2,3,4 into Address state
      { for ( i=1 ; i<6 ; i++ )
           { USB[EPINDEX] = i;
             USB[EPCON] = 0x00;
           }
      }
    USB[EPINDEX] = EP0;
  }


void USB_Set_Interface( void )
  { switch( Ep0.RxTx[4] )
      { case 0:  if ( Ep0.RxTx[2] > 0 )          // For Interface1 ( HID )
                   USB[EPCON] |= ( RXSTL | TXSTL );
                 else
                   USB[TXCNT] = 0;
                 break;
        default: USB[EPCON] |= ( RXSTL | TXSTL );
                 break;
      }
  }


void USB_Get_Interface( void )
  { Ep0.All = 1;
    switch( Ep0.RxTx[4] )
      { case 0:  Ep0.RxTx[0] = 0;                // For Interface1 ( HID )
                 break;
        default: USB[EPCON] |= ( RXSTL | TXSTL );
                 break;
      }
  }


void USB_CtrlRd( void )                          // Host In , USB Out ( Only for EP0 )
  { BYTE BLen;
    
    
    if ( Ep0.Stage == DATASTAGE )                // In DATASTAGE we should move Data to TXFIFO
      { if ( Ep0.All > Ep0.Unit )
          BLen = Ep0.Unit;
        else
          BLen = Ep0.All;
      	USB_Wr_FIFO( Ep0.Buf , BLen );
      	USB[TXCNT] = BLen;                       // Set this byte will Trigger USB to Transmit Data to the Host
        Ep0.All -= BLen;                         // Calculated the Remain Data size
        Ep0.Buf += BLen;                         // Move Buffer Address in Right position
      }
    else
      { USB[EPCON] |= ( RXSTL | TXSTL );         // In STATUSSTAGE we should STAL Rx/Tx
        if ( Ep0.Stage == SETADDRESS )           // Different from other STATUSSTAGE(importent)
          USB[UADDR] = Ep0.Tmp;                  // Set Address
        if ( Ep0.Stage == DFU_RESET )
          { Reboot_Mcu( REBOOT_TO_ISP );
          }
      }
  }


void USB_Stardard_Request( void )
  { switch( Ep0.RxTx[1] )                        // Request Code
      { case GET_STATUS:        Ep0.Stage = DATASTAGE;
                                USB_Get_Status();
                                USB_CtrlRd();
                                break;
        case CLEAR_FRATURE:	Ep0.Stage = STATUSSTAGE;  
                                USB_Clear_Feature();
                                USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
                                break;
        case SET_FEATURE:       Ep0.Stage = STATUSSTAGE;
                                USB_Set_Feature();
                                USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
                                break;
        case SET_ADDRESS:       Ep0.Stage = SETADDRESS;// Different from other STATUSSTAGE
                                Ep0.Tmp = Ep0.RxTx[2];
                                USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
                                break;
        case GET_DESCRIPTOR:    Ep0.Stage = DATASTAGE;
                                USB_Get_Descriptor();
                                USB_CtrlRd();
                                break;
//        case SET_DESCRIPTOR:    break;
        case GET_CONFIGURATION: Ep0.Stage = DATASTAGE;
                                Ep0.RxTx[0] = Ep0.Tmp;// This value get from SET_CONFIGURATION transaction
                                Ep0.All = 1;     // Only 1 byte transfer to the host
                                USB_CtrlRd();
                                break;
        case SET_CONFIGURATION: Ep0.Stage = STATUSSTAGE;
                                USB_Set_Configuration(); // Will store configuration value to Ep0.Tmp
                                USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
                                break;
        case SET_INTERFACE:     Ep0.Stage = STATUSSTAGE;
                                USB_Set_Interface();
                                break;
        case GET_INTERFACE:     Ep0.Stage = DATASTAGE;
                                USB_Get_Interface();
                                USB_CtrlRd();
                                break;
        case SYNCH_FRAME:       Ep0.Stage = STATUSSTAGE;
                                USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
                                Ep0.All = 0;
                                break;
        default:                USB[EPCON] |= ( RXSTL | TXSTL );
                                break;           // Set Rx/Tx STAL 
      }
  }


void USB_Class_Request( void )
  { switch( Ep0.RxTx[1] )                        // Request Code
      { case GET_IDLE:     Ep0.Stage = DATASTAGE;
                           Ep0.RxTx[0] = IdleRate;
                           Ep0.All = 1;          // Only 1 byte transfer to the host
                           USB_CtrlRd();
                           break;
        case GET_PROTOCOL: Ep0.Stage = DATASTAGE;
                           Ep0.RxTx[0] = Protocol;
                           Ep0.All = 1;          // Only 1 byte transfer to the host
                           USB_CtrlRd();
                           break;
        case GET_REPORT:   Ep0.Stage = DATASTAGE;
                           Ep0.RxTx[0] = LED_STATUS;
                           Ep0.All = 1;          // Only 1 byte transfer to the host
                           USB_CtrlRd();
                           break;
        case SET_IDLE:     Ep0.Stage = STATUSSTAGE;
                           IdleRate = Ep0.RxTx[3];
                           USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
                           break;
        case SET_PROTOCOL: Ep0.Stage = STATUSSTAGE;
                           Protocol = Ep0.RxTx[2];
                           USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
                           break;
        case SET_REPORT:   Ep0.Stage = DFU_STAGE;
                           Ep0.All = Ep0.RxTx[7];
                           Ep0.All <<= 8;
                           Ep0.All += Ep0.RxTx[6];
                           break;
        default:           USB[EPCON] |= ( RXSTL | TXSTL );
                           break;                // Set Rx/Tx STAL 
      }
  }


void USB_CtrlWr( void )                          // Host Out , USB In ( Only for EPO )
  { Ep0.Buf = Ep0.RxTx;                          // Move Buffer address to RxTx[8] array , Use for USB_CtrlRd();
    USB_Ep0_FIFO();                              // Move Rx Data to RxTxBuf buffer
    if ( Ep0.Stage == SETUPSTAGE )               // if Setup Transection will set Ep0.All = 8
      {	Ep0.All = 0;
        switch( Ep0.RxTx[0] & 0x60 )             // Request Type
          { case STANDARD_REQUEST: USB_Stardard_Request();
                                   break;
            case CLASS_REQUEST:    USB_Class_Request();
                                   break;
            default:               USB[EPCON] |= ( RXSTL | TXSTL );
                                   break;       // Set Rx/Tx STAL 
          }
      }    
  }


void USB_Set_TxStatus( BYTE Flag )
  { BYTE Status;
    
    
    Status = USB[TXCON];
    Status &= 0x0F;                              // Reserve Low nibble
    Status |= Flag;
    USB[TXCON] = Status;                         // Clear Tx FIFO
  }



void USB_Int( void )
  { BYTE Status;
  
    
    Status = USB[UPCON];                         // Status in Power Control Register
    
    if ( Status & 0x0F )                         // Into Power Control mode
      { if ( Status & USUS )                     // Suspend mode
          { Status &= 0xF0;
            USB[UPCON] = ( Status | USUS );      // Write "1" to Clear this Flag
            
            Status = USB[UPCON];                 // Status in Power Control Register
            if (( Status & 0x0F ) == 0x00 )      // Into Power Control mode
              { KB_LED_Off();                    // Set all LED Off
              
              	if ( Ep0.RWEN == SET )
              	  { P1 = 0x00;                   // Set scan out line to low
                    P2 = 0x00;                   // mean for wakeup function
                    P3 &= 0xE7;                  // P3.3 / P3.4 ( scan out line )
                    
                    KBMASK = 0xFF;               // Will Enable KP Interrupt
                  }
              
              	PCON |= 0x02;                    // Set CPU(8051) into PowerDown mode
              	
              	Delay_Xms( 1 );
      	        
      	        if ( Ep0.RWEN == SET )
      	          { if ( KBMASK == 0x00 )        // Clear by KP ISR in " MCU.C "
      	              USB[UPCON] |= URWU;        // Set USB into Wake-up mode
      	            else
      	              KBMASK = 0x00;             // Will Disable KP Interrupt
      	            P1 = 0xFF;
                    P2 = 0xFF;
                    P3 |= 0x18;
      	          }
      	        
      	        if ( Ep0.EmuOk == SET )          // Set USB LED ON after " SET_CONFIGURATION "
      	          KB_LED_Status();               // Restore LED status
              }
          }    
      	else
      	  { if ( Status & URST )                 // Reset mode
              {	Status &= 0xF0;
                USB[UPCON] = ( Status | URST );  // Write "1" to Clear this Flag
                initKeyboard();
                Initial_USB();
              }
            else if ( Status & URSM )            // Resume mode  
              { Status &= 0xF0;
                USB[UPCON] = ( Status | URSM );  // Write "1" to Clear this Flag
              }
          }
      }
    else  
      { Status = USB[UIFLG];
        if ( Status & UTXD1 )                    // EP1 Transmit
          { USB[UIFLG] = UTXD1;                  // Write "1" to Clear this Flag
            USB[EPINDEX] = EP1;
            USB_Set_TxStatus( TXFFRC );
            if ( TxBusy == SET )
              TxBusy = CLR;
          }
        else if ( Status & URXD0 )               // EP0 Receive
          { USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
            USB[EPINDEX] = EP0;
            USB_CtrlWr();                        // USB Standard Device Request(maybe)
          }
        else if ( Status & UTXD0 )               // EP0 Transmit
          { USB[UIFLG] = UTXD0;                  // Write "1" to Clear this Flag
            USB[EPINDEX] = EP0;
            USB_CtrlRd();
          }
      }	  
  }