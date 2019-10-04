#include "global.h"
#include "mcu.h"
#include "usb.h"


// Device firmware upgrade in dfu.rel
extern void Initial_DFU(void);

//-----usb.c-----//
extern EP0INFO Ep0;
extern void USB_Int( void );
extern void Initial_USB( void );

//-----keyboard.c-----//
extern void initKeyboard( void );
extern void scan( void );


BYTE T0Cnt;                                      // Timer0 Count
BYTE Wdt;

void idle() {
	PCON |= 0x01;	
}

void Delay_Xms( BYTE X ) { 
  	TR0 = CLR;                        // Disable Timer0
    T0Cnt = X;                        // X*1ms = Xms
    TL0 = T0_1MSL;
    TH0 = T0_1MSH;
    TR0 = SET;                        // Enable Timer0
    while( T0Cnt ) {
    	idle();
    }
}


void Reboot_Mcu( BYTE Cmd ) { 
	ISPCR = Cmd;
}

// Do not remove. SDCC needs to see ISR defs in main.
void INT_USB(void) __interrupt 15 __using 3          // 
  { WDTCR = Wdt;                                 // Reset Watch Dog Timer
    USB_Int();
  }


void INT_KB(void) __interrupt 13 __using 2 { 
  	WDTCR = Wdt;
  
    KBCON = 0x00;                                // Clear KP Interrupt Flag
    KBMASK = 0x00;                               // Will Disable KP Interrupt
  }

void INT_TIMER0(void) __interrupt 1 __using 1  { 
	WDTCR = Wdt;                                 // Reset Watch Dog Timer
    TR0 = CLR;                                   // Disable Timer0

    if(T0Cnt) { 
    	T0Cnt--;
    }

    TL0 = T0_1MSL;
    TH0 = T0_1MSH;
    TR0 = SET;                               // Enable Timer0

}


void Initial_Mcu( void ) { IE  = 0x00;	                                 // disable all interrupt
    
    AUXIE = ( EUSB | EKB );                      // Enable USB and KB int
    AUXIP = 0x20;                                // KB high priority
    
    PSW = 0x00;	                                 // bank 0
    IP  = 0x12;	                                 // hi priority: UART / Timer0
    
    TMOD = 0x21;                                 // Set Timer0/1 in Mode1/2 ( 16/8 bit )
    TR0 = 0;                                     // Desable Timer0
    ET0 = 1;                                     // Enable Timer0 interrupt
    
    Wdt = WDTCR;
    Wdt |= 0x37;                                 // Setting and Reset WDT
    
    CKCON = (BYTE)(( 12 - 1 ) << 3);             // CLKin -> Default , OSCDN = 12Mhz - 1
    
    EA  = 1;                                     // enable all interrupt
    
    CKCON2 |= EN_USB;                            // Enalbe EN_USB
    Delay_Xms( 1 );
    
    while(1) { USB[ACKCTL] |= EN_DLL;
        if (USB[ACKCTL] & EN_DLL)
        	break;
    }
    
    Delay_Xms( 4 );                              // Wait for DPLL 48Mhz Ready
    
    while( 1 ) { 
    	USB[ACKCTL] |= UCK_SEL;
        if ( USB[ACKCTL] & UCK_SEL )
          break;
    }
    
    CKCON2 |= OSCDR0;                            // Mini clock output
    
    P1M0 = 0xFF;                                 // Set Open Drain
    P1M1 = 0xFF;
    P2M0 = 0xFF;
    P2M1 = 0xFF;
    P3M0 = 0x18;
    P3M1 = 0x18; 
    
    Delay_Xms( 250 );
}
  

void main( void ) { 
  	//Initial();
  	Initial_Mcu();
  	Initial_DFU();
    
    Initial_USB();
    initKeyboard();

    while(1) {
    	scan();
    	//idle();
    }
}
