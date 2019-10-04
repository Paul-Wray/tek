#include <string.h>                              // for memset();
#include "global.h"
#include "REG_MG84FL54.H"
#include "usb.h"
#include "keyboard.h"
#include "key_codes.h"

#define MAX_ROLLOVER 6
#define DOWN_COUNT 20
#define DEBOUNCE_COUNT DOWN_COUNT/2

//-----layers.c-------
extern CBYTE topLayer[];
extern CBYTE fnLayer[];
extern CBYTE numLayer[];

//-----USB.C-----//
extern EP0INFO Ep0;
extern volatile BYTE TxBusy;  // Flag modified by USB ISR
extern BYTE Wdt;


void sendKeyReport(BYTE *buf);


BYTE __at (0x20) LED_STATUS;
__bit __at (0x20) NumLock;
__bit __at (0x21) Caps;
__bit __at (0x22) ScrollLock;


#define UP 2
#define DOWN 1
#define FREE 0

typedef struct {
	BYTE col;
	BYTE row;
	BYTE state;
	BYTE count;
} KEY;


IBYTE allKeys[MAX_COLUMN];
KEY activeKeys[MAX_ROLLOVER];
char downCount=0;		// number of keys DOWN
TOHOST ToHost;

void clr(BYTE *buf, BYTE len) {

	BYTE *cp;
	for(cp = buf; cp < buf+len; cp++) {
		*cp = 0;	
	}
}





void prtHex(BYTE n) {
	
	CBYTE hexTab[] = {_0, _1, _2, _3, _4, _5, _6, _7, _8, _9, _A, _B, _C, _D, _E, _F};
	BYTE hi = n >> 4;
	BYTE lo = n & 0xf;
	BYTE buf[8];
	clr(buf, 8);
	
	buf[2] = hexTab[hi];
	buf[3] = hexTab[lo];
	sendKeyReport(buf);
	sendKeyReport(buf);
}

void initKeyboard( void ) { 
	KBPATN = 0xFF;
    KBCON = 0x00;
    KBMASK = 0x00;                               // Will Disable KP Interrupt
    
    LED_STATUS = 0x00;                           // Default LED off
    ScrollLock = 0;
    Caps = 0;
    NumLock = 0;
    TxBusy = CLR;                           // SET when pass key code to host

    downCount = 0;

	KEY *kp;
	for(kp = activeKeys; kp < activeKeys+MAX_ROLLOVER; kp++) {
		kp->state = FREE;
	}
	clr((BYTE *)ToHost, 8);
	NumLock_LED = 1;
}


void KB_LED_Off( void ) { 
	NumLock_LED = SET;
    Caps_LED = SET;
    ScrollLock_LED = SET;
}


void KB_LED_Status( void ) { 
	NumLock_LED = 0;
	NumLock_LED = ~NumLock;
    Caps_LED = ~Caps;
    ScrollLock_LED = ~ScrollLock;
}

void delayMicroSec(BYTE microSec) { 
	for (;microSec != 0; microSec--) { 
       __asm
       nop
       __endasm;
    }
}


BYTE read_column( BYTE Scan_index ) { 
	
	BYTE scanValue;
  	__code BYTE KeyScan_Table[19][3] = {
        {0xFE,0xFF,0xFF},{0xFD,0xFF,0xFF},{0xFB,0xFF,0xFF},{0xF7,0xFF,0xFF},
        {0xEF,0xFF,0xFF},{0xDF,0xFF,0xFF},{0xBF,0xFF,0xFF},{0x7F,0xFF,0xFF},
        {0xFF,0xFE,0xFF},{0xFF,0xFD,0xFF},{0xFF,0xFB,0xFF},{0xFF,0xF7,0xFF},
        {0xFF,0xEF,0xFF},{0xFF,0xDF,0xFF},{0xFF,0xBF,0xFF},{0xFF,0x7F,0xFF},
        {0xFF,0xFF,0xF7},{0xFF,0xFF,0xEF},{0x00,0x00,0xE7}
    };

    P1 = KeyScan_Table[Scan_index][0];
    P2 = KeyScan_Table[Scan_index][1];
    P3 = P3&KeyScan_Table[Scan_index][2];
    
    delayMicroSec( 10 );
    
    scanValue = P0;                            // 1101,1111 -> 0 for Key " PRESS "
    scanValue = ~scanValue;                  // 0010,0000

    P1 = 0xFF;
    P2 = 0xFF;
    P3 = P3|0x18;
    
    return scanValue;
}


