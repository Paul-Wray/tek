;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW32)
;--------------------------------------------------------
	.module keyboard
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _addActiveKey_PARM_2
	.globl _clr_PARM_2
	.globl _sendKeys_combineKeyAlternates_65536_54
	.globl _sendKeys_key_index_65536_54
	.globl _read_column_KeyScan_Table_65536_43
	.globl _prtHex_hexTab_65536_28
	.globl _scan
	.globl _addActiveKey
	.globl _updateActiveKeys
	.globl _sendKeys
	.globl _msg
	.globl _read_column
	.globl _delayMicroSec
	.globl _KB_LED_Status
	.globl _KB_LED_Off
	.globl _initKeyboard
	.globl _prtHex
	.globl _clr
	.globl _INT2
	.globl _INT3
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _I2C_SCL
	.globl _I2C_SDA
	.globl _SPI_SS
	.globl _SPI_MOSI
	.globl _SPI_MISO
	.globl _SPI_CLK
	.globl _T2
	.globl _T2EX
	.globl _P40
	.globl _P41
	.globl _P42
	.globl _P43
	.globl _P30
	.globl _P31
	.globl _P32
	.globl _P33
	.globl _P34
	.globl _P35
	.globl _P36
	.globl _P37
	.globl _P20
	.globl _P21
	.globl _P22
	.globl _P23
	.globl _P24
	.globl _P25
	.globl _P26
	.globl _P27
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _P13
	.globl _P14
	.globl _P15
	.globl _P16
	.globl _P17
	.globl _P00
	.globl _P01
	.globl _P02
	.globl _P03
	.globl _P04
	.globl _P05
	.globl _P06
	.globl _P07
	.globl _CR0
	.globl _CR1
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _ENSI
	.globl _CR2
	.globl _IT2
	.globl _IE2
	.globl _EX2
	.globl _IL2
	.globl _IT3
	.globl _IE3
	.globl _EX3
	.globl _IL3
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _FE
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PX2
	.globl _PX3
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EA
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _SCMD
	.globl _IFADRL
	.globl _IFADRH
	.globl _IFD
	.globl _ISPTME
	.globl _ISPCR
	.globl _WDTCR
	.globl _AUXR2
	.globl _AUXR
	.globl _CKCON2
	.globl _CKCON
	.globl _PCON
	.globl _SISTA
	.globl _SIDAT
	.globl _SIADR
	.globl _SICON
	.globl _SPSTAT
	.globl _SPDAT
	.globl _SPCTL
	.globl _KBMASK
	.globl _KBPATN
	.globl _KBCON
	.globl _SADEN
	.globl _SADDR
	.globl _SBUF
	.globl _SCON
	.globl _TH2
	.globl _TL2
	.globl _TH1
	.globl _TL1
	.globl _TH0
	.globl _TL0
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TMOD
	.globl _TCON
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _XICON
	.globl _AUXIP
	.globl _AUXIE
	.globl _IE
	.globl _PSW
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _ScrollLock
	.globl _Caps
	.globl _NumLock
	.globl _allKeys
	.globl _ToHost
	.globl _downCount
	.globl _activeKeys
	.globl _LED_STATUS
	.globl _sendKeyReport
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PSW	=	0x00d0
_IE	=	0x00a8
_AUXIE	=	0x00ad
_AUXIP	=	0x00ae
_XICON	=	0x00c0
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_P4	=	0x00e8
_P0M0	=	0x0093
_P0M1	=	0x0094
_P1M0	=	0x0091
_P1M1	=	0x0092
_P2M0	=	0x0095
_P2M1	=	0x0096
_P3M0	=	0x00b1
_P3M1	=	0x00b2
_P4M0	=	0x00b3
_P4M1	=	0x00b4
_TCON	=	0x0088
_TMOD	=	0x0089
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL0	=	0x008a
_TH0	=	0x008c
_TL1	=	0x008b
_TH1	=	0x008d
_TL2	=	0x00cc
_TH2	=	0x00cd
_SCON	=	0x0098
_SBUF	=	0x0099
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_KBCON	=	0x00d6
_KBPATN	=	0x00d5
_KBMASK	=	0x00d7
_SPCTL	=	0x0085
_SPDAT	=	0x0086
_SPSTAT	=	0x0084
_SICON	=	0x00f8
_SIADR	=	0x00d1
_SIDAT	=	0x00d2
_SISTA	=	0x00d3
_PCON	=	0x0087
_CKCON	=	0x00c7
_CKCON2	=	0x00bf
_AUXR	=	0x008e
_AUXR2	=	0x00a6
_WDTCR	=	0x00e1
_ISPCR	=	0x00e7
_ISPTME	=	0x00e5
_IFD	=	0x00e2
_IFADRH	=	0x00e3
_IFADRL	=	0x00e4
_SCMD	=	0x00e6
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_EA	=	0x00af
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PX3	=	0x00bf
_PX2	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_FE	=	0x009f
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_IL3	=	0x00c7
_EX3	=	0x00c6
_IE3	=	0x00c5
_IT3	=	0x00c4
_IL2	=	0x00c3
_EX2	=	0x00c2
_IE2	=	0x00c1
_IT2	=	0x00c0
_CR2	=	0x00ff
_ENSI	=	0x00fe
_STA	=	0x00fd
_STO	=	0x00fc
_SI	=	0x00fb
_AA	=	0x00fa
_CR1	=	0x00f9
_CR0	=	0x00f8
_P07	=	0x0087
_P06	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_P01	=	0x0081
_P00	=	0x0080
_P17	=	0x0097
_P16	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_P13	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_P27	=	0x00a7
_P26	=	0x00a6
_P25	=	0x00a5
_P24	=	0x00a4
_P23	=	0x00a3
_P22	=	0x00a2
_P21	=	0x00a1
_P20	=	0x00a0
_P37	=	0x00b7
_P36	=	0x00b6
_P35	=	0x00b5
_P34	=	0x00b4
_P33	=	0x00b3
_P32	=	0x00b2
_P31	=	0x00b1
_P30	=	0x00b0
_P43	=	0x00eb
_P42	=	0x00ea
_P41	=	0x00e9
_P40	=	0x00e8
_T2EX	=	0x0091
_T2	=	0x0090
_SPI_CLK	=	0x00a7
_SPI_MISO	=	0x00a6
_SPI_MOSI	=	0x00a5
_SPI_SS	=	0x00a4
_I2C_SDA	=	0x00a1
_I2C_SCL	=	0x00a0
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_INT3	=	0x00b7
_INT2	=	0x00b6
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LED_STATUS	=	0x0020
_activeKeys::
	.ds 24
