;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW32)
;--------------------------------------------------------
	.module mcu
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Initial_Mcu
	.globl _INT_TIMER0
	.globl _INT_KB
	.globl _INT_USB
	.globl _Reboot_Mcu
	.globl _Delay_Xms
	.globl _USB_Int
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
	.globl _Wdt
	.globl _T0Cnt
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_T0Cnt::
	.ds 1
_Wdt::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
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
;Allocation info for local variables in function 'Delay_Xms'
;------------------------------------------------------------
;X                         Allocated to registers r7 
;------------------------------------------------------------
;	mcu.c:15: void Delay_Xms( BYTE X )
;	-----------------------------------------
;	 function Delay_Xms
;	-----------------------------------------
_Delay_Xms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	mcu.c:16: { TR0 = CLR;                                   // Disable Timer0
;	assignBit
	clr	_TR0
;	mcu.c:18: T0Cnt = X;                                   // X*1ms = Xms
	mov	_T0Cnt,r7
;	mcu.c:20: TL0 = T0_1MSL;
	mov	_TL0,#0x18
;	mcu.c:21: TH0 = T0_1MSH;
	mov	_TH0,#0xfc
;	mcu.c:22: TR0 = SET;                                   // Enable Timer0
;	assignBit
	setb	_TR0
;	mcu.c:23: while( T0Cnt );
00101$:
	mov	a,_T0Cnt
	jnz	00101$
;	mcu.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Reboot_Mcu'
;------------------------------------------------------------
;Cmd                       Allocated to registers 
;------------------------------------------------------------
;	mcu.c:27: void Reboot_Mcu( BYTE Cmd )
;	-----------------------------------------
;	 function Reboot_Mcu
;	-----------------------------------------
_Reboot_Mcu:
	mov	_ISPCR,dpl
;	mcu.c:28: { ISPCR = Cmd;
;	mcu.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'INT_USB'
;------------------------------------------------------------
;	mcu.c:32: void INT_USB(void) __interrupt 15 __using 3          // 
;	-----------------------------------------
;	 function INT_USB
;	-----------------------------------------
_INT_USB:
	ar7 = 0x1f
	ar6 = 0x1e
	ar5 = 0x1d
	ar4 = 0x1c
	ar3 = 0x1b
	ar2 = 0x1a
	ar1 = 0x19
	ar0 = 0x18
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x18
;	mcu.c:33: { WDTCR = Wdt;                                 // Reset Watch Dog Timer
	mov	_WDTCR,_Wdt
;	mcu.c:34: USB_Int();
	mov	psw,#0x00
	lcall	_USB_Int
	mov	psw,#0x18
;	mcu.c:35: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'INT_KB'
;------------------------------------------------------------
;	mcu.c:38: void INT_KB(void) __interrupt 13 __using 2 { 
;	-----------------------------------------
;	 function INT_KB
;	-----------------------------------------
_INT_KB:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
;	mcu.c:39: WDTCR = Wdt;
	mov	_WDTCR,_Wdt
;	mcu.c:41: KBCON = 0x00;                                // Clear KP Interrupt Flag
	mov	_KBCON,#0x00
;	mcu.c:42: KBMASK = 0x00;                               // Will Disable KP Interrupt
	mov	_KBMASK,#0x00
;	mcu.c:43: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'INT_TIMER0'
;------------------------------------------------------------
;	mcu.c:45: void INT_TIMER0(void) __interrupt 1 __using 1  { WDTCR = Wdt;                                 // Reset Watch Dog Timer
;	-----------------------------------------
;	 function INT_TIMER0
;	-----------------------------------------
_INT_TIMER0:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	mov	_WDTCR,_Wdt
;	mcu.c:47: TR0 = CLR;                                   // Disable Timer0
;	assignBit
	clr	_TR0
;	mcu.c:48: if ( T0Cnt ) { 
	mov	a,_T0Cnt
	jz	00103$
;	mcu.c:49: T0Cnt--;
	dec	_T0Cnt
;	mcu.c:50: TL0 = T0_1MSL;
	mov	_TL0,#0x18
;	mcu.c:51: TH0 = T0_1MSH;
	mov	_TH0,#0xfc
;	mcu.c:52: TR0 = SET;                               // Enable Timer0
;	assignBit
	setb	_TR0
00103$:
;	mcu.c:54: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial_Mcu'
;------------------------------------------------------------
;	mcu.c:57: void Initial_Mcu( void )
;	-----------------------------------------
;	 function Initial_Mcu
;	-----------------------------------------
_Initial_Mcu:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	mcu.c:58: { IE  = 0x00;	                                 // disable all interrupt
	mov	_IE,#0x00
;	mcu.c:60: AUXIE = ( EUSB | EKB );                      // Enable USB and KB int
	mov	_AUXIE,#0xa0
;	mcu.c:61: AUXIP = 0x20;                                // KB high priority
	mov	_AUXIP,#0x20
;	mcu.c:63: PSW = 0x00;	                                 // bank 0
	mov	_PSW,#0x00
;	mcu.c:64: IP  = 0x12;	                                 // hi priority: UART / Timer0
	mov	_IP,#0x12
;	mcu.c:66: TMOD = 0x21;                                 // Set Timer0/1 in Mode1/2 ( 16/8 bit )
	mov	_TMOD,#0x21
;	mcu.c:67: TR0 = 0;                                     // Desable Timer0
;	assignBit
	clr	_TR0
;	mcu.c:68: ET0 = 1;                                     // Enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	mcu.c:70: Wdt = WDTCR;
	mov	_Wdt,_WDTCR
;	mcu.c:71: Wdt |= 0x37;                                 // Setting and Reset WDT
	orl	_Wdt,#0x37
;	mcu.c:73: CKCON = (BYTE)(( 12 - 1 ) << 3);             // CLKin -> Default , OSCDN = 12Mhz - 1
	mov	_CKCON,#0x58
;	mcu.c:75: EA  = 1;                                     // enable all interrupt
;	assignBit
	setb	_EA
;	mcu.c:77: CKCON2 |= EN_USB;                            // Enalbe EN_USB
	orl	_CKCON2,#0x08
;	mcu.c:78: Delay_Xms( 1 );
	mov	dpl,#0x01
	lcall	_Delay_Xms
;	mcu.c:80: while( 1 )
00104$:
;	mcu.c:81: { USB[ACKCTL] |= EN_DLL;
;	mcu.c:82: if ( USB[ACKCTL] & EN_DLL )
	mov	dptr,#0xffcc
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	jnb	acc.0,00104$
;	mcu.c:86: Delay_Xms( 4 );                              // Wait for DPLL 48Mhz Ready
	mov	dpl,#0x04
	lcall	_Delay_Xms
;	mcu.c:88: while( 1 )
00109$:
;	mcu.c:89: { USB[ACKCTL] |= UCK_SEL;
;	mcu.c:90: if ( USB[ACKCTL] & UCK_SEL )
	mov	dptr,#0xffcc
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
	movx	a,@dptr
	jnb	acc.1,00109$
;	mcu.c:94: CKCON2 |= OSCDR0;                            // Mini clock output
	orl	_CKCON2,#0x20
;	mcu.c:96: P1M0 = 0xFF;                                 // Set Open Drain
	mov	_P1M0,#0xff
;	mcu.c:97: P1M1 = 0xFF;
	mov	_P1M1,#0xff
;	mcu.c:98: P2M0 = 0xFF;
	mov	_P2M0,#0xff
;	mcu.c:99: P2M1 = 0xFF;
	mov	_P2M1,#0xff
;	mcu.c:100: P3M0 = 0x18;
	mov	_P3M0,#0x18
;	mcu.c:101: P3M1 = 0x18; 
	mov	_P3M1,#0x18
;	mcu.c:103: Delay_Xms( 250 );
	mov	dpl,#0xfa
;	mcu.c:104: }
	ljmp	_Delay_Xms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
