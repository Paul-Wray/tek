;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW32)
;--------------------------------------------------------
	.module layers
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _numLayer
	.globl _fnLayer
	.globl _topLayer
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
_topLayer:
	.byte #0x29, #0x00	; 41
	.byte #0x3a, #0x00	; 58
	.byte #0x3b, #0x00	; 59
	.byte #0x3c, #0x00	; 60
	.byte #0x3d, #0x00	; 61
	.byte #0x3e, #0x00	; 62
	.byte #0x3f, #0x00	; 63
	.byte #0x40, #0x00	; 64
	.byte #0x41, #0x00	; 65
	.byte #0x42, #0x00	; 66
	.byte #0x43, #0x00	; 67
	.byte #0x44, #0x00	; 68
	.byte #0x45, #0x00	; 69
	.byte #0x4c, #0x00	; 76
	.byte #0x39, #0x00	; 57
	.byte #0x01, #0x80	; 32769
	.byte #0x02, #0x80	; 32770
	.byte #0x2b, #0x00	; 43
	.byte #0x35, #0x00	; 53
	.byte #0x1e, #0x00	; 30
	.byte #0x1f, #0x00	; 31
	.byte #0x20, #0x00	; 32
	.byte #0x21, #0x00	; 33
	.byte #0x22, #0x00	; 34
	.byte #0x2b, #0x04	; 1067
	.byte #0x23, #0x00	; 35
	.byte #0x24, #0x00	; 36
	.byte #0x25, #0x00	; 37
	.byte #0x26, #0x00	; 38
	.byte #0x27, #0x00	; 39
	.byte #0x2e, #0x00	; 46
	.byte #0x2a, #0x00	; 42
	.byte #0x2f, #0x00	; 47
	.byte #0x30, #0x00	; 48
	.byte #0x14, #0x00	; 20
	.byte #0x1a, #0x00	; 26
	.byte #0x08, #0x00	; 8
	.byte #0x15, #0x00	; 21
	.byte #0x17, #0x00	; 23
	.byte #0x4c, #0x00	; 76
	.byte #0x1c, #0x00	; 28
	.byte #0x18, #0x00	; 24
	.byte #0x0c, #0x00	; 12
	.byte #0x12, #0x00	; 18
	.byte #0x13, #0x00	; 19
	.byte #0x34, #0x02	; 564
	.byte #0x31, #0x00	; 49
	.byte #0xe1, #0x83	; 33761
	.byte #0x04, #0x00	; 4
	.byte #0x16, #0x00	; 22
	.byte #0x07, #0x00	; 7
	.byte #0x09, #0x00	; 9
	.byte #0x0a, #0x00	; 10
	.byte #0x01, #0x80	; 32769
	.byte #0x0b, #0x00	; 11
	.byte #0x0d, #0x00	; 13
	.byte #0x0e, #0x00	; 14
	.byte #0x0f, #0x00	; 15
	.byte #0x33, #0x00	; 51
	.byte #0xe1, #0x82	; 33505
	.byte #0xe0, #0x80	; 32992
	.byte #0x1d, #0x00	; 29
	.byte #0x1b, #0x00	; 27
	.byte #0x06, #0x00	; 6
	.byte #0x19, #0x00	; 25
	.byte #0x05, #0x00	; 5
	.byte #0x02, #0x80	; 32770
	.byte #0x11, #0x00	; 17
	.byte #0x10, #0x00	; 16
	.byte #0x36, #0x00	; 54
	.byte #0x37, #0x00	; 55
	.byte #0x38, #0x00	; 56
	.byte #0xe5, #0x84	; 34021
	.byte #0xe0, #0x80	; 32992
	.byte #0xe2, #0x80	; 32994
	.byte #0x4a, #0x00	; 74
	.byte #0x4b, #0x00	; 75
	.byte #0x4e, #0x00	; 78
	.byte #0x4d, #0x00	; 77
	.byte #0x02, #0x80	; 32770
	.byte #0x02, #0x80	; 32770
	.byte #0x01, #0x81	; 33025
	.byte #0x50, #0x00	; 80
	.byte #0x52, #0x00	; 82
	.byte #0x51, #0x00	; 81
	.byte #0x4f, #0x00	; 79
	.byte #0xe6, #0x80	; 32998
	.byte #0x65, #0x00	; 101
