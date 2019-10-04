;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW32)
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USB_Wr_FIFO_PARM_2
	.globl _USB_Rd_FIFO_PARM_2
	.globl _SERIALNUMBER_DESCRIPTOR
	.globl _PRODUCT_DESCRIPTOR
	.globl _MANUFACTURER_DESCRIPTOR
	.globl _LANGUAGEID_DESCRIPTOR
	.globl _KB_INTERRUPT_IN_ENDPOINT_DESCRIPTOR
	.globl _KB_HID_DESCRIPTOR
	.globl _KB_INTERFACE_DESCRIPTOR
	.globl _CONGFIGURATION_DESCRIPTOR
	.globl _DEVICE_DESCRIPTOR
	.globl _KB_HID_REPORT
	.globl _USB_Int
	.globl _USB_Set_TxStatus
	.globl _USB_CtrlWr
	.globl _USB_Class_Request
	.globl _USB_Stardard_Request
	.globl _USB_CtrlRd
	.globl _USB_Get_Interface
	.globl _USB_Set_Interface
	.globl _USB_Set_Configuration
	.globl _USB_Get_Descriptor
	.globl _USB_Set_Feature
	.globl _USB_Clear_Feature
	.globl _USB_Get_Status
	.globl _USB_Ep0_FIFO
	.globl _USB_Wr_FIFO
	.globl _USB_Rd_FIFO
	.globl _Initial_USB
	.globl _initKeyboard
	.globl _KB_LED_Off
	.globl _KB_LED_Status
	.globl _Delay_Xms
	.globl _Reboot_Mcu
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
	.globl _Ep0
	.globl _Protocol
	.globl _IdleRate
	.globl _TxBusy
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
_TxBusy::
	.ds 1
_IdleRate::
	.ds 1
_Protocol::
	.ds 1