_downCount::
	.ds 1
_ToHost::
	.ds 8
_prtHex_buf_65536_28:
	.ds 8
_msg_buf_65536_45:
	.ds 8
_sendKeyReport_buf_65536_50:
	.ds 3
_sendKeys_prevDownCount_65536_54:
	.ds 1
_sendKeys_alternateKeyPending_65536_54:
	.ds 1
_sendKeys_mod_65536_54:
	.ds 1
_sendKeys_layer_65536_54:
	.ds 2
_sendKeys_HostIndex_65536_54:
	.ds 1
_sendKeys_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_clr_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_updateActiveKeys_mask_65536_68:
	.ds 1
_updateActiveKeys_keyState_65536_68:
	.ds 1
_updateActiveKeys_keyChanges_65536_68:
	.ds 1
_updateActiveKeys_sloc0_1_0:
	.ds 3
_updateActiveKeys_sloc1_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_addActiveKey_PARM_2:
	.ds 1
_addActiveKey_kp_65536_79:
	.ds 3
_addActiveKey_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_allKeys::
	.ds 18
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_NumLock	=	0x0020
_Caps	=	0x0021
_ScrollLock	=	0x0022
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sendKeys'
;------------------------------------------------------------
;prevDownCount             Allocated with name '_sendKeys_prevDownCount_65536_54'
;alternateKeyPending       Allocated with name '_sendKeys_alternateKeyPending_65536_54'
;offset                    Allocated to registers r7 
;index                     Allocated to registers 
;hidCode                   Allocated to registers r6 
;mod                       Allocated with name '_sendKeys_mod_65536_54'
;layer                     Allocated with name '_sendKeys_layer_65536_54'
;kp                        Allocated to registers 
;HostIndex                 Allocated with name '_sendKeys_HostIndex_65536_54'
;sloc0                     Allocated with name '_sendKeys_sloc0_1_0'
;------------------------------------------------------------
;	keyboard.c:203: static BYTE prevDownCount = 0;
	mov	_sendKeys_prevDownCount_65536_54,#0x00
;	keyboard.c:205: static BYTE alternateKeyPending = 0;
	mov	_sendKeys_alternateKeyPending_65536_54,#0x00
;	keyboard.c:46: char downCount=0;		// number of keys DOWN
	mov	_downCount,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'clr'