_fnLayer:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x49, #0x00	; 73
	.byte #0x00, #0x00	; 0
	.byte #0x46, #0x00	; 70
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x48, #0x00	; 72
	.byte #0x48, #0x00	; 72
	.byte #0x47, #0x00	; 71
	.byte #0x48, #0x00	; 72
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x4a, #0x02	; 586
	.byte #0x52, #0x02	; 594
	.byte #0x4d, #0x02	; 589
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x4a, #0x00	; 74
	.byte #0x52, #0x00	; 82
	.byte #0x4d, #0x00	; 77
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x2b, #0x00	; 43
	.byte #0x00, #0x00	; 0
	.byte #0x50, #0x02	; 592
	.byte #0x51, #0x02	; 593
	.byte #0x4f, #0x02	; 591
	.byte #0x4e, #0x00	; 78
	.byte #0x00, #0x00	; 0
	.byte #0x2b, #0x00	; 43
	.byte #0x50, #0x00	; 80
	.byte #0x51, #0x00	; 81
	.byte #0x4f, #0x00	; 79
	.byte #0x2a, #0x00	; 42
	.byte #0x28, #0x00	; 40
	.byte #0x00, #0x00	; 0
	.byte #0x1d, #0x01	; 285
	.byte #0x1b, #0x01	; 283
	.byte #0x06, #0x01	; 262
	.byte #0x19, #0x01	; 281
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x2a, #0x00	; 42
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
_numLayer:
	.byte #0xc0, #0x00	; 192
	.byte #0xc1, #0x00	; 193
	.byte #0xc2, #0x00	; 194
	.byte #0xc3, #0x00	; 195
	.byte #0xc4, #0x00	; 196
	.byte #0xc5, #0x00	; 197
	.byte #0xc6, #0x00	; 198
	.byte #0xc7, #0x00	; 199
	.byte #0xc8, #0x00	; 200
	.byte #0xc9, #0x00	; 201
	.byte #0xca, #0x00	; 202
	.byte #0xcb, #0x00	; 203
	.byte #0xcc, #0x00	; 204
	.byte #0xcd, #0x00	; 205
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x2a, #0x00	; 42
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x38, #0x02	; 568
	.byte #0x34, #0x02	; 564
	.byte #0x34, #0x00	; 52
	.byte #0x2e, #0x00	; 46
	.byte #0x2d, #0x00	; 45
	.byte #0x00, #0x00	; 0
	.byte #0x22, #0x02	; 546
	.byte #0x24, #0x00	; 36
	.byte #0x25, #0x00	; 37
	.byte #0x26, #0x00	; 38
	.byte #0x2d, #0x00	; 45
	.byte #0x2e, #0x02	; 558
	.byte #0x00, #0x00	; 0
	.byte #0x2b, #0x00	; 43
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x2f, #0x02	; 559
	.byte #0x26, #0x02	; 550
	.byte #0x2f, #0x00	; 47
	.byte #0x00, #0x00	; 0
	.byte #0x2b, #0x00	; 43
	.byte #0x21, #0x00	; 33
	.byte #0x22, #0x00	; 34
	.byte #0x23, #0x00	; 35
	.byte #0x25, #0x02	; 549
	.byte #0x28, #0x00	; 40
	.byte #0x00, #0x00	; 0
	.byte #0x24, #0x02	; 548
	.byte #0x20, #0x02	; 544
	.byte #0x21, #0x02	; 545
	.byte #0x2d, #0x00	; 45
	.byte #0x2d, #0x02	; 557
	.byte #0x00, #0x00	; 0
	.byte #0x37, #0x00	; 55
	.byte #0x1e, #0x00	; 30
	.byte #0x1f, #0x00	; 31
	.byte #0x20, #0x00	; 32
	.byte #0x38, #0x00	; 56
	.byte #0x2b, #0x00	; 43
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x27, #0x00	; 39
	.byte #0x2b, #0x00	; 43
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