_Ep0::
	.ds 19
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_USB_Rd_FIFO_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_USB_Wr_FIFO_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_USB_Get_Descriptor_WLen_65536_35:
	.ds 2
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
;Allocation info for local variables in function 'Initial_USB'
;------------------------------------------------------------
;	usb.c:30: void Initial_USB( void )
;	-----------------------------------------
;	 function Initial_USB
;	-----------------------------------------
_Initial_USB:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	usb.c:31: { USB[IEN] = CLR;                              // Disable USB all related interrupts
	mov	dptr,#0xffd9
	clr	a
	movx	@dptr,a
;	usb.c:33: USB[EPINDEX] = EP0;                          // Change to EP0 
	mov	dptr,#0xfff1
	movx	@dptr,a
;	usb.c:34: USB[EPCON] = ( TXEPEN | RXEPEN );            // Enable Tx & Rx
;	usb.c:35: USB[EPCON] |= ( TXSTL | RXSTL );             // Set RXSTL & TXSTL (prevent not SETUP Token)
	mov	dptr,#0xffe1
	mov	a,#0x05
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0xc0
	mov	dptr,#0xffe1
	mov	a,r7
	movx	@dptr,a
;	usb.c:36: USB[TXCON] = TXCLR;                          // Clear Tx FIFO
	mov	dptr,#0xfff4
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:37: USB[RXCON] = RXCLR;                          // Clear Rx FIFO
	mov	dptr,#0xffe4
	movx	@dptr,a
;	usb.c:39: USB[UIE] = ( UTXIE0 | URXIE0 | UTXIE1 );   
	mov	dptr,#0xffda
	mov	a,#0x07
	movx	@dptr,a
;	usb.c:41: USB[IEN] = ( EF | EFSR );                    // Enable USB all related interrupts
	mov	dptr,#0xffd9
	dec	a
	movx	@dptr,a
;	usb.c:43: Ep0.Unit = EP0_MAX;                          // 
	mov	(_Ep0 + 0x000f),#0x08
;	usb.c:44: Ep0.EmuOk = CLR;                             // Check Emulation status
	mov	(_Ep0 + 0x0001),#0x00
;	usb.c:45: Ep0.RWEN = CLR;                              // Remote/Wakeup flag ( Default " Disable " )
	mov	_Ep0,#0x00
;	usb.c:47: USB[UPCON] |= CONEN;                         // Connecter to Host ( Enable the pull-up resistor )
	mov	dptr,#0xffc9
	movx	a,@dptr
	orl	a,#0x80
	movx	@dptr,a
;	usb.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Rd_FIFO'
;------------------------------------------------------------
;Cnt                       Allocated with name '_USB_Rd_FIFO_PARM_2'
;Buffer                    Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	usb.c:51: void USB_Rd_FIFO( BYTE *Buffer , BYTE Cnt ) { 
;	-----------------------------------------
;	 function USB_Rd_FIFO
;	-----------------------------------------
_USB_Rd_FIFO:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	usb.c:53: for (i = 0; i < Cnt; i++) {  
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_USB_Rd_FIFO_PARM_2
	jnc	00105$
;	usb.c:54: Buffer[i] = USB[RXDAT];
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dptr,#0xffe3
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
;	usb.c:53: for (i = 0; i < Cnt; i++) {  
	inc	r4
	sjmp	00103$
00105$:
;	usb.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Wr_FIFO'
;------------------------------------------------------------
;Cnt                       Allocated with name '_USB_Wr_FIFO_PARM_2'
;Buffer                    Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	usb.c:59: void USB_Wr_FIFO( BYTE *Buffer , BYTE Cnt )
;	-----------------------------------------
;	 function USB_Wr_FIFO
;	-----------------------------------------
_USB_Wr_FIFO:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	usb.c:63: for ( i=0 ; i<Cnt ; i++ )  
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_USB_Wr_FIFO_PARM_2
	jnc	00105$
;	usb.c:64: USB[TXDAT] = Buffer[i];
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#0xfff3
	movx	@dptr,a
;	usb.c:63: for ( i=0 ; i<Cnt ; i++ )  
	inc	r4
	sjmp	00103$
00105$:
;	usb.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Ep0_FIFO'
;------------------------------------------------------------
;BLen                      Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:68: void USB_Ep0_FIFO( void )
;	-----------------------------------------
;	 function USB_Ep0_FIFO
;	-----------------------------------------
_USB_Ep0_FIFO:
;	usb.c:72: USB[TXCON] = TXCLR;                          // Clear Tx FIFO
	mov	dptr,#0xfff4
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:74: if ( USB[RXSTAT] & ( STOVW | EDOVW ))        // Setup Token
	mov	dptr,#0xffe2
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x30
	jz	00119$
;	usb.c:75: { Ep0.Stage = SETUPSTAGE;
	mov	(_Ep0 + 0x0002),#0xf0
;	usb.c:77: { while(USB[RXSTAT] & STOVW);          // waiting STOVE = 0
00101$:
	mov	dptr,#0xffe2
	movx	a,@dptr
	mov	r7,a
	jb	acc.5,00101$
;	usb.c:78: while(!( USB[RXSTAT] & EDOVW ));     // waiting EDOVW = 1
00104$:
	mov	dptr,#0xffe2
	movx	a,@dptr
	jnb	acc.4,00104$
;	usb.c:79: USB[RXSTAT] &= ~EDOVW;               // Clear the EDOVW bit when reading the contents of the FIFO
	mov	dptr,#0xffe2
	movx	a,@dptr
	anl	a,#0xef
	movx	@dptr,a
;	usb.c:80: USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
	mov	dptr,#0xffdb
	mov	a,#0x02
	movx	@dptr,a
;	usb.c:81: BLen = USB[RXCNT];                   // Chk total Rx Data count in Byte
	mov	dptr,#0xffe6
	movx	a,@dptr
	mov	r7,a
;	usb.c:82: USB_Rd_FIFO( Ep0.RxTx , BLen );
	mov	_USB_Rd_FIFO_PARM_2,r7
	mov	dptr,#(_Ep0 + 0x0003)
	mov	b,#0x40
	push	ar7
	lcall	_USB_Rd_FIFO
	pop	ar7
;	usb.c:83: if (!(USB[RXSTAT] & ( STOVW | EDOVW )))
	mov	dptr,#0xffe2
	movx	a,@dptr
	anl	a,#0x30
	jz	00162$
	sjmp	00101$
00162$:
;	usb.c:86: USB[EPCON] &= ~( RXSTL | TXSTL );        // Release Rx/Tx STAL
	mov	dptr,#0xffe1
	movx	a,@dptr
	anl	a,#0x3f
	movx	@dptr,a
;	usb.c:87: USB[RXSTAT] &= ~RXSETUP;                 // Release Setup Token flag
	mov	dptr,#0xffe2
	movx	a,@dptr
	anl	a,#0xbf
	movx	@dptr,a
;	usb.c:88: Ep0.All = BLen;                          // Only for analytic "Urd"
	mov	r6,#0x00
	mov	((_Ep0 + 0x0010) + 0),r7
	mov	((_Ep0 + 0x0010) + 1),r6
	sjmp	00120$
00119$:
;	usb.c:90: else if ( Ep0.Stage == DFU_STAGE )
	mov	a,#0x33
	cjne	a,(_Ep0 + 0x0002),00116$
;	usb.c:91: { BLen = USB[RXCNT];                       // Chk total Rx Data count in Byte  
	mov	dptr,#0xffe6
	movx	a,@dptr
;	usb.c:92: Ep0.All -= BLen;
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,(_Ep0 + 0x0010)
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,((_Ep0 + 0x0010) + 1)
	subb	a,r6
	mov	r6,a
	mov	((_Ep0 + 0x0010) + 0),r5
	mov	((_Ep0 + 0x0010) + 1),r6
;	usb.c:94: USB_Rd_FIFO( Ep0.RxTx , BLen );
	mov	_USB_Rd_FIFO_PARM_2,r7
	mov	dptr,#(_Ep0 + 0x0003)
	mov	b,#0x40
	push	ar7
	lcall	_USB_Rd_FIFO
	pop	ar7
;	usb.c:95: if ( BLen == EP0_MAX )
	cjne	r7,#0x08,00113$
;	usb.c:96: { USB[TXCNT] = 0;
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:97: Ep0.Stage = Ep0.RxTx[0];
	mov	r7,(_Ep0 + 0x0003)
	mov	(_Ep0 + 0x0002),r7
	sjmp	00120$
00113$:
;	usb.c:100: { LED_STATUS = Ep0.RxTx[0];
	mov	_LED_STATUS,(_Ep0 + 0x0003)
;	usb.c:101: KB_LED_Status();
	lcall	_KB_LED_Status
;	usb.c:102: USB[TXCNT] = 0;
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:103: Ep0.Stage = STATUSSTAGE;
	mov	(_Ep0 + 0x0002),#0xa5
	sjmp	00120$
00116$:
;	usb.c:107: { Ep0.Stage = STATUSSTAGE;
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:108: USB[EPCON] |= ( RXSTL | TXSTL );         // Receive the host "ACK" transaction , we should set Rx/Tx STAL
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
00120$:
;	usb.c:111: USB[RXCON] |= RXFFRC;                        // Set this bit , meaning that Rx Data has Read Complete
	mov	dptr,#0xffe4
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	usb.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Get_Status'
;------------------------------------------------------------
;	usb.c:115: void USB_Get_Status( void )
;	-----------------------------------------
;	 function USB_Get_Status
;	-----------------------------------------
_USB_Get_Status:
;	usb.c:116: { Ep0.All = 2;                                 // Only 2 byte transfer to the host
	mov	((_Ep0 + 0x0010) + 0),#0x02
	mov	((_Ep0 + 0x0010) + 1),#0x00
;	usb.c:119: Ep0.RxTx[1] = 0;
	mov	(_Ep0 + 0x0004),#0x00
;	usb.c:120: switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
	mov	r6,(_Ep0 + 0x0003)
	anl	ar6,#0x03
	mov	r7,#0x00
	cjne	r6,#0x00,00135$
	cjne	r7,#0x00,00135$
	sjmp	00101$
00135$:
	cjne	r6,#0x01,00136$
	cjne	r7,#0x00,00136$
	ret
00136$:
;	usb.c:121: { case DEVICEREQUEST:    if ( Ep0.RWEN )
	cjne	r6,#0x02,00111$
	cjne	r7,#0x00,00111$
	sjmp	00105$
00101$:
	mov	a,_Ep0
	jz	00103$
;	usb.c:122: Ep0.RxTx[0] = 0x02;// Return Function Remove Wake-up Enable
	mov	(_Ep0 + 0x0003),#0x02
	ret
00103$:
;	usb.c:124: Ep0.RxTx[0] = 0x00;// Return Function Remove Wake-up Disable
	mov	(_Ep0 + 0x0003),#0x00
;	usb.c:125: break;            // Chk Remote wakeup enabled or not
;	usb.c:126: case ENDPOINTREQUEST:  USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
	ret
00105$:
	mov	a,#0x0f
	anl	a,(_Ep0 + 0x0007)
	mov	dptr,#0xfff1
	movx	@dptr,a
;	usb.c:127: if (( USB[EPCON] & RXSTL )||( USB[EPCON] & TXSTL ))
	mov	dptr,#0xffe1
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00106$
	mov	a,r7
	jnb	acc.6,00107$
00106$:
;	usb.c:128: Ep0.RxTx[0] = 0x01;// if EndPoint Rx/Tx STAL then set EndPoint Halt
	mov	(_Ep0 + 0x0003),#0x01
	sjmp	00108$
00107$:
;	usb.c:130: Ep0.RxTx[0] = 0x00;// else seting this EndPoint Avaliable for Rx/Tx  
	mov	(_Ep0 + 0x0003),#0x00
00108$:
;	usb.c:131: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
;	usb.c:132: break;
;	usb.c:134: default:               USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00111$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:136: }
;	usb.c:137: }  	
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Clear_Feature'
;------------------------------------------------------------
;	usb.c:140: void USB_Clear_Feature( void )
;	-----------------------------------------
;	 function USB_Clear_Feature
;	-----------------------------------------
_USB_Clear_Feature:
;	usb.c:141: { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
	mov	r6,(_Ep0 + 0x0003)
	anl	ar6,#0x03
	mov	r7,#0x00
	cjne	r6,#0x00,00134$
	cjne	r7,#0x00,00134$
	sjmp	00101$
00134$:
	cjne	r6,#0x01,00135$
	cjne	r7,#0x00,00135$
	ret
00135$:
;	usb.c:142: { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
	cjne	r6,#0x02,00110$
	cjne	r7,#0x00,00110$
	sjmp	00105$
00101$:
	mov	a,#0x01
	cjne	a,(_Ep0 + 0x0005),00103$
;	usb.c:143: Ep0.RWEN = CLR;
	mov	_Ep0,#0x00
	ret
00103$:
;	usb.c:145: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:146: break;            // Disable the Device Remote Wakeup function
;	usb.c:147: case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
	ret
00105$:
	mov	a,(_Ep0 + 0x0005)
	jnz	00107$
;	usb.c:148: { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
	mov	a,#0x0f
	anl	a,(_Ep0 + 0x0007)
	mov	dptr,#0xfff1
	movx	@dptr,a
;	usb.c:149: USB[EPCON] &= ~( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	anl	a,#0x3f
	movx	@dptr,a
;	usb.c:150: USB[RXSTAT] = RXSOVW;// Enable RXSEQ/TXSEQ bit can be Updata , and
	mov	dptr,#0xffe2
	mov	a,#0x08
	movx	@dptr,a
;	usb.c:151: USB[TXSTAT] = TXSOVW;// set Rx/Tx toggle buffer into DATA0
	mov	dptr,#0xfff2
	movx	@dptr,a
;	usb.c:152: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
	ret
00107$:
;	usb.c:155: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:156: break;
;	usb.c:158: default:               USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00110$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:160: }
;	usb.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Set_Feature'
;------------------------------------------------------------
;	usb.c:164: void USB_Set_Feature( void )
;	-----------------------------------------
;	 function USB_Set_Feature
;	-----------------------------------------
_USB_Set_Feature:
;	usb.c:165: { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
	mov	r6,(_Ep0 + 0x0003)
	anl	ar6,#0x03
	mov	r7,#0x00
	cjne	r6,#0x00,00134$
	cjne	r7,#0x00,00134$
	sjmp	00101$
00134$:
	cjne	r6,#0x01,00135$
	cjne	r7,#0x00,00135$
	ret
00135$:
;	usb.c:166: { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
	cjne	r6,#0x02,00110$
	cjne	r7,#0x00,00110$
	sjmp	00105$
00101$:
	mov	a,#0x01
	cjne	a,(_Ep0 + 0x0005),00103$
;	usb.c:167: Ep0.RWEN = SET;
	mov	_Ep0,#0x01
	ret
00103$:
;	usb.c:169: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:170: break;            // Disable the Device Remote Wakeup function
;	usb.c:171: case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
	ret
00105$:
	mov	a,(_Ep0 + 0x0005)
	jnz	00107$
;	usb.c:172: { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
	mov	a,#0x0f
	anl	a,(_Ep0 + 0x0007)
	mov	dptr,#0xfff1
	movx	@dptr,a
;	usb.c:173: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:174: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
	ret
00107$:
;	usb.c:177: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:178: break;
;	usb.c:180: default:               USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00110$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:182: }
;	usb.c:183: }  
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Get_Descriptor'
;------------------------------------------------------------
;WLen                      Allocated with name '_USB_Get_Descriptor_WLen_65536_35'
;------------------------------------------------------------
;	usb.c:186: void USB_Get_Descriptor( void )
;	-----------------------------------------
;	 function USB_Get_Descriptor
;	-----------------------------------------
_USB_Get_Descriptor:
;	usb.c:190: WLen.B[0] = 0x00;                            // MSB
	mov	_USB_Get_Descriptor_WLen_65536_35,#0x00
;	usb.c:191: Ep0.All = Ep0.RxTx[7];                       // MSB
	mov	r6,(_Ep0 + 0x000a)
	mov	r7,#0x00
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:192: Ep0.All <<= 8;
	mov	ar7,r6
	mov	r6,#0x00
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:193: Ep0.All += Ep0.RxTx[6];                      // LSB
	mov	r4,(_Ep0 + 0x0009)
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:194: switch( Ep0.RxTx[3] ) { 
	mov	r7,(_Ep0 + 0x0006)
	cjne	r7,#0x01,00167$
	sjmp	00101$
00167$:
	cjne	r7,#0x02,00168$
	sjmp	00102$
00168$:
	cjne	r7,#0x03,00169$
	sjmp	00103$
00169$:
	cjne	r7,#0x21,00170$
	ljmp	00119$
00170$:
	cjne	r7,#0x22,00171$
	ljmp	00120$
00171$:
	ljmp	00121$
;	usb.c:195: case DEVICEDESCRIPTOR:        
00101$:
;	usb.c:196: Ep0.Buf = (void *)DEVICE_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_DEVICE_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_DEVICE_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
;	usb.c:197: WLen.B[1] = Ep0.Buf[0];
	mov	dptr,#_DEVICE_DESCRIPTOR
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
;	usb.c:198: break;
	ljmp	00122$
;	usb.c:199: case CONFIGURATIONDESCRIPTOR: 
00102$:
;	usb.c:200: Ep0.Buf = (void *)CONGFIGURATION_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_CONGFIGURATION_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_CONGFIGURATION_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
;	usb.c:201: WLen.B[1] = Ep0.Buf[2];// LSB
	mov	dptr,#(_CONGFIGURATION_DESCRIPTOR + 0x0002)
	mov	b,#0x80
	lcall	__gptrget
	mov	r7,a
	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
;	usb.c:202: break;
	ljmp	00122$
;	usb.c:203: case STRINGDESCRIPTOR:        
00103$:
;	usb.c:204: switch( Ep0.RxTx[2] ) { 
	mov	a,(_Ep0 + 0x0005)
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00172$
	ljmp	00117$
00172$:
	mov	a,r7
	add	a,r7
;	usb.c:205: case 0:  
	mov	dptr,#00173$
	jmp	@a+dptr
00173$:
	sjmp	00104$
	sjmp	00105$
	sjmp	00109$
	sjmp	00113$
00104$:
;	usb.c:206: Ep0.Buf = (void *)LANGUAGEID_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_LANGUAGEID_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_LANGUAGEID_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
;	usb.c:207: break;
;	usb.c:208: case 1:  
	sjmp	00118$
00105$:
;	usb.c:209: if ( DEVICE_DESCRIPTOR[14] )
	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x000e)
	clr	a
	movc	a,@a+dptr
	jz	00107$
;	usb.c:210: Ep0.Buf = (void *)MANUFACTURER_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_MANUFACTURER_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_MANUFACTURER_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
	sjmp	00118$
00107$:
;	usb.c:212: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:213: break;
;	usb.c:214: case 2:  
	sjmp	00118$
00109$:
;	usb.c:215: if ( DEVICE_DESCRIPTOR[15] )
	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x000f)
	clr	a
	movc	a,@a+dptr
	jz	00111$
;	usb.c:216: Ep0.Buf = (void *)PRODUCT_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_PRODUCT_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_PRODUCT_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
	sjmp	00118$
00111$:
;	usb.c:218: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:219: break;
;	usb.c:220: case 3:  
	sjmp	00118$
00113$:
;	usb.c:221: if ( DEVICE_DESCRIPTOR[16] )
	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x0010)
	clr	a
	movc	a,@a+dptr
	jz	00115$
;	usb.c:222: Ep0.Buf = (void *)SERIALNUMBER_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_SERIALNUMBER_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_SERIALNUMBER_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
	sjmp	00118$
00115$:
;	usb.c:224: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:225: break;
;	usb.c:226: default: USB[EPCON] |= ( RXSTL | TXSTL );
	sjmp	00118$
00117$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:228: }
00118$:
;	usb.c:229: WLen.B[1] = Ep0.Buf[0];
	mov	dpl,(_Ep0 + 0x000b)
	mov	dph,((_Ep0 + 0x000b) + 1)
	mov	b,((_Ep0 + 0x000b) + 2)
	lcall	__gptrget
	mov	r7,a
	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
;	usb.c:230: break;
;	usb.c:231: case HIDDESCRIPTOR:           
	sjmp	00122$
00119$:
;	usb.c:232: Ep0.Buf = (void *)KB_HID_DESCRIPTOR;
	mov	((_Ep0 + 0x000b) + 0),#_KB_HID_DESCRIPTOR
	mov	((_Ep0 + 0x000b) + 1),#(_KB_HID_DESCRIPTOR >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
;	usb.c:233: WLen.B[1] = Ep0.Buf[0];
	mov	dptr,#_KB_HID_DESCRIPTOR
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
;	usb.c:234: break;
;	usb.c:235: case HIDREPORT:               
	sjmp	00122$
00120$:
;	usb.c:236: Ep0.Buf = (void *)KB_HID_REPORT;
	mov	((_Ep0 + 0x000b) + 0),#_KB_HID_REPORT
	mov	((_Ep0 + 0x000b) + 1),#(_KB_HID_REPORT >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x80
;	usb.c:237: WLen.B[1] = KB_HID_DESCRIPTOR[7];
	mov	dptr,#(_KB_HID_DESCRIPTOR + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
;	usb.c:238: WLen.B[0] = KB_HID_DESCRIPTOR[8];
	mov	dptr,#(_KB_HID_DESCRIPTOR + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_USB_Get_Descriptor_WLen_65536_35,r7
;	usb.c:239: break;
;	usb.c:240: default:                      
	sjmp	00122$
00121$:
;	usb.c:241: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:243: }
00122$:
;	usb.c:245: if (Ep0.All > WLen.W)
	clr	c
	mov	a,_USB_Get_Descriptor_WLen_65536_35
	subb	a,(_Ep0 + 0x0010)
	mov	a,(_USB_Get_Descriptor_WLen_65536_35 + 1)
	subb	a,((_Ep0 + 0x0010) + 1)
	jnc	00125$
;	usb.c:246: Ep0.All = WLen.W;
	mov	((_Ep0 + 0x0010) + 0),_USB_Get_Descriptor_WLen_65536_35
	mov	((_Ep0 + 0x0010) + 1),(_USB_Get_Descriptor_WLen_65536_35 + 1)
00125$:
;	usb.c:247: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Set_Configuration'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:250: void USB_Set_Configuration( void )
;	-----------------------------------------
;	 function USB_Set_Configuration
;	-----------------------------------------
_USB_Set_Configuration:
;	usb.c:254: Ep0.Tmp = Ep0.RxTx[2];
	mov	r7,(_Ep0 + 0x0005)
;	usb.c:255: if ( Ep0.Tmp )
	mov	a,r7
	mov	(_Ep0 + 0x0012),a
	jz	00115$
;	usb.c:256: { for ( i=1 ; i<6 ; i++ )
	mov	r7,#0x01
00106$:
;	usb.c:257: { USB[EPINDEX] = i;
	mov	dptr,#0xfff1
	mov	a,r7
	movx	@dptr,a
;	usb.c:258: USB[EPCON] = ( TXEPEN | RXEPEN );   // Enable Receive Input/Transmit Output
	mov	dptr,#0xffe1
	mov	a,#0x05
	movx	@dptr,a
;	usb.c:259: USB[RXCON] = RXCLR;                 // Clear Rx FIFO
	mov	dptr,#0xffe4
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:260: USB[TXCON] = TXCLR;                 // Clear Tx FIFO
	mov	dptr,#0xfff4
	movx	@dptr,a
;	usb.c:261: USB[RXSTAT] = RXSOVW;               // Enable RXSEQ/TXSEQ bit can be Updata , and
	mov	dptr,#0xffe2
	swap	a
	movx	@dptr,a
;	usb.c:262: USB[TXSTAT] = TXSOVW;               // set Rx/Tx toggle buffer into DATA0
	mov	dptr,#0xfff2
	movx	@dptr,a
;	usb.c:256: { for ( i=1 ; i<6 ; i++ )
	inc	r7
	cjne	r7,#0x06,00131$
00131$:
	jc	00106$
;	usb.c:264: Ep0.EmuOk = SET;                         // Emulation Flow pass
	mov	(_Ep0 + 0x0001),#0x01
;	usb.c:267: { for ( i=1 ; i<6 ; i++ )
	sjmp	00105$
00115$:
	mov	r7,#0x01
00108$:
;	usb.c:268: { USB[EPINDEX] = i;
	mov	dptr,#0xfff1
	mov	a,r7
	movx	@dptr,a
;	usb.c:269: USB[EPCON] = 0x00;
	mov	dptr,#0xffe1
	clr	a
	movx	@dptr,a
;	usb.c:267: { for ( i=1 ; i<6 ; i++ )
	inc	r7
	cjne	r7,#0x06,00133$
00133$:
	jc	00108$
00105$:
;	usb.c:272: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
;	usb.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Set_Interface'
;------------------------------------------------------------
;	usb.c:276: void USB_Set_Interface( void )
;	-----------------------------------------
;	 function USB_Set_Interface
;	-----------------------------------------
_USB_Set_Interface:
;	usb.c:277: { switch( Ep0.RxTx[4] )
	clr	a
	cjne	a,(_Ep0 + 0x0007),00105$
;	usb.c:278: { case 0:  if ( Ep0.RxTx[2] > 0 )          // For Interface1 ( HID )
	mov	a,(_Ep0 + 0x0005)
	jz	00103$
;	usb.c:279: USB[EPCON] |= ( RXSTL | TXSTL );
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
	ret
00103$:
;	usb.c:281: USB[TXCNT] = 0;
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:282: break;
;	usb.c:283: default: USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00105$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:285: }
;	usb.c:286: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Get_Interface'
;------------------------------------------------------------
;	usb.c:289: void USB_Get_Interface( void )
;	-----------------------------------------
;	 function USB_Get_Interface
;	-----------------------------------------
_USB_Get_Interface:
;	usb.c:290: { Ep0.All = 1;
	mov	((_Ep0 + 0x0010) + 0),#0x01
;	usb.c:291: switch( Ep0.RxTx[4] )
	clr	a
	mov	((_Ep0 + 0x0010) + 1),a
	cjne	a,(_Ep0 + 0x0007),00102$
;	usb.c:292: { case 0:  Ep0.RxTx[0] = 0;                // For Interface1 ( HID )
	mov	(_Ep0 + 0x0003),#0x00
;	usb.c:293: break;
;	usb.c:294: default: USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00102$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:296: }
;	usb.c:297: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_CtrlRd'
;------------------------------------------------------------
;BLen                      Allocated to registers r5 
;------------------------------------------------------------
;	usb.c:300: void USB_CtrlRd( void )                          // Host In , USB Out ( Only for EP0 )
;	-----------------------------------------
;	 function USB_CtrlRd
;	-----------------------------------------
_USB_CtrlRd:
;	usb.c:304: if ( Ep0.Stage == DATASTAGE )                // In DATASTAGE we should move Data to TXFIFO
	mov	a,#0x5a
	cjne	a,(_Ep0 + 0x0002),00109$
;	usb.c:305: { if ( Ep0.All > Ep0.Unit )
	mov	r6,((_Ep0 + 0x0010) + 0)
	mov	r7,((_Ep0 + 0x0010) + 1)
	mov	r5,(_Ep0 + 0x000f)
	mov	ar3,r5
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00102$
;	usb.c:306: BLen = Ep0.Unit;
	sjmp	00103$
00102$:
;	usb.c:308: BLen = Ep0.All;
	mov	ar5,r6
00103$:
;	usb.c:309: USB_Wr_FIFO( Ep0.Buf , BLen );
	mov	_USB_Wr_FIFO_PARM_2,r5
	mov	dpl,(_Ep0 + 0x000b)
	mov	dph,((_Ep0 + 0x000b) + 1)
	mov	b,((_Ep0 + 0x000b) + 2)
	push	ar5
	lcall	_USB_Wr_FIFO
	pop	ar5
;	usb.c:310: USB[TXCNT] = BLen;                       // Set this byte will Trigger USB to Transmit Data to the Host
	mov	dptr,#0xfff6
	mov	a,r5
	movx	@dptr,a
;	usb.c:311: Ep0.All -= BLen;                         // Calculated the Remain Data size
	mov	ar6,r5
	mov	r7,#0x00
	mov	a,(_Ep0 + 0x0010)
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,((_Ep0 + 0x0010) + 1)
	subb	a,r7
	mov	r7,a
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:312: Ep0.Buf += BLen;                         // Move Buffer Address in Right position
	mov	a,r5
	add	a,(_Ep0 + 0x000b)
	mov	r5,a
	clr	a
	addc	a,((_Ep0 + 0x000b) + 1)
	mov	r7,a
	mov	r6,((_Ep0 + 0x000b) + 2)
	mov	((_Ep0 + 0x000b) + 0),r5
	mov	((_Ep0 + 0x000b) + 1),r7
	mov	((_Ep0 + 0x000b) + 2),r6
	ret
00109$:
;	usb.c:315: { USB[EPCON] |= ( RXSTL | TXSTL );         // In STATUSSTAGE we should STAL Rx/Tx
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:316: if ( Ep0.Stage == SETADDRESS )           // Different from other STATUSSTAGE(importent)
	mov	a,#0x55
	cjne	a,(_Ep0 + 0x0002),00105$
;	usb.c:317: USB[UADDR] = Ep0.Tmp;                  // Set Address
	mov	r7,(_Ep0 + 0x0012)
	mov	dptr,#0xffd8
	mov	a,r7
	movx	@dptr,a
00105$:
;	usb.c:318: if ( Ep0.Stage == DFU_RESET )
	mov	a,#0x44
	cjne	a,(_Ep0 + 0x0002),00111$
;	usb.c:319: { Reboot_Mcu( REBOOT_TO_ISP );
	mov	dpl,#0x68
;	usb.c:322: }
	ljmp	_Reboot_Mcu
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Stardard_Request'
;------------------------------------------------------------
;	usb.c:325: void USB_Stardard_Request( void )
;	-----------------------------------------
;	 function USB_Stardard_Request
;	-----------------------------------------
_USB_Stardard_Request:
;	usb.c:326: { switch( Ep0.RxTx[1] )                        // Request Code
	mov	a,(_Ep0 + 0x0004)
	mov	r7,a
	add	a,#0xff - 0x0c
	jnc	00119$
	ljmp	00111$
00119$:
	mov	a,r7
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00121$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00120$:
	.db	00101$
	.db	00102$
	.db	00111$
	.db	00103$
	.db	00111$
	.db	00104$
	.db	00105$
	.db	00111$
	.db	00106$
	.db	00107$
	.db	00109$
	.db	00108$
	.db	00110$
00121$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00111$>>8
	.db	00103$>>8
	.db	00111$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00111$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00109$>>8
	.db	00108$>>8
	.db	00110$>>8
;	usb.c:327: { case GET_STATUS:        Ep0.Stage = DATASTAGE;
00101$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:328: USB_Get_Status();
	lcall	_USB_Get_Status
;	usb.c:329: USB_CtrlRd();
;	usb.c:330: break;
	ljmp	_USB_CtrlRd
;	usb.c:331: case CLEAR_FRATURE:	Ep0.Stage = STATUSSTAGE;  
00102$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:332: USB_Clear_Feature();
	lcall	_USB_Clear_Feature
;	usb.c:333: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:334: break;
	ret
;	usb.c:335: case SET_FEATURE:       Ep0.Stage = STATUSSTAGE;
00103$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:336: USB_Set_Feature();
	lcall	_USB_Set_Feature
;	usb.c:337: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:338: break;
;	usb.c:339: case SET_ADDRESS:       Ep0.Stage = SETADDRESS;// Different from other STATUSSTAGE
	ret
00104$:
	mov	(_Ep0 + 0x0002),#0x55
;	usb.c:340: Ep0.Tmp = Ep0.RxTx[2];
	mov	r7,(_Ep0 + 0x0005)
	mov	(_Ep0 + 0x0012),r7
;	usb.c:341: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:342: break;
;	usb.c:343: case GET_DESCRIPTOR:    Ep0.Stage = DATASTAGE;
	ret
00105$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:344: USB_Get_Descriptor();
	lcall	_USB_Get_Descriptor
;	usb.c:345: USB_CtrlRd();
;	usb.c:346: break;
;	usb.c:348: case GET_CONFIGURATION: Ep0.Stage = DATASTAGE;
	ljmp	_USB_CtrlRd
00106$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:349: Ep0.RxTx[0] = Ep0.Tmp;// This value get from SET_CONFIGURATION transaction
	mov	r7,(_Ep0 + 0x0012)
	mov	(_Ep0 + 0x0003),r7
;	usb.c:350: Ep0.All = 1;     // Only 1 byte transfer to the host
	mov	((_Ep0 + 0x0010) + 0),#0x01
	mov	((_Ep0 + 0x0010) + 1),#0x00
;	usb.c:351: USB_CtrlRd();
;	usb.c:352: break;
;	usb.c:353: case SET_CONFIGURATION: Ep0.Stage = STATUSSTAGE;
	ljmp	_USB_CtrlRd
00107$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:354: USB_Set_Configuration(); // Will store configuration value to Ep0.Tmp
	lcall	_USB_Set_Configuration
;	usb.c:355: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:356: break;
;	usb.c:357: case SET_INTERFACE:     Ep0.Stage = STATUSSTAGE;
	ret
00108$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:358: USB_Set_Interface();
;	usb.c:359: break;
;	usb.c:360: case GET_INTERFACE:     Ep0.Stage = DATASTAGE;
	ljmp	_USB_Set_Interface
00109$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:361: USB_Get_Interface();
	lcall	_USB_Get_Interface
;	usb.c:362: USB_CtrlRd();
;	usb.c:363: break;
;	usb.c:364: case SYNCH_FRAME:       Ep0.Stage = STATUSSTAGE;
	ljmp	_USB_CtrlRd
00110$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:365: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:366: Ep0.All = 0;
	mov	((_Ep0 + 0x0010) + 0),a
	mov	((_Ep0 + 0x0010) + 1),a
;	usb.c:367: break;
;	usb.c:368: default:                USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00111$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:370: }
;	usb.c:371: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Class_Request'
;------------------------------------------------------------
;	usb.c:374: void USB_Class_Request( void )
;	-----------------------------------------
;	 function USB_Class_Request
;	-----------------------------------------
_USB_Class_Request:
;	usb.c:375: { switch( Ep0.RxTx[1] )                        // Request Code
	mov	r7,(_Ep0 + 0x0004)
	cjne	r7,#0x01,00135$
	sjmp	00103$
00135$:
	cjne	r7,#0x02,00136$
	sjmp	00101$
00136$:
	cjne	r7,#0x03,00137$
	sjmp	00102$
00137$:
	cjne	r7,#0x09,00138$
	sjmp	00106$
00138$:
	cjne	r7,#0x0a,00139$
	sjmp	00104$
00139$:
;	usb.c:376: { case GET_IDLE:     Ep0.Stage = DATASTAGE;
	cjne	r7,#0x0b,00107$
	sjmp	00105$
00101$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:377: Ep0.RxTx[0] = IdleRate;
	mov	(_Ep0 + 0x0003),_IdleRate
;	usb.c:378: Ep0.All = 1;          // Only 1 byte transfer to the host
	mov	((_Ep0 + 0x0010) + 0),#0x01
	mov	((_Ep0 + 0x0010) + 1),#0x00
;	usb.c:379: USB_CtrlRd();
;	usb.c:380: break;
;	usb.c:381: case GET_PROTOCOL: Ep0.Stage = DATASTAGE;
	ljmp	_USB_CtrlRd
00102$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:382: Ep0.RxTx[0] = Protocol;
	mov	(_Ep0 + 0x0003),_Protocol
;	usb.c:383: Ep0.All = 1;          // Only 1 byte transfer to the host
	mov	((_Ep0 + 0x0010) + 0),#0x01
	mov	((_Ep0 + 0x0010) + 1),#0x00
;	usb.c:384: USB_CtrlRd();
;	usb.c:385: break;
;	usb.c:386: case GET_REPORT:   Ep0.Stage = DATASTAGE;
	ljmp	_USB_CtrlRd
00103$:
	mov	(_Ep0 + 0x0002),#0x5a
;	usb.c:387: Ep0.RxTx[0] = LED_STATUS;
	mov	(_Ep0 + 0x0003),_LED_STATUS
;	usb.c:388: Ep0.All = 1;          // Only 1 byte transfer to the host
	mov	((_Ep0 + 0x0010) + 0),#0x01
	mov	((_Ep0 + 0x0010) + 1),#0x00
;	usb.c:389: USB_CtrlRd();
;	usb.c:390: break;
;	usb.c:391: case SET_IDLE:     Ep0.Stage = STATUSSTAGE;
	ljmp	_USB_CtrlRd
00104$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:392: IdleRate = Ep0.RxTx[3];
	mov	_IdleRate,(_Ep0 + 0x0006)
;	usb.c:393: USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:394: break;
;	usb.c:395: case SET_PROTOCOL: Ep0.Stage = STATUSSTAGE;
	ret
00105$:
	mov	(_Ep0 + 0x0002),#0xa5
;	usb.c:396: Protocol = Ep0.RxTx[2];
	mov	_Protocol,(_Ep0 + 0x0005)
;	usb.c:397: USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
	mov	dptr,#0xfff6
	clr	a
	movx	@dptr,a
;	usb.c:398: break;
;	usb.c:399: case SET_REPORT:   Ep0.Stage = DFU_STAGE;
	ret
00106$:
	mov	(_Ep0 + 0x0002),#0x33
;	usb.c:400: Ep0.All = Ep0.RxTx[7];
	mov	r6,(_Ep0 + 0x000a)
	mov	r7,#0x00
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:401: Ep0.All <<= 8;
	mov	ar7,r6
	mov	r6,#0x00
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:402: Ep0.All += Ep0.RxTx[6];
	mov	r4,(_Ep0 + 0x0009)
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	((_Ep0 + 0x0010) + 0),r6
	mov	((_Ep0 + 0x0010) + 1),r7
;	usb.c:403: break;
;	usb.c:404: default:           USB[EPCON] |= ( RXSTL | TXSTL );
	ret
00107$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	movx	@dptr,a
;	usb.c:406: }
;	usb.c:407: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_CtrlWr'
;------------------------------------------------------------
;	usb.c:410: void USB_CtrlWr( void )                          // Host Out , USB In ( Only for EPO )
;	-----------------------------------------
;	 function USB_CtrlWr
;	-----------------------------------------
_USB_CtrlWr:
;	usb.c:411: { Ep0.Buf = Ep0.RxTx;                          // Move Buffer address to RxTx[8] array , Use for USB_CtrlRd();
	mov	((_Ep0 + 0x000b) + 0),#(_Ep0 + 0x0003)
	mov	((_Ep0 + 0x000b) + 1),#((_Ep0 + 0x0003) >> 8)
	mov	((_Ep0 + 0x000b) + 2),#0x40
;	usb.c:412: USB_Ep0_FIFO();                              // Move Rx Data to RxTxBuf buffer
	lcall	_USB_Ep0_FIFO
;	usb.c:413: if ( Ep0.Stage == SETUPSTAGE )               // if Setup Transection will set Ep0.All = 8
	mov	a,#0xf0
	cjne	a,(_Ep0 + 0x0002),00107$
;	usb.c:414: {	Ep0.All = 0;
	clr	a
	mov	((_Ep0 + 0x0010) + 0),a
	mov	((_Ep0 + 0x0010) + 1),a
;	usb.c:415: switch( Ep0.RxTx[0] & 0x60 )             // Request Type
	mov	r6,(_Ep0 + 0x0003)
	anl	ar6,#0x60
	mov	r7,#0x00
	cjne	r6,#0x00,00123$
	cjne	r7,#0x00,00123$
	sjmp	00101$
00123$:
;	usb.c:416: { case STANDARD_REQUEST: USB_Stardard_Request();
	cjne	r6,#0x20,00103$
	cjne	r7,#0x00,00103$
	sjmp	00102$
00101$:
;	usb.c:417: break;
;	usb.c:418: case CLASS_REQUEST:    USB_Class_Request();
	ljmp	_USB_Stardard_Request
00102$:
;	usb.c:419: break;
;	usb.c:420: default:               USB[EPCON] |= ( RXSTL | TXSTL );
	ljmp	_USB_Class_Request
00103$:
	mov	dptr,#0xffe1
	movx	a,@dptr
	orl	a,#0xc0
	mov	r7,a
	movx	@dptr,a
;	usb.c:422: }
00107$:
;	usb.c:424: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Set_TxStatus'
;------------------------------------------------------------
;Flag                      Allocated to registers r7 
;Status                    Allocated to registers 
;------------------------------------------------------------
;	usb.c:427: void USB_Set_TxStatus( BYTE Flag )
;	-----------------------------------------
;	 function USB_Set_TxStatus
;	-----------------------------------------
_USB_Set_TxStatus:
	mov	r7,dpl
;	usb.c:431: Status = USB[TXCON];
	mov	dptr,#0xfff4
	movx	a,@dptr
	mov	r6,a
;	usb.c:432: Status &= 0x0F;                              // Reserve Low nibble
	mov	a,#0x0f
	anl	a,r6
;	usb.c:433: Status |= Flag;
	orl	ar7,a
;	usb.c:434: USB[TXCON] = Status;                         // Clear Tx FIFO
	mov	dptr,#0xfff4
	mov	a,r7
	movx	@dptr,a
;	usb.c:435: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Int'
;------------------------------------------------------------
;Status                    Allocated to registers 
;------------------------------------------------------------
;	usb.c:439: void USB_Int( void )
;	-----------------------------------------
;	 function USB_Int
;	-----------------------------------------
_USB_Int:
;	usb.c:443: Status = USB[UPCON];                         // Status in Power Control Register
	mov	dptr,#0xffc9
	movx	a,@dptr
;	usb.c:445: if ( Status & 0x0F )                         // Into Power Control mode
	mov	r7,a
	anl	a,#0x0f
	jnz	00200$
	ljmp	00131$
00200$:
;	usb.c:446: { if ( Status & USUS )                     // Suspend mode
	mov	a,r7
	jnb	acc.0,00118$
;	usb.c:447: { Status &= 0xF0;
	mov	a,#0xf0
	anl	a,r7
;	usb.c:448: USB[UPCON] = ( Status | USUS );      // Write "1" to Clear this Flag
	orl	a,#0x01
;	usb.c:450: Status = USB[UPCON];                 // Status in Power Control Register
	mov	dptr,#0xffc9
	movx	@dptr,a
;	usb.c:451: if (( Status & 0x0F ) == 0x00 )      // Into Power Control mode
	anl	a,#0x0f
	jz	00203$
	ret
00203$:
;	usb.c:452: { KB_LED_Off();                    // Set all LED Off
	lcall	_KB_LED_Off
;	usb.c:454: if ( Ep0.RWEN == SET )
	mov	a,#0x01
	cjne	a,_Ep0,00102$
;	usb.c:455: { P1 = 0x00;                   // Set scan out line to low
	mov	_P1,#0x00
;	usb.c:456: P2 = 0x00;                   // mean for wakeup function
	mov	_P2,#0x00
;	usb.c:457: P3 &= 0xE7;                  // P3.3 / P3.4 ( scan out line )
	anl	_P3,#0xe7
;	usb.c:459: KBMASK = 0xFF;               // Will Enable KP Interrupt
	mov	_KBMASK,#0xff
00102$:
;	usb.c:462: PCON |= 0x02;                    // Set CPU(8051) into PowerDown mode
	orl	_PCON,#0x02
;	usb.c:464: Delay_Xms( 1 );
	mov	dpl,#0x01
	lcall	_Delay_Xms
;	usb.c:466: if ( Ep0.RWEN == SET )
	mov	a,#0x01
	cjne	a,_Ep0,00107$
;	usb.c:467: { if ( KBMASK == 0x00 )        // Clear by KP ISR in " MCU.C "
	mov	a,_KBMASK
	jnz	00104$
;	usb.c:468: USB[UPCON] |= URWU;        // Set USB into Wake-up mode
	mov	dptr,#0xffc9
	movx	a,@dptr
	orl	a,#0x20
	mov	r6,a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	usb.c:470: KBMASK = 0x00;             // Will Disable KP Interrupt
	mov	_KBMASK,#0x00
00105$:
;	usb.c:471: P1 = 0xFF;
	mov	_P1,#0xff
;	usb.c:472: P2 = 0xFF;
	mov	_P2,#0xff
;	usb.c:473: P3 |= 0x18;
	orl	_P3,#0x18
00107$:
;	usb.c:476: if ( Ep0.EmuOk == SET )          // Set USB LED ON after " SET_CONFIGURATION "
	mov	a,#0x01
	cjne	a,(_Ep0 + 0x0001),00209$
	sjmp	00210$
00209$:
	ret
00210$:
;	usb.c:477: KB_LED_Status();               // Restore LED status
	ljmp	_KB_LED_Status
00118$:
;	usb.c:481: { if ( Status & URST )                 // Reset mode
	mov	a,r7
	jnb	acc.2,00115$
;	usb.c:482: {	Status &= 0xF0;
	mov	a,#0xf0
	anl	a,r7
;	usb.c:483: USB[UPCON] = ( Status | URST );  // Write "1" to Clear this Flag
	orl	a,#0x04
	mov	dptr,#0xffc9
	movx	@dptr,a
;	usb.c:484: initKeyboard();
	lcall	_initKeyboard
;	usb.c:485: Initial_USB();
	ljmp	_Initial_USB
00115$:
;	usb.c:487: else if ( Status & URSM )            // Resume mode  
	mov	a,r7
	jnb	acc.1,00133$
;	usb.c:488: { Status &= 0xF0;
	mov	a,#0xf0
	anl	a,r7
;	usb.c:489: USB[UPCON] = ( Status | URSM );  // Write "1" to Clear this Flag
	orl	a,#0x02
	mov	dptr,#0xffc9
	movx	@dptr,a
	ret
00131$:
;	usb.c:494: { Status = USB[UIFLG];
	mov	dptr,#0xffdb
	movx	a,@dptr
;	usb.c:495: if ( Status & UTXD1 )                    // EP1 Transmit
	mov	r7,a
	jnb	acc.2,00128$
;	usb.c:496: { USB[UIFLG] = UTXD1;                  // Write "1" to Clear this Flag
	mov	dptr,#0xffdb
	mov	a,#0x04
	movx	@dptr,a
;	usb.c:497: USB[EPINDEX] = EP1;
	mov	dptr,#0xfff1
	mov	a,#0x01
	movx	@dptr,a
;	usb.c:498: USB_Set_TxStatus( TXFFRC );
	mov	dpl,#0x10
	lcall	_USB_Set_TxStatus
;	usb.c:499: if ( TxBusy == SET )
	mov	a,#0x01
	cjne	a,_TxBusy,00133$
;	usb.c:500: TxBusy = CLR;
	mov	_TxBusy,#0x00
	ret
00128$:
;	usb.c:502: else if ( Status & URXD0 )               // EP0 Receive
	mov	a,r7
	jnb	acc.1,00125$
;	usb.c:503: { USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
	mov	dptr,#0xffdb
	mov	a,#0x02
	movx	@dptr,a
;	usb.c:504: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
;	usb.c:505: USB_CtrlWr();                        // USB Standard Device Request(maybe)
	ljmp	_USB_CtrlWr
00125$:
;	usb.c:507: else if ( Status & UTXD0 )               // EP0 Transmit
	mov	a,r7
	jnb	acc.0,00133$
;	usb.c:508: { USB[UIFLG] = UTXD0;                  // Write "1" to Clear this Flag
	mov	dptr,#0xffdb
	mov	a,#0x01
	movx	@dptr,a
;	usb.c:509: USB[EPINDEX] = EP0;
	mov	dptr,#0xfff1
	clr	a
	movx	@dptr,a
;	usb.c:510: USB_CtrlRd();
;	usb.c:513: }
	ljmp	_USB_CtrlRd
00133$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_KB_HID_REPORT:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x03	; 3
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x03	; 3
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x06	; 6
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0xb1	; 177
	.db #0x00	; 0
	.db #0xc0	; 192
_DEVICE_DESCRIPTOR:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x6a	; 106	'j'
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
_CONGFIGURATION_DESCRIPTOR:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x32	; 50	'2'
_KB_INTERFACE_DESCRIPTOR:
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
_KB_HID_DESCRIPTOR:
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x49	; 73	'I'
	.db #0x00	; 0
_KB_INTERRUPT_IN_ENDPOINT_DESCRIPTOR:
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0a	; 10
_LANGUAGEID_DESCRIPTOR:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_MANUFACTURER_DESCRIPTOR:
	.db #0x26	; 38
	.db #0x03	; 3
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
_PRODUCT_DESCRIPTOR:
	.db #0x44	; 68	'D'
	.db #0x03	; 3
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x00	; 0
_SERIALNUMBER_DESCRIPTOR:
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
