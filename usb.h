#define    EP0_MAX          0x08
#define    USB         ((XBYTE *)0xFF00)
#define    DCON        0xC0	
#define    PTRWKE      0x02      // Pass Through Remote Wakeup Enable
#define    EP3DIR      0x08      // 1 for IN , 0 for OUT
#define    TSTMD       0x80      // Test mode enable
#define    PLLCON      0xC1              //
#define    UPCON       0xC9
#define    USUS        0x01      // Function Suspend 
#define    URSM        0x02      // Function Resume 
#define    URST        0x04      // USB Reset
#define    URWU        0x20      // Function Remove Wake-up Enable
#define    CONEN       0x80      // USB Connect Enable.
#define    ACKCTL      0xCC
#define    EN_DLL      0x01
#define    UCK_SEL     0x02
#define    XI2ACK      0x08
#define    ACKEN       0x10
#define    USBCKD      0x20
#define    EPLLEN      0x80
#define    UADDR       0xD8
#define    IEN         0xD9
#define    EF          0x02	 // Enable Function	
#define    EFSR        0x04      // Enable Function Suspend/Resume
#define    UIE         0xDA
#define    UTXIE0      0x01
#define    URXIE0      0x02
#define    UTXIE1      0x04
#define    UTXIE2      0x10
#define    ASOFIE      0x40
#define    SOFIE       0x80
#define    UIFLG       0xDB
#define    UTXD0       0x01
#define    URXD0       0x02
#define    UTXD1       0x04
#define    UTXD2       0x10
#define    ASOFIF      0x40
#define    SOFIF       0x80
#define    UIE1        0xDC
#define    UTXIE3      0x01
#define    URXIE3      0x02
#define    URXIE4      0x08
#define    UTXIE5      0x10
#define    FSIE        0x80
#define    UIFLG1      0xDD
#define    UTXD3       0x01
#define    URXD3       0x02
#define    URXD4       0x08
#define    UTXD5       0x10
#define    FSIF        0x80
#define    EPCON       0xE1
#define    TXEPEN      0x01      
#define    TXISO       0x02
#define    RXEPEN      0x04  
#define    RXISO       0x08    
#define    TXDBM       0x01      
#define    RXDBM       0x02
#define    TXSTL       0x40      
#define    RXSTL       0x80 
#define    RXSTAT      0xE2
#define    ISOSOVW     0x04
#define    RXSOVW      0x08
#define    EDOVW       0x10
#define    STOVW       0x20
#define    RXSETUP     0x40
#define    RXSEQ       0x80
#define    RXDAT       0xE3
#define    RXCON       0xE4
#define    RXFFRC      0x10      // RX FIFO Read Complete
#define    RXCLR       0x80	 // Receive FIFO Clear
#define    RXCNT       0xE6
#define    EPINDEX     0xF1
#define    EP0         0x00	 // EPO 
#define    EP1         0x01      // EP1
#define    EP2         0x02      // EP2
#define    EP3         0x03      // EP3
#define    EP4         0x04      // EP4 
#define    EP5         0x05      // EP5
#define    TXSTAT      0xF2
#define    TXSOVW      0x08
#define    TXSEQ       0x80
#define    TXDAT       0xF3
#define    TXCON       0xF4
#define    TXFFRC      0x10      // TX FIFO Read Complete
#define    TXCLR       0x80	 // Transmit FIFO Clear	
#define    TXCNT       0xF6
#define    SETUPSTAGE          0xF0
#define    DATASTAGE           0x5A
#define    STATUSSTAGE         0xA5
#define    SETADDRESS          0x55
#define    DFU_STAGE           0x33
#define    DFU_RESET           0x44


typedef struct
   { BYTE RWEN;                                  // Remote Wake Enable Flag
     BYTE EmuOk;                                 // EmuOk will set after "SET_CONFIGURATION"
     BYTE Stage;                                 // Index the next transaction are DATASTAGE or STATUSSTAGE
     BYTE RxTx[EP0_MAX];                         // For Rx/Tx FIFO
     BYTE *Buf;                                  // USB Tx Buffer Address , Maybe addressing to ROM address
     BYTE EpIndex;
     BYTE Unit;                                  // Transmit Unit size in byte
     WORD All;                                   // Transmit All size in byte
     BYTE Tmp;					 // Store some data for Next transaction( SET_ADDRESS/SET_CONFIGURATION/..)                     // 
   } EP0INFO;                                    // Only for End Point 0
   

//-----Standard Request Code-----//
#define    GET_STATUS          0	 
#define    CLEAR_FRATURE       1
#define    SET_FEATURE         3
#define	   SET_ADDRESS         5
#define    GET_DESCRIPTOR      6
#define    SET_DESCRIPTOR      7
#define    GET_CONFIGURATION   8
#define    SET_CONFIGURATION   9
#define    GET_INTERFACE       10
#define    SET_INTERFACE       11
#define    SYNCH_FRAME         12

// HID Request Codes
#define    GET_REPORT          0x01
#define    GET_IDLE            0x02
#define    GET_PROTOCOL        0x03
#define    SET_REPORT          0x09
#define    SET_IDLE            0x0A
#define    SET_PROTOCOL        0x0B


#define    STANDARD_REQUEST    0x00
#define    CLASS_REQUEST       0x20
#define    VENDOR_REQUEST      0x40

//-----Request Type in Standard Request Code-----//
#define    DEVICEREQUEST        0x00
#define    INTERFACEREQUEST     0x01
#define    ENDPOINTREQUEST      0x02

//-----Feature Selectors in Standard Request Code-----//
#define    DEVICE_REMOTE_WAKEUP 0x01
#define    ENDPOINT_HALT        0x00

//-----Descriptor Type in Standard Request Code-----//
#define    DEVICEDESCRIPTOR        0x01
#define    CONFIGURATIONDESCRIPTOR 0x02
#define    STRINGDESCRIPTOR        0x03
#define    INTERFACEDESCRIPTOR     0x04
#define    ENDPOINTDESCRIPTOR      0x05
#define    HIDDESCRIPTOR           0x21
#define    HIDREPORT               0x22