void msg(BYTE m) {
	
	BYTE buf[8];
	clr(buf, 8);
	if(m >= 'a' && m <=	'z') {
		buf[2] = m-'a'+_A;	
	} else if(m >= 'A' && m <= 'Z') {
		buf[2] = m-'A'+_A;
		buf[0] = KEY_MOD_LSHIFT;
	} else if(m >= '1' && m <= '9') {
		buf[2] = m - '1' + _1;
	} else if(m == ' ') {
		buf[2] = _SPACE;	
	}

	sendKeyReport(buf);
	sendKeyReport(buf);
	
}

void sendKeyReport(BYTE *buf) { 
	
	BYTE i;
	if(Ep0.EmuOk == CLR)
        return;
     
	
	//ToHost.Normal.reportId = 1;

	EA = 0;
	USB[EPINDEX] = EP1;
	i = 0;
	while(i < 8) { 
		USB[TXDAT] = buf[i];
		i++;
	}
	TxBusy = SET;
	USB[TXCNT] = i;
	USB[EPINDEX] = EP0;
	EA = 1; 	
	while(TxBusy)
		{}

	clr((BYTE *)buf, 8);
}

void sendKeys()  { 
	BYTE offset;
	BYTE index;
	BYTE hidCode;
	BYTE mod;

	static BYTE prevDownCount = 0;

	static BYTE alternateKeyPending = 0;
	
  	__code BYTE key_index[]= {
  	  	  0,  0, 40,  0,  0, 18, 19,  0,
  	  	  0,  0,  0,  0,  0,  0,  0,  0,
  	  	 49, 21, 54, 25, 20, 35, 62,  0,
  	  	 88,  0, 15, 82,  0, 61, 73,  0,
  	  	  0, 86,  0, 80, 84,  0,  0,  0,
  	  	 75,  0,  0, 17,  0,  0,  0, 87,
  	  	  0,  0,  0,  0,  0, 48, 60,  0,
  	  	  0,  0,  0,  0, 16, 74,  0,  0,
  	  	  0,  0,  0,  0,  0,  0,  0,  0,
  	  	 36,  2, 78,  3, 77,  1, 63, 50,
  	  	  0,  4, 14,  5,  0,  0,  0,  0,
  	  	 51, 22, 37, 28, 43, 57, 70, 64,
  	  	 53, 23, 39, 24, 38, 52, 66, 65,
  	  	 56, 26, 42, 27, 41, 55, 69, 68,
  	  	 33,  6, 81,  7, 32, 47, 67, 83,
  	  	 46,  8, 31,  9, 29, 44, 71, 58,
  	  	 72, 10, 85, 11, 30, 59, 45, 34,
  	  	  0, 12, 79, 13, 76,  0,  0,  0
     };
      
	CBYTE combineKeyAlternates[5] = {
		0, _SPACE, _ENTER, _TAB, _BAKSPC	
	};
	
	//CBYTE *layers[] = {topLayer, numLayer, fnLayer};
    CBYTE *layer = topLayer;
	KEY *kp;
	BYTE HostIndex = 0;
	
	// a combination key (shift, alt, control, meta, or layer key) has been
	// pressed and released alone, and there is an associated alternate key
	if(alternateKeyPending && (downCount == 0)) {
		ToHost.Normal.Code[HostIndex++] = alternateKeyPending;
		alternateKeyPending = 0;
// TODO check that calling twice is OK re timing
		sendKeyReport((BYTE *)&ToHost);

		sendKeyReport((BYTE *)&ToHost);
		return;
	}
	
	for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
		if(kp->state == DOWN) {
			index = (kp->col << 3) + kp->row;
			offset = key_index[index];
			if(offset == 0) {
				return;	
			}

			offset = (--offset) << 1;
			hidCode = layer[offset];
			mod = layer[offset+1];
			if(mod & COMBINATION_KEY) {
				if(hidCode > 0xf) {
					ToHost.Normal.Modifier = 1 << (hidCode - 0xe0);
				} else if(hidCode == 0x1) {
					layer = fnLayer;
				} else if(hidCode == 0x2) {
					layer = numLayer;
				}
				if(downCount == 1 && prevDownCount == 0) {
					alternateKeyPending = combineKeyAlternates[mod & 0xf];
					return;
				} else {
					alternateKeyPending = 0;	
				}
			} else {
				
				if(mod & 0x0f) {
					ToHost.Normal.Modifier = mod & 0x0f; 
				}
				ToHost.Normal.Code[HostIndex++] = hidCode;

			}
		}
	}

	prevDownCount = downCount;
} 


