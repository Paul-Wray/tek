


#define _ERROR_ROLLOVER 0x01
#define _ERROR_POST 0x02
#define _ERROR 0x03
#define _A 0x04
#define _B 0x05
#define _C 0x06
#define _D 0x07
#define _E 0x08
#define _F 0x09
#define _G 0x0a
#define _H 0x0b
#define _I 0x0c
#define _J 0x0d
#define _K 0x0e
#define _L 0x0f
#define _M 0x10
#define _N 0x11
#define _O 0x12
#define _P 0x13
#define _Q 0x14
#define _R 0x15
#define _S 0x16
#define _T 0x17
#define _U 0x18
#define _V 0x19
#define _W 0x1a
#define _X 0x1b
#define _Y 0x1c
#define _Z 0x1d
#define _1 0x1e
#define _2 0x1f
#define _3 0x20
#define _4 0x21
#define _5 0x22
#define _6 0x23
#define _7 0x24
#define _8 0x25
#define _9 0x26
#define _0 0x27
#define _ENTER 0x28
#define _ESCAPE 0x29
#define _BAKSPC 0x2a
#define _TAB 0x2b
#define _SPACE 0x2c
#define _HYPHEN 0x2d
#define _EQUALS 0x2e
#define _LTBRKT 0x2f
#define _RTBRKT 0x30
#define _BAKSLS 0x31
#define _EUROPE1 0x32
#define _SEMICL 0x33
#define _APOST 0x34
#define _GRAVE 0x35
#define _COMMA 0x36
#define _FULSTP 0x37
#define _SLASH 0x38
#define _CAPLCK 0x39


#define _F1 0x3a
#define _F2 0x3b
#define _F3 0x3c
#define _F4 0x3d
#define _F5 0x3e
#define _F6 0x3f
#define _F7 0x40
#define _F8 0x41
#define _F9 0x42
#define _F10 0x43
#define _F11 0x44
#define _F12 0x45
#define _PRTSCR 0x46
#define _SCRLCK 0x47
#define _PAUSE 0x48
#define _INSERT 0x49
#define _HOME 0x4a
#define _PAGEUP 0x4b
#define _DELETE 0x4c
#define _END 0x4d
#define _PAGEDN 0x4e
#define _RTARRW 0x4f
#define _LTARRW 0x50
#define _DNARRW 0x51
#define _UPARRW 0x52
#define _NUM 0x53
#define _KDIV 0x54
#define _KMUL 0x55
#define _KSUB 0x56
#define _KADD 0x57
#define _KENTER 0x58
#define _K1 0x59
#define _K2 0x5a
#define _K3 0x5b
#define _K4 0x5c
#define _K5 0x5d
#define _K6 0x5e
#define _K7 0x5f
#define _K8 0x60
#define _K9 0x61
#define _K0 0x62
#define _KPOINT 0x63
#define _NONUS 0x64
#define _APPS 0x65
#define _POWER 0x66
#define _KEQUALS 0x67
#define _F13 0x68
#define _F14 0x69
#define _F15 0x6a
#define _F16 0x6b
#define _F17 0x6c
#define _F18 0x6d
#define _F19 0x6e
#define _F20 0x6f
#define _F21 0x70
#define _F22 0x71
#define _F23 0x72
#define _F24 0x73
#define _EXEC 0x74
#define _HELP 0x75
#define _MENU 0x76
#define _SELECT 0x77
#define _STOP 0x78
#define _AGAIN 0x79
#define _UNDO 0x7a
#define _CUT 0x7b
#define _COPY 0x7c
#define _PASTE 0x7d
#define _FIND 0x7e
#define _MUTE 0x7f
#define _VOL_INC 0x80
#define _VOL_DEC 0x81

#define _CAPS_LOCK1 0x82
#define _NUMLCK 0x83
#define _SCROLL_LOCK1 0x84


#define _KCOMMA 0x85
#define _KEQUALS1 0x86


#define _INTL1 0x87
#define _INTL2 0x88
#define _INTL3 0x89
#define _INTL4 0x8a
#define _INTL5 0x8b
#define _INTL6 0x8c
#define _INTL7 0x8d
#define _INTL8 0x8e
#define _INTL9 0x8f
#define _LANG1 0x90
#define _LANG2 0x91
#define _LANG3 0x92
#define _LANG4 0x93
#define _HIRA 0x93
#define _LANG5 0x94
#define _LANG6 0x95
#define _LANG7 0x96
#define _LANG8 0x97
#define _LANG9 0x98
#define _ERASE 0x99
#define _ATTN 0x9a
#define _CNCL 0x9b
#define _CLEAR 0x9c
#define _PRIOR 0x9d
#define _RTN 0x9e
#define _SEP 0x9f
#define _OUT 0xa0
#define _OPER 0xa1
#define _CLRAGN 0xa2
#define _PROPS 0xa3
#define _EXSEL 0xa4


#define _K00 0xb0
#define _K000 0xb1
#define _000SEP 0xb2
#define _DECSEP 0xb3

#define _WINBRK 0xad
#define _CTLBRK 0xad


/*
#define _LCTRL 0xe0
#define _LSHFT 0xe1
#define _LALT 0xe2
#define _LCMND 0xe3 
#define _RCTRL 0xe4
#define _RSHFT 0xe5
#define _RALT 0xe6
#define _RCMND 0xe7
*/

// Pseudo  values for media 
// The index into the custom media hid table
// is calculated by subtracting 0E8h
#define MEDIABASE 0xC0

#define _MEDIA1 MEDIABASE + 0
#define _MEDIA2 MEDIABASE + 1
#define _MEDIA3 MEDIABASE + 2
#define _MEDIA4 MEDIABASE + 3
#define _MEDIA5 MEDIABASE + 4
#define _MEDIA6 MEDIABASE + 5
#define _MEDIA7 MEDIABASE + 6
#define _MEDIA8 MEDIABASE + 7
#define _MEDIA9 MEDIABASE + 8
#define _MEDIA10 MEDIABASE + 9
#define _MEDIA11 MEDIABASE + 10
#define _MEDIA12 MEDIABASE + 11
#define _MEDIA13 MEDIABASE + 12
#define _MEDIA14 MEDIABASE + 13
#define _MEDIA15 MEDIABASE + 14
#define _MEDIA16 MEDIABASE + 15
#define _MEDIA17 MEDIABASE + 16
#define _MEDIA18 MEDIABASE + 17
#define _MEDIA19 MEDIABASE + 18
#define _MEDIA20 MEDIABASE + 19
#define _MEDIA21 MEDIABASE + 20
#define _MEDIA22 MEDIABASE + 21
#define _MEDIA23 MEDIABASE + 22
#define _MEDIA_LAST MEDIA23
