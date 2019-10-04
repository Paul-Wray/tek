#include "hid_codes.h"

/* In addition to the standard hid codes, I want to be able to
	1) Allow the modified (shifted etc) version of a key to be on any layer,
	without having to push shift key. This allows the placement of eg brackets 
	, or cut/copy/paste control shortcuts in any layer.
	
	2) Allow modifier keys to have a dual function, so that if the key is pressed 
	with another key it is a modifier, but if pressed and released with no other
	key it emits a character. So the left shift key might emit a tab, right
	shift could emit enter etc.
		
	Key codes use two bytes:
	First byte is normally a HID code
	
	Second (upper) byte contains extra info:
	
	When SECOND byte has format: 
		1XXX AAAA - first byte is a combination key (layer key or shift, alt etc)
			in this case the FIRST byte has format XXXX MMMM - modifier bits
			or XXLL XXXX - where LL is the layer number
			
			AAAA bits when non-zero give an alternate key if the modifier key is
			pressed and released alone.
		
	When second byte is of format 0XXX MMMM, the first byte is a normal hid code
	and MMMM is the modifier.

	
	*/
// Define extended key codes for layer matrices


// Shift, control, alt, meta modifiers for normal keys

#define KEY_MOD_LCTRL  0x01
#define KEY_MOD_LSHIFT 0x02
#define KEY_MOD_LALT   0x04
#define KEY_MOD_LMETA  0x08
#define KEY_MOD_RCTRL  0x10
#define KEY_MOD_RSHIFT 0x20
#define KEY_MOD_RALT   0x40
#define KEY_MOD_RMETA  0x80


// Macros to modify normal HID codes to include shift etc
#define SHF(K) K + ((WORD)KEY_MOD_LSHIFT<<8)
#define CTL(K) K + ((WORD)KEY_MOD_LCTRL<<8)
#define ALT(K) K + ((WORD)KEY_MOD_LALT<<8)
#define CMD(K) K + ((WORD)KEY_MOD_LMETA<<8)

// Rather than use the standard HID keys for the combination keys like LSHIFT, 
// its easier to re-define them in terms of modifiers
// which can be used directly in the hid report without translation
#define COMBINATION_KEY 0x80


#define _LCTRL 	0xe0 + ((WORD)COMBINATION_KEY<<8)
#define _LSHFT 	0xe1 + ((WORD)COMBINATION_KEY<<8)
#define _LALT 	0xe2  + ((WORD)COMBINATION_KEY<<8)
#define _LCMND 	0xe3 + ((WORD)COMBINATION_KEY<<8)
#define _RCTRL 	0xe4 + ((WORD)COMBINATION_KEY<<8)
#define _RSHFT 	0xe5 + ((WORD)COMBINATION_KEY<<8)
#define _RALT 	0xe6  + ((WORD)COMBINATION_KEY<<8)
#define _RCMND 	0xe7 + ((WORD)COMBINATION_KEY<<8)


// Layer keys are also combination keys
#define _TEFUN 0x01 + ((WORD)COMBINATION_KEY<<8)
#define _TENUM 0x02 + ((WORD)COMBINATION_KEY<<8)


// Macros to specify alternate keys for combination keys
#define SPC(K) K + ((WORD)0x01<<8)
#define ENT(K) K + ((WORD)0x02<<8)
#define TAB(K) K + ((WORD)0x03<<8)
#define BKS(K) K + ((WORD)0x04<<8)


#define _EXCLAM SHF(_1)
#define _AT SHF(_2)
#define _HASH SHF(_3)
#define _DOLLAR SHF(_4)
#define _PERCNT SHF(_5)
#define _CARET SHF(_6)
#define _AMPER SHF(_7)
#define _ASTER SHF(_8)
#define _LPAREN SHF(_9)
#define _RPAREN SHF(_0)
#define _UNDER  SHF(_HYPHEN)
#define _PLUS SHF(_EQUALS)
#define _LESS SHF(_COMMA)
#define _GREATER SHF(_FULSTP)
#define _TILDE SHF(_BACKQT)
#define _QUEST SHF(_SLASH)
#define _PIPE SHF(_BKSLASH)
#define _QUOTE SHF(_APOST)
#define _LBRACE SHF(_LTBRKT)
#define _RBRACE SHF(_RTBRKT)

#include "layers.h"