/* Maintain a list of active keys (ie keys observed in the 1 state). To debounce,
	maintain a counter for each key, beginning at DEBOUNCE_COUNT. Increment when
	state is 1, decrement when 0. If count reaches DOWN_COUNT, key is deemed to 
	be DOWN. When count reaches 0, key is removed from active keys. Note that 
	1->0 debouncing transition takes longer than 1->0, because DEBOUNCE_COUNT
	is set to a fraction (eg half) of DOWN_COUNT. This allows us to accept a key
	as DOWN as soon as we confirm noise is not the cause, while allowing a longer 
	time for key debouncing for 1->0 
*/
BYTE updateActiveKeys() {

	BYTE mask;
	KEY *kp;
	BYTE keyState;
	BYTE keyChanges = 0;
	
	for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {

		if (kp->state == FREE) {
			continue;	
		}
		
		keyState = allKeys[kp->col];
		mask = 1 << kp->row;
		if(mask & keyState) {
			kp->count++;
			if(kp->count >= DOWN_COUNT) {
				kp->count = DOWN_COUNT;
				if(kp->state != DOWN) {
					kp->state = DOWN;
					keyChanges = 1;
					downCount++;
				}
			}
		} else {
			kp->count--;
			if(kp->count <= 1) {
				if(kp->state == DOWN) {
					downCount--;
					keyChanges = 1;
				}
				kp->state = FREE;
			} 
		}
		
		// clear known keys to leave only new keys
		allKeys[kp->col] &= ~mask;
	}
	return keyChanges;
}

/*--------------------------------------------------------------------------
	Find any changes not already covered by existing pending keys
	Note that change bits for existing pending keys are cleared in update_pending
	so here we see only newly active keys.
------------------------------------------------------------------------------*/
void addActiveKey(BYTE col, BYTE keyState) {
	BYTE row;
	BYTE mask;
	KEY *kp;
	
	// In theory could be >1 new key change per col 
	// Just add 1 per scan works too.

	if(keyState == 0) {
		return;	
	}
	mask = 1;
	for(row=0; row < 8; row++) {
		if(mask & keyState) {
			break;
		}
		mask <<= 1;
	}
	

	// set up the new pending key
	for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
		if(kp->state == FREE) {
			kp->col = col;
			kp->row = row;
			kp->count = DEBOUNCE_COUNT;
			kp->state = UP;
			break;
		}
	}
}


/* Main scan routine, called repeatedly from main. Ideally this will be called
	from a 1mS timer. Takes ~0.6 mS to complete.
*/

void scan(void) {
	BYTE col;	
	WDTCR = Wdt;
	if (Ep0.EmuOk == CLR)
      return;
  	

  	// read all raw key values
	for(col = 0; col < MAX_COLUMN; col++) {
		allKeys[col] = read_column(col);
	}
	
	// Debounce active keys and report changes to keys down. 
	if(updateActiveKeys()) {
		sendKeys();
		sendKeyReport((BYTE *)&ToHost);
	}
	// Add any new keys in 1 state to active array
	for(col = 0; col < MAX_COLUMN; col++) {
		if(allKeys[col]) {
			addActiveKey(col, allKeys[col]);
		}
	}

}