;------------------------------------------------------------
;len                       Allocated with name '_clr_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;cp                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	keyboard.c:49: void clr(BYTE *buf, BYTE len) {
;	-----------------------------------------
;	 function clr
;	-----------------------------------------
_clr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	keyboard.c:52: for(cp = buf; cp < buf+len; cp++) {
	mov	a,_clr_PARM_2
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
00103$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00105$
;	keyboard.c:53: *cp = 0;	
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	keyboard.c:52: for(cp = buf; cp < buf+len; cp++) {
	sjmp	00103$
00105$:
;	keyboard.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prtHex'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;hi                        Allocated to registers r6 
;lo                        Allocated to registers r7 
;buf                       Allocated with name '_prtHex_buf_65536_28'
;------------------------------------------------------------
;	keyboard.c:61: void prtHex(BYTE n) {
;	-----------------------------------------
;	 function prtHex
;	-----------------------------------------
_prtHex:
;	keyboard.c:64: BYTE hi = n >> 4;
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
;	keyboard.c:65: BYTE lo = n & 0xf;
	anl	ar7,#0x0f
;	keyboard.c:67: clr(buf, 8);
	mov	_clr_PARM_2,#0x08
	mov	dptr,#_prtHex_buf_65536_28
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_clr
	pop	ar6
	pop	ar7
;	keyboard.c:69: buf[2] = hexTab[hi];
	mov	a,r6
	mov	dptr,#_prtHex_hexTab_65536_28
	movc	a,@a+dptr
	mov	r6,a
	mov	(_prtHex_buf_65536_28 + 0x0002),r6
;	keyboard.c:70: buf[3] = hexTab[lo];
	mov	a,r7
	mov	dptr,#_prtHex_hexTab_65536_28
	movc	a,@a+dptr
	mov	r7,a
	mov	(_prtHex_buf_65536_28 + 0x0003),r7
;	keyboard.c:71: sendKeyReport(buf);
	mov	dptr,#_prtHex_buf_65536_28
	mov	b,#0x40
	lcall	_sendKeyReport
;	keyboard.c:72: clr(buf, 8);
	mov	_clr_PARM_2,#0x08
	mov	dptr,#_prtHex_buf_65536_28
	mov	b,#0x40
	lcall	_clr
;	keyboard.c:73: sendKeyReport(buf);
	mov	dptr,#_prtHex_buf_65536_28
	mov	b,#0x40
;	keyboard.c:74: }
	ljmp	_sendKeyReport
;------------------------------------------------------------
;Allocation info for local variables in function 'initKeyboard'
;------------------------------------------------------------
;kp                        Allocated to registers 
;------------------------------------------------------------
;	keyboard.c:76: void initKeyboard( void ) { 
;	-----------------------------------------
;	 function initKeyboard
;	-----------------------------------------
_initKeyboard:
;	keyboard.c:77: KBPATN = 0xFF;
	mov	_KBPATN,#0xff
;	keyboard.c:78: KBCON = 0x00;
	mov	_KBCON,#0x00
;	keyboard.c:79: KBMASK = 0x00;                               // Will Disable KP Interrupt
	mov	_KBMASK,#0x00
;	keyboard.c:81: LED_STATUS = 0x00;                           // Default LED off
	mov	_LED_STATUS,#0x00
;	keyboard.c:82: ScrollLock = 0;
;	assignBit
	clr	_ScrollLock
;	keyboard.c:83: Caps = 0;
;	assignBit
	clr	_Caps
;	keyboard.c:84: NumLock = 0;
;	assignBit
	clr	_NumLock
;	keyboard.c:85: TxBusy = CLR;                           // SET when pass key code to host
	mov	_TxBusy,#0x00
;	keyboard.c:87: downCount = 0;
	mov	_downCount,#0x00
;	keyboard.c:90: for(kp = activeKeys; kp < activeKeys+MAX_ROLLOVER; kp++) {
	mov	r5,#_activeKeys
	mov	r6,#0x00
	mov	r7,#0x40
00103$:
	mov	a,#(_activeKeys + 0x0018)
	push	acc
	mov	a,#((_activeKeys + 0x0018) >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00101$
;	keyboard.c:91: kp->state = FREE;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	keyboard.c:90: for(kp = activeKeys; kp < activeKeys+MAX_ROLLOVER; kp++) {
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	sjmp	00103$
00101$:
;	keyboard.c:93: clr((BYTE *)ToHost, 8);
	mov	r5,#_ToHost
	mov	r6,#0x00
	mov	r7,#0x40
	mov	_clr_PARM_2,#0x08
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_clr
;	keyboard.c:94: NumLock_LED = 1;
;	assignBit
	setb	_P35
;	keyboard.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KB_LED_Off'
;------------------------------------------------------------
;	keyboard.c:98: void KB_LED_Off( void ) { 
;	-----------------------------------------
;	 function KB_LED_Off
;	-----------------------------------------
_KB_LED_Off:
;	keyboard.c:99: NumLock_LED = SET;
;	assignBit
	setb	_P35
;	keyboard.c:100: Caps_LED = SET;
;	assignBit
	setb	_P36
;	keyboard.c:101: ScrollLock_LED = SET;
;	assignBit
	setb	_P37
;	keyboard.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KB_LED_Status'
;------------------------------------------------------------
;	keyboard.c:105: void KB_LED_Status( void ) { 
;	-----------------------------------------
;	 function KB_LED_Status
;	-----------------------------------------
_KB_LED_Status:
;	keyboard.c:106: NumLock_LED = 0;
;	assignBit
	clr	_P35
;	keyboard.c:107: NumLock_LED = ~NumLock;
;	assignBit
	setb	_P35
;	keyboard.c:108: Caps_LED = ~Caps;
;	assignBit
	setb	_P36
;	keyboard.c:109: ScrollLock_LED = ~ScrollLock;
;	assignBit
	setb	_P37
;	keyboard.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMicroSec'
;------------------------------------------------------------
;microSec                  Allocated to registers 
;------------------------------------------------------------
;	keyboard.c:112: void delayMicroSec(BYTE microSec) { 
;	-----------------------------------------
;	 function delayMicroSec
;	-----------------------------------------
_delayMicroSec:
	mov	r7,dpl
00103$:
;	keyboard.c:113: for (;microSec != 0; microSec--) { 
	mov	a,r7
	jz	00105$
;	keyboard.c:116: __endasm;
	nop
;	keyboard.c:113: for (;microSec != 0; microSec--) { 
	dec	r7
	sjmp	00103$
00105$:
;	keyboard.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_column'
;------------------------------------------------------------
;Scan_index                Allocated to registers r7 
;scanValue                 Allocated to registers 
;------------------------------------------------------------
;	keyboard.c:121: BYTE read_column( BYTE Scan_index ) { 
;	-----------------------------------------
;	 function read_column
;	-----------------------------------------
_read_column:
;	keyboard.c:132: P1 = KeyScan_Table[Scan_index][0];
	mov	a,dpl
	mov	b,#0x03
	mul	ab
	add	a,#_read_column_KeyScan_Table_65536_43
	mov	r6,a
	mov	a,#(_read_column_KeyScan_Table_65536_43 >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	_P1,a
;	keyboard.c:133: P2 = KeyScan_Table[Scan_index][1];
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	_P2,a
;	keyboard.c:134: P3 = P3&KeyScan_Table[Scan_index][2];
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	anl	_P3,a
;	keyboard.c:136: delayMicroSec( 10 );
	mov	dpl,#0x0a
	lcall	_delayMicroSec
;	keyboard.c:138: scanValue = P0;                            // 1101,1111 -> 0 for Key " PRESS "
;	keyboard.c:139: scanValue = ~scanValue;                  // 0010,0000
	mov	a,_P0
	cpl	a
	mov	dpl,a
;	keyboard.c:141: P1 = 0xFF;
	mov	_P1,#0xff
;	keyboard.c:142: P2 = 0xFF;
	mov	_P2,#0xff
;	keyboard.c:143: P3 = P3|0x18;
	orl	_P3,#0x18
;	keyboard.c:145: return scanValue;
;	keyboard.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'msg'
;------------------------------------------------------------
;m                         Allocated to registers r7 
;buf                       Allocated with name '_msg_buf_65536_45'
;------------------------------------------------------------
;	keyboard.c:149: void msg(BYTE m) {
;	-----------------------------------------
;	 function msg
;	-----------------------------------------
_msg:
	mov	r7,dpl
;	keyboard.c:152: clr(buf, 8);
	mov	_clr_PARM_2,#0x08
	mov	dptr,#_msg_buf_65536_45
	mov	b,#0x40
	push	ar7
	lcall	_clr
	pop	ar7
;	keyboard.c:153: if(m >= 'a' && m <=	'z') {
	cjne	r7,#0x61,00145$
00145$:
	jc	00112$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00112$
;	keyboard.c:154: buf[2] = m-'a'+_A;	
	mov	ar6,r7
	mov	a,#0xa3
	add	a,r6
	mov	(_msg_buf_65536_45 + 0x0002),a
	sjmp	00113$
00112$:
;	keyboard.c:155: } else if(m >= 'A' && m <= 'Z') {
	cjne	r7,#0x41,00148$
00148$:
	jc	00108$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00108$
;	keyboard.c:156: buf[2] = m-'A'+_A;
	mov	ar6,r7
	mov	a,#0xc3
	add	a,r6
	mov	(_msg_buf_65536_45 + 0x0002),a
;	keyboard.c:157: buf[0] = KEY_MOD_LSHIFT;
	mov	_msg_buf_65536_45,#0x02
	sjmp	00113$
00108$:
;	keyboard.c:158: } else if(m >= '1' && m <= '9') {
	cjne	r7,#0x31,00151$
00151$:
	jc	00104$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00104$
;	keyboard.c:159: buf[2] = m - '1' + _1;
	mov	ar6,r7
	mov	a,#0xed
	add	a,r6
	mov	(_msg_buf_65536_45 + 0x0002),a
	sjmp	00113$
00104$:
;	keyboard.c:160: } else if(m == ' ') {
	cjne	r7,#0x20,00113$
;	keyboard.c:161: buf[2] = _SPACE;	
	mov	(_msg_buf_65536_45 + 0x0002),#0x2c
00113$:
;	keyboard.c:164: sendKeyReport(buf);
	mov	dptr,#_msg_buf_65536_45
	mov	b,#0x40
	lcall	_sendKeyReport
;	keyboard.c:165: buf[0] = 0;
	mov	_msg_buf_65536_45,#0x00
;	keyboard.c:166: buf[2] = 0;
	mov	(_msg_buf_65536_45 + 0x0002),#0x00
;	keyboard.c:167: sendKeyReport(buf);
	mov	dptr,#_msg_buf_65536_45
	mov	b,#0x40
;	keyboard.c:169: }
	ljmp	_sendKeyReport
;------------------------------------------------------------
;Allocation info for local variables in function 'sendKeyReport'
;------------------------------------------------------------
;buf                       Allocated with name '_sendKeyReport_buf_65536_50'
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	keyboard.c:171: void sendKeyReport(BYTE *buf) { 
;	-----------------------------------------
;	 function sendKeyReport
;	-----------------------------------------
_sendKeyReport:
	mov	_sendKeyReport_buf_65536_50,dpl
	mov	(_sendKeyReport_buf_65536_50 + 1),dph
	mov	(_sendKeyReport_buf_65536_50 + 2),b
;	keyboard.c:174: if(Ep0.EmuOk == CLR)
	mov	a,(_Ep0 + 0x0001)
	jnz	00102$
;	keyboard.c:175: return;
	ret
00102$:
;	keyboard.c:180: EA = 0;
;	assignBit
	clr	_EA
;	keyboard.c:181: USB[EPINDEX] = EP1;
	mov	dptr,#0xfff1
	mov	a,#0x01
	movx	@dptr,a
;	keyboard.c:183: while(i < 8) { 
	mov	r4,#0x00
00103$:
	cjne	r4,#0x08,00133$
00133$:
	jnc	00105$
;	keyboard.c:184: USB[TXDAT] = buf[i];
	mov	a,r4
	add	a,_sendKeyReport_buf_65536_50
	mov	r2,a
	clr	a
	addc	a,(_sendKeyReport_buf_65536_50 + 1)
	mov	r3,a
	mov	r7,(_sendKeyReport_buf_65536_50 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#0xfff3
	movx	@dptr,a
;	keyboard.c:185: i++;
	inc	r4
	sjmp	00103$
00105$:
;	keyboard.c:187: TxBusy = SET;
	mov	_TxBusy,#0x01
;	keyboard.c:188: USB[TXCNT] = i;
	mov	dptr,#0xfff6
	mov	a,r4
	movx	@dptr,a
;	keyboard.c:189: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
;	keyboard.c:190: EA = 1; 	
;	assignBit
	setb	_EA
;	keyboard.c:191: while(TxBusy)
00106$:
	mov	a,_TxBusy
	jnz	00106$
;	keyboard.c:194: clr((BYTE *)buf, 8);
	mov	_clr_PARM_2,#0x08
	mov	dpl,_sendKeyReport_buf_65536_50
	mov	dph,(_sendKeyReport_buf_65536_50 + 1)
	mov	b,(_sendKeyReport_buf_65536_50 + 2)
;	keyboard.c:195: }
	ljmp	_clr
;------------------------------------------------------------
;Allocation info for local variables in function 'sendKeys'
;------------------------------------------------------------
;prevDownCount             Allocated with name '_sendKeys_prevDownCount_65536_54'
;alternateKeyPending       Allocated with name '_sendKeys_alternateKeyPending_65536_54'
;offset                    Allocated to registers r7 
;index                     Allocated to registers 
;hidCode                   Allocated to registers r6 
;mod                       Allocated with name '_sendKeys_mod_65536_54'
;layer                     Allocated with name '_sendKeys_layer_65536_54'
;kp                        Allocated to registers 
;HostIndex                 Allocated with name '_sendKeys_HostIndex_65536_54'
;sloc0                     Allocated with name '_sendKeys_sloc0_1_0'
;------------------------------------------------------------
;	keyboard.c:197: void sendKeys()  { 
;	-----------------------------------------
;	 function sendKeys
;	-----------------------------------------
_sendKeys:
;	keyboard.c:233: CBYTE *layer = topLayer;
	mov	_sendKeys_layer_65536_54,#_topLayer
	mov	(_sendKeys_layer_65536_54 + 1),#(_topLayer >> 8)
;	keyboard.c:239: if(alternateKeyPending && (downCount == 0)) {
	mov	a,_sendKeys_alternateKeyPending_65536_54
	jz	00102$
	mov	a,_downCount
;	keyboard.c:240: ToHost.Normal.Code[HostIndex++] = alternateKeyPending;
;	keyboard.c:241: alternateKeyPending = 0;
	jnz	00102$
	mov	(_ToHost + 0x0002),_sendKeys_alternateKeyPending_65536_54
	mov	_sendKeys_alternateKeyPending_65536_54,a
;	keyboard.c:243: sendKeyReport((BYTE *)&ToHost);
	mov	dptr,#_ToHost
	mov	b,#0x40
	lcall	_sendKeyReport
;	keyboard.c:245: sendKeyReport((BYTE *)&ToHost);
	mov	dptr,#_ToHost
	mov	b,#0x40
;	keyboard.c:246: return;
	ljmp	_sendKeyReport
00102$:
;	keyboard.c:249: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	r3,#_activeKeys
	mov	r4,#0x00
	mov	r5,#0x40
;	1-genFromRTrack replaced	mov	_sendKeys_HostIndex_65536_54,#0x00
	mov	_sendKeys_HostIndex_65536_54,r4
00127$:
	mov	a,#(_activeKeys + 0x0018)
	push	acc
	mov	a,#((_activeKeys + 0x0018) >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00198$
	ljmp	00125$
00198$:
;	keyboard.c:250: if(kp->state == DOWN) {
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00199$
	sjmp	00200$
00199$:
	ljmp	00128$
00200$:
;	keyboard.c:251: index = (kp->col << 3) + kp->row;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_sendKeys_sloc0_1_0,a
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,_sendKeys_sloc0_1_0
;	keyboard.c:252: offset = key_index[index];
	mov	dptr,#_sendKeys_key_index_65536_54
	movc	a,@a+dptr
;	keyboard.c:253: if(offset == 0) {
	mov	r7,a
	jnz	00105$
;	keyboard.c:254: return;	
	ret
00105$:
;	keyboard.c:257: offset = (--offset) << 1;
	dec	r7
	mov	a,r7
	add	a,r7
;	keyboard.c:258: hidCode = layer[offset];
	mov	r7,a
	add	a,_sendKeys_layer_65536_54
	mov	dpl,a
	clr	a
	addc	a,(_sendKeys_layer_65536_54 + 1)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;	keyboard.c:259: mod = layer[offset+1];
	mov	r2,#0x00
	inc	r7
	cjne	r7,#0x00,00202$
	inc	r2
00202$:
	mov	a,r7
	add	a,_sendKeys_layer_65536_54
	mov	dpl,a
	mov	a,r2
	addc	a,(_sendKeys_layer_65536_54 + 1)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
;	keyboard.c:260: if(mod & COMBINATION_KEY) {
	mov	_sendKeys_mod_65536_54,a
	jnb	acc.7,00121$
;	keyboard.c:261: if(hidCode > 0xf) {
	mov	a,r6
	add	a,#0xff - 0x0f
	jnc	00112$
;	keyboard.c:262: ToHost.Normal.Modifier = 1 << (hidCode - 0xe0);
	mov	ar2,r6
	mov	a,r2
	add	a,#0x20
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00207$
00205$:
	add	a,acc
00207$:
	djnz	b,00205$
	mov	_ToHost,a
	sjmp	00113$
00112$:
;	keyboard.c:263: } else if(hidCode == 0x1) {
	cjne	r6,#0x01,00109$
;	keyboard.c:264: layer = fnLayer;
	mov	_sendKeys_layer_65536_54,#_fnLayer
	mov	(_sendKeys_layer_65536_54 + 1),#(_fnLayer >> 8)
	sjmp	00113$
00109$:
;	keyboard.c:265: } else if(hidCode == 0x2) {
	cjne	r6,#0x02,00113$
;	keyboard.c:266: layer = numLayer;
	mov	_sendKeys_layer_65536_54,#_numLayer
	mov	(_sendKeys_layer_65536_54 + 1),#(_numLayer >> 8)
00113$:
;	keyboard.c:268: if(downCount == 1 && prevDownCount == 0) {
	mov	a,#0x01
	cjne	a,_downCount,00115$
	mov	a,_sendKeys_prevDownCount_65536_54
;	keyboard.c:269: alternateKeyPending = combineKeyAlternates[mod & 0xf];
	jnz	00115$
	mov	r2,_sendKeys_mod_65536_54
	anl	ar2,#0x0f
	mov	r7,#0x00
	mov	a,r2
	add	a,#_sendKeys_combineKeyAlternates_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sendKeys_combineKeyAlternates_65536_54 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_sendKeys_alternateKeyPending_65536_54,a
;	keyboard.c:270: return;
	ret
00115$:
;	keyboard.c:272: alternateKeyPending = 0;	
	mov	_sendKeys_alternateKeyPending_65536_54,#0x00
	sjmp	00128$
00121$:
;	keyboard.c:276: if(mod & 0x0f) {
	mov	a,_sendKeys_mod_65536_54
	anl	a,#0x0f
	jz	00119$
;	keyboard.c:277: ToHost.Normal.Modifier = mod & 0x0f; 
	mov	a,#0x0f
	anl	a,_sendKeys_mod_65536_54
	mov	_ToHost,a
00119$:
;	keyboard.c:279: ToHost.Normal.Code[HostIndex++] = hidCode;
	mov	r7,_sendKeys_HostIndex_65536_54
	inc	_sendKeys_HostIndex_65536_54
	mov	a,r7
	add	a,#(_ToHost + 0x0002)
	mov	r0,a
	mov	@r0,ar6
00128$:
;	keyboard.c:249: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	ljmp	00127$
00125$:
;	keyboard.c:285: prevDownCount = downCount;
	mov	_sendKeys_prevDownCount_65536_54,_downCount
;	keyboard.c:286: } 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'updateActiveKeys'
;------------------------------------------------------------
;mask                      Allocated with name '_updateActiveKeys_mask_65536_68'
;kp                        Allocated to registers 
;keyState                  Allocated with name '_updateActiveKeys_keyState_65536_68'
;keyChanges                Allocated with name '_updateActiveKeys_keyChanges_65536_68'
;sloc0                     Allocated with name '_updateActiveKeys_sloc0_1_0'
;sloc1                     Allocated with name '_updateActiveKeys_sloc1_1_0'
;------------------------------------------------------------
;	keyboard.c:298: BYTE updateActiveKeys() {
;	-----------------------------------------
;	 function updateActiveKeys
;	-----------------------------------------
_updateActiveKeys:
;	keyboard.c:303: BYTE keyChanges = 0;
	mov	_updateActiveKeys_keyChanges_65536_68,#0x00
;	keyboard.c:305: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	r4,#_activeKeys
	mov	r5,#0x00
	mov	r6,#0x40
00117$:
	mov	a,#(_activeKeys + 0x0018)
	push	acc
	mov	a,#((_activeKeys + 0x0018) >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00153$
	ljmp	00115$
00153$:
;	keyboard.c:307: if (kp->state == FREE) {
	mov	a,#0x02
	add	a,r4
	mov	_updateActiveKeys_sloc0_1_0,a
	clr	a
	addc	a,r5
	mov	(_updateActiveKeys_sloc0_1_0 + 1),a
	mov	(_updateActiveKeys_sloc0_1_0 + 2),r6
	mov	dpl,_updateActiveKeys_sloc0_1_0
	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
	lcall	__gptrget
	jnz	00154$
	ljmp	00114$
00154$:
;	keyboard.c:311: keyState = allKeys[kp->col];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,#_allKeys
	mov	r1,a
	mov	_updateActiveKeys_keyState_65536_68,@r1
;	keyboard.c:312: mask = 1 << kp->row;
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00157$
00155$:
	add	a,acc
00157$:
	djnz	b,00155$
	mov	_updateActiveKeys_mask_65536_68,a
;	keyboard.c:313: if(mask & keyState) {
	mov	a,_updateActiveKeys_keyState_65536_68
	anl	a,_updateActiveKeys_mask_65536_68
	jz	00112$
;	keyboard.c:314: kp->count++;
	mov	a,#0x03
	add	a,r4
	mov	_updateActiveKeys_sloc1_1_0,a
	clr	a
	addc	a,r5
	mov	(_updateActiveKeys_sloc1_1_0 + 1),a
	mov	(_updateActiveKeys_sloc1_1_0 + 2),r6
	mov	dpl,_updateActiveKeys_sloc1_1_0
	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	r3
	mov	dpl,_updateActiveKeys_sloc1_1_0
	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	keyboard.c:315: if(kp->count >= DOWN_COUNT) {
	cjne	r3,#0x14,00159$
00159$:
	jnc	00160$
	ljmp	00113$
00160$:
;	keyboard.c:316: kp->count = DOWN_COUNT;
	mov	dpl,_updateActiveKeys_sloc1_1_0
	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
	mov	a,#0x14
	lcall	__gptrput
;	keyboard.c:317: if(kp->state != DOWN) {
	mov	dpl,_updateActiveKeys_sloc0_1_0
	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00161$
	sjmp	00113$
00161$:
;	keyboard.c:318: kp->state = DOWN;
	mov	dpl,_updateActiveKeys_sloc0_1_0
	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
;	keyboard.c:319: keyChanges = 1;
;	1-genFromRTrack replaced	mov	_updateActiveKeys_keyChanges_65536_68,#0x01
	mov	_updateActiveKeys_keyChanges_65536_68,a
;	keyboard.c:320: downCount++;
	inc	_downCount
	sjmp	00113$
00112$:
;	keyboard.c:324: kp->count--;
	mov	a,#0x03
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	dec	r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
;	keyboard.c:325: if(kp->count <= 1) {
	clr	c
	mov	a,#0x01
	subb	a,r6
	pop	ar6
	pop	ar5
	pop	ar4
	jc	00113$
;	keyboard.c:326: if(kp->state == DOWN) {
	mov	dpl,_updateActiveKeys_sloc0_1_0
	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00108$
;	keyboard.c:327: downCount--;
	dec	_downCount
;	keyboard.c:328: keyChanges = 1;
	mov	_updateActiveKeys_keyChanges_65536_68,#0x01
00108$:
;	keyboard.c:330: kp->state = FREE;
	mov	a,#0x02
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	clr	a
	lcall	__gptrput
00113$:
;	keyboard.c:335: allKeys[kp->col] &= ~mask;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,#_allKeys
	mov	r1,a
	mov	ar7,@r1
	mov	a,_updateActiveKeys_mask_65536_68
	cpl	a
	mov	r3,a
	anl	a,r7
	mov	@r1,a
00114$:
;	keyboard.c:305: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00117$
00115$:
;	keyboard.c:337: return keyChanges;
	mov	dpl,_updateActiveKeys_keyChanges_65536_68
;	keyboard.c:338: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addActiveKey'
;------------------------------------------------------------
;keyState                  Allocated with name '_addActiveKey_PARM_2'
;col                       Allocated to registers r7 
;row                       Allocated to registers r6 
;mask                      Allocated to registers r6 
;kp                        Allocated with name '_addActiveKey_kp_65536_79'
;sloc0                     Allocated with name '_addActiveKey_sloc0_1_0'
;------------------------------------------------------------
;	keyboard.c:345: void addActiveKey(BYTE col, BYTE keyState) {
;	-----------------------------------------
;	 function addActiveKey
;	-----------------------------------------
_addActiveKey:
	mov	r7,dpl
;	keyboard.c:353: if(keyState == 0) {
	mov	a,_addActiveKey_PARM_2
	jnz	00102$
;	keyboard.c:354: return;	
	ret
00102$:
;	keyboard.c:356: mask = 1;
	mov	r6,#0x01
;	keyboard.c:357: for(row=0; row < 8; row++) {
	mov	r5,#0x00
00109$:
;	keyboard.c:358: if(mask & keyState) {
	mov	a,_addActiveKey_PARM_2
	anl	a,r6
	jnz	00122$
;	keyboard.c:361: mask <<= 1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
;	keyboard.c:357: for(row=0; row < 8; row++) {
	inc	r5
	cjne	r5,#0x08,00143$
00143$:
	jc	00109$
00122$:
	mov	ar6,r5
;	keyboard.c:366: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	_addActiveKey_kp_65536_79,#_activeKeys
	mov	(_addActiveKey_kp_65536_79 + 1),#0x00
	mov	(_addActiveKey_kp_65536_79 + 2),#0x40
	mov	r0,_addActiveKey_kp_65536_79
	mov	r1,(_addActiveKey_kp_65536_79 + 1)
	mov	r2,(_addActiveKey_kp_65536_79 + 2)
00112$:
	mov	a,#(_activeKeys + 0x0018)
	push	acc
	mov	a,#((_activeKeys + 0x0018) >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00114$
;	keyboard.c:367: if(kp->state == FREE) {
	mov	a,#0x02
	add	a,r0
	mov	_addActiveKey_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_addActiveKey_sloc0_1_0 + 1),a
	mov	(_addActiveKey_sloc0_1_0 + 2),r2
	mov	dpl,_addActiveKey_sloc0_1_0
	mov	dph,(_addActiveKey_sloc0_1_0 + 1)
	mov	b,(_addActiveKey_sloc0_1_0 + 2)
	lcall	__gptrget
	jnz	00113$
;	keyboard.c:368: kp->col = col;
	mov	dpl,_addActiveKey_kp_65536_79
	mov	dph,(_addActiveKey_kp_65536_79 + 1)
	mov	b,(_addActiveKey_kp_65536_79 + 2)
	mov	a,r7
	lcall	__gptrput
;	keyboard.c:369: kp->row = row;
	mov	a,#0x01
	add	a,_addActiveKey_kp_65536_79
	mov	r3,a
	clr	a
	addc	a,(_addActiveKey_kp_65536_79 + 1)
	mov	r4,a
	mov	r5,(_addActiveKey_kp_65536_79 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	keyboard.c:370: kp->count = DEBOUNCE_COUNT;
	mov	a,#0x03
	add	a,_addActiveKey_kp_65536_79
	mov	r3,a
	clr	a
	addc	a,(_addActiveKey_kp_65536_79 + 1)
	mov	r4,a
	mov	r5,(_addActiveKey_kp_65536_79 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x0a
	lcall	__gptrput
;	keyboard.c:371: kp->state = UP;
	mov	dpl,_addActiveKey_sloc0_1_0
	mov	dph,(_addActiveKey_sloc0_1_0 + 1)
	mov	b,(_addActiveKey_sloc0_1_0 + 2)
	mov	a,#0x02
;	keyboard.c:372: break;
	ljmp	__gptrput
00113$:
;	keyboard.c:366: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	_addActiveKey_kp_65536_79,r0
	mov	(_addActiveKey_kp_65536_79 + 1),r1
	mov	(_addActiveKey_kp_65536_79 + 2),r2
	ljmp	00112$
00114$:
;	keyboard.c:375: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'scan'
;------------------------------------------------------------
;col                       Allocated to registers r7 
;------------------------------------------------------------
;	keyboard.c:382: void scan(void) {
;	-----------------------------------------
;	 function scan
;	-----------------------------------------
_scan:
;	keyboard.c:384: WDTCR = Wdt;
	mov	_WDTCR,_Wdt
;	keyboard.c:385: if (Ep0.EmuOk == CLR)
	mov	a,(_Ep0 + 0x0001)
	jnz	00116$
;	keyboard.c:386: return;
;	keyboard.c:390: for(col = 0; col < MAX_COLUMN; col++) {
	ret
00116$:
	mov	r7,#0x00
00109$:
;	keyboard.c:391: allKeys[col] = read_column(col);
	mov	a,r7
	add	a,#_allKeys
	mov	r1,a
	mov	dpl,r7
	push	ar7
	push	ar1
	lcall	_read_column
	mov	a,dpl
	pop	ar1
	pop	ar7
	mov	@r1,a
;	keyboard.c:390: for(col = 0; col < MAX_COLUMN; col++) {
	inc	r7
	cjne	r7,#0x12,00142$
00142$:
	jc	00109$
;	keyboard.c:395: if(updateActiveKeys()) {
	lcall	_updateActiveKeys
	mov	a,dpl
	jz	00120$
;	keyboard.c:396: sendKeys();
	lcall	_sendKeys
;	keyboard.c:397: sendKeyReport((BYTE *)&ToHost);
	mov	dptr,#_ToHost
	mov	b,#0x40
	lcall	_sendKeyReport
;	keyboard.c:400: for(col = 0; col < MAX_COLUMN; col++) {
00120$:
	mov	r7,#0x00
00111$:
;	keyboard.c:401: if(allKeys[col]) {
	mov	a,r7
	add	a,#_allKeys
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00112$
;	keyboard.c:402: addActiveKey(col, allKeys[col]);
	mov	_addActiveKey_PARM_2,r6
	mov	dpl,r7
	push	ar7
	lcall	_addActiveKey
	pop	ar7
00112$:
;	keyboard.c:400: for(col = 0; col < MAX_COLUMN; col++) {
	inc	r7
	cjne	r7,#0x12,00146$
00146$:
	jc	00111$
;	keyboard.c:406: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_prtHex_hexTab_65536_28:
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
_read_column_KeyScan_Table_65536_43:
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
_sendKeys_key_index_65536_54:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x15	; 21
	.db #0x36	; 54	'6'
	.db #0x19	; 25
	.db #0x14	; 20
	.db #0x23	; 35
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x4e	; 78	'N'
	.db #0x03	; 3
	.db #0x4d	; 77	'M'
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x16	; 22
	.db #0x25	; 37
	.db #0x1c	; 28
	.db #0x2b	; 43
	.db #0x39	; 57	'9'
	.db #0x46	; 70	'F'
	.db #0x40	; 64
	.db #0x35	; 53	'5'
	.db #0x17	; 23
	.db #0x27	; 39
	.db #0x18	; 24
	.db #0x26	; 38
	.db #0x34	; 52	'4'
	.db #0x42	; 66	'B'
	.db #0x41	; 65	'A'
	.db #0x38	; 56	'8'
	.db #0x1a	; 26
	.db #0x2a	; 42
	.db #0x1b	; 27
	.db #0x29	; 41
	.db #0x37	; 55	'7'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x51	; 81	'Q'
	.db #0x07	; 7
	.db #0x20	; 32
	.db #0x2f	; 47
	.db #0x43	; 67	'C'
	.db #0x53	; 83	'S'
	.db #0x2e	; 46
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x09	; 9
	.db #0x1d	; 29
	.db #0x2c	; 44
	.db #0x47	; 71	'G'
	.db #0x3a	; 58
	.db #0x48	; 72	'H'
	.db #0x0a	; 10
	.db #0x55	; 85	'U'
	.db #0x0b	; 11
	.db #0x1e	; 30
	.db #0x3b	; 59
	.db #0x2d	; 45
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x4f	; 79	'O'
	.db #0x0d	; 13
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_sendKeys_combineKeyAlternates_65536_54:
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x2a	; 42
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
