                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Initial_Mcu
                                     13 	.globl _INT_TIMER0
                                     14 	.globl _INT_KB
                                     15 	.globl _INT_USB
                                     16 	.globl _Reboot_Mcu
                                     17 	.globl _Delay_Xms
                                     18 	.globl _idle
                                     19 	.globl _scan
                                     20 	.globl _initKeyboard
                                     21 	.globl _Initial_USB
                                     22 	.globl _USB_Int
                                     23 	.globl _Initial_DFU
                                     24 	.globl _INT2
                                     25 	.globl _INT3
                                     26 	.globl _RXD
                                     27 	.globl _TXD
                                     28 	.globl _INT0
                                     29 	.globl _INT1
                                     30 	.globl _T0
                                     31 	.globl _T1
                                     32 	.globl _WR
                                     33 	.globl _RD
                                     34 	.globl _I2C_SCL
                                     35 	.globl _I2C_SDA
                                     36 	.globl _SPI_SS
                                     37 	.globl _SPI_MOSI
                                     38 	.globl _SPI_MISO
                                     39 	.globl _SPI_CLK
                                     40 	.globl _T2
                                     41 	.globl _T2EX
                                     42 	.globl _P40
                                     43 	.globl _P41
                                     44 	.globl _P42
                                     45 	.globl _P43
                                     46 	.globl _P30
                                     47 	.globl _P31
                                     48 	.globl _P32
                                     49 	.globl _P33
                                     50 	.globl _P34
                                     51 	.globl _P35
                                     52 	.globl _P36
                                     53 	.globl _P37
                                     54 	.globl _P20
                                     55 	.globl _P21
                                     56 	.globl _P22
                                     57 	.globl _P23
                                     58 	.globl _P24
                                     59 	.globl _P25
                                     60 	.globl _P26
                                     61 	.globl _P27
                                     62 	.globl _P10
                                     63 	.globl _P11
                                     64 	.globl _P12
                                     65 	.globl _P13
                                     66 	.globl _P14
                                     67 	.globl _P15
                                     68 	.globl _P16
                                     69 	.globl _P17
                                     70 	.globl _P00
                                     71 	.globl _P01
                                     72 	.globl _P02
                                     73 	.globl _P03
                                     74 	.globl _P04
                                     75 	.globl _P05
                                     76 	.globl _P06
                                     77 	.globl _P07
                                     78 	.globl _CR0
                                     79 	.globl _CR1
                                     80 	.globl _AA
                                     81 	.globl _SI
                                     82 	.globl _STO
                                     83 	.globl _STA
                                     84 	.globl _ENSI
                                     85 	.globl _CR2
                                     86 	.globl _IT2
                                     87 	.globl _IE2
                                     88 	.globl _EX2
                                     89 	.globl _IL2
                                     90 	.globl _IT3
                                     91 	.globl _IE3
                                     92 	.globl _EX3
                                     93 	.globl _IL3
                                     94 	.globl _CP_RL2
                                     95 	.globl _C_T2
                                     96 	.globl _TR2
                                     97 	.globl _EXEN2
                                     98 	.globl _TCLK
                                     99 	.globl _RCLK
                                    100 	.globl _EXF2
                                    101 	.globl _TF2
                                    102 	.globl _IT0
                                    103 	.globl _IE0
                                    104 	.globl _IT1
                                    105 	.globl _IE1
                                    106 	.globl _TR0
                                    107 	.globl _TF0
                                    108 	.globl _TR1
                                    109 	.globl _TF1
                                    110 	.globl _FE
                                    111 	.globl _RI
                                    112 	.globl _TI
                                    113 	.globl _RB8
                                    114 	.globl _TB8
                                    115 	.globl _REN
                                    116 	.globl _SM2
                                    117 	.globl _SM1
                                    118 	.globl _SM0
                                    119 	.globl _PX0
                                    120 	.globl _PT0
                                    121 	.globl _PX1
                                    122 	.globl _PT1
                                    123 	.globl _PS
                                    124 	.globl _PT2
                                    125 	.globl _PX2
                                    126 	.globl _PX3
                                    127 	.globl _EX0
                                    128 	.globl _ET0
                                    129 	.globl _EX1
                                    130 	.globl _ET1
                                    131 	.globl _ES
                                    132 	.globl _ET2
                                    133 	.globl _EA
                                    134 	.globl _P
                                    135 	.globl _OV
                                    136 	.globl _RS0
                                    137 	.globl _RS1
                                    138 	.globl _F0
                                    139 	.globl _AC
                                    140 	.globl _CY
                                    141 	.globl _SCMD
                                    142 	.globl _IFADRL
                                    143 	.globl _IFADRH
                                    144 	.globl _IFD
                                    145 	.globl _ISPTME
                                    146 	.globl _ISPCR
                                    147 	.globl _WDTCR
                                    148 	.globl _AUXR2
                                    149 	.globl _AUXR
                                    150 	.globl _CKCON2
                                    151 	.globl _CKCON
                                    152 	.globl _PCON
                                    153 	.globl _SISTA
                                    154 	.globl _SIDAT
                                    155 	.globl _SIADR
                                    156 	.globl _SICON
                                    157 	.globl _SPSTAT
                                    158 	.globl _SPDAT
                                    159 	.globl _SPCTL
                                    160 	.globl _KBMASK
                                    161 	.globl _KBPATN
                                    162 	.globl _KBCON
                                    163 	.globl _SADEN
                                    164 	.globl _SADDR
                                    165 	.globl _SBUF
                                    166 	.globl _SCON
                                    167 	.globl _TH2
                                    168 	.globl _TL2
                                    169 	.globl _TH1
                                    170 	.globl _TL1
                                    171 	.globl _TH0
                                    172 	.globl _TL0
                                    173 	.globl _RCAP2H
                                    174 	.globl _RCAP2L
                                    175 	.globl _T2MOD
                                    176 	.globl _T2CON
                                    177 	.globl _TMOD
                                    178 	.globl _TCON
                                    179 	.globl _P4M1
                                    180 	.globl _P4M0
                                    181 	.globl _P3M1
                                    182 	.globl _P3M0
                                    183 	.globl _P2M1
                                    184 	.globl _P2M0
                                    185 	.globl _P1M1
                                    186 	.globl _P1M0
                                    187 	.globl _P0M1
                                    188 	.globl _P0M0
                                    189 	.globl _P4
                                    190 	.globl _P3
                                    191 	.globl _P2
                                    192 	.globl _P1
                                    193 	.globl _P0
                                    194 	.globl _IP
                                    195 	.globl _XICON
                                    196 	.globl _AUXIP
                                    197 	.globl _AUXIE
                                    198 	.globl _IE
                                    199 	.globl _PSW
                                    200 	.globl _DPH
                                    201 	.globl _DPL
                                    202 	.globl _SP
                                    203 	.globl _B
                                    204 	.globl _ACC
                                    205 	.globl _Wdt
                                    206 	.globl _T0Cnt
                                    207 ;--------------------------------------------------------
                                    208 ; special function registers
                                    209 ;--------------------------------------------------------
                                    210 	.area RSEG    (ABS,DATA)
      000000                        211 	.org 0x0000
                           0000E0   212 _ACC	=	0x00e0
                           0000F0   213 _B	=	0x00f0
                           000081   214 _SP	=	0x0081
                           000082   215 _DPL	=	0x0082
                           000083   216 _DPH	=	0x0083
                           0000D0   217 _PSW	=	0x00d0
                           0000A8   218 _IE	=	0x00a8
                           0000AD   219 _AUXIE	=	0x00ad
                           0000AE   220 _AUXIP	=	0x00ae
                           0000C0   221 _XICON	=	0x00c0
                           0000B8   222 _IP	=	0x00b8
                           000080   223 _P0	=	0x0080
                           000090   224 _P1	=	0x0090
                           0000A0   225 _P2	=	0x00a0
                           0000B0   226 _P3	=	0x00b0
                           0000E8   227 _P4	=	0x00e8
                           000093   228 _P0M0	=	0x0093
                           000094   229 _P0M1	=	0x0094
                           000091   230 _P1M0	=	0x0091
                           000092   231 _P1M1	=	0x0092
                           000095   232 _P2M0	=	0x0095
                           000096   233 _P2M1	=	0x0096
                           0000B1   234 _P3M0	=	0x00b1
                           0000B2   235 _P3M1	=	0x00b2
                           0000B3   236 _P4M0	=	0x00b3
                           0000B4   237 _P4M1	=	0x00b4
                           000088   238 _TCON	=	0x0088
                           000089   239 _TMOD	=	0x0089
                           0000C8   240 _T2CON	=	0x00c8
                           0000C9   241 _T2MOD	=	0x00c9
                           0000CA   242 _RCAP2L	=	0x00ca
                           0000CB   243 _RCAP2H	=	0x00cb
                           00008A   244 _TL0	=	0x008a
                           00008C   245 _TH0	=	0x008c
                           00008B   246 _TL1	=	0x008b
                           00008D   247 _TH1	=	0x008d
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           000098   250 _SCON	=	0x0098
                           000099   251 _SBUF	=	0x0099
                           0000A9   252 _SADDR	=	0x00a9
                           0000B9   253 _SADEN	=	0x00b9
                           0000D6   254 _KBCON	=	0x00d6
                           0000D5   255 _KBPATN	=	0x00d5
                           0000D7   256 _KBMASK	=	0x00d7
                           000085   257 _SPCTL	=	0x0085
                           000086   258 _SPDAT	=	0x0086
                           000084   259 _SPSTAT	=	0x0084
                           0000F8   260 _SICON	=	0x00f8
                           0000D1   261 _SIADR	=	0x00d1
                           0000D2   262 _SIDAT	=	0x00d2
                           0000D3   263 _SISTA	=	0x00d3
                           000087   264 _PCON	=	0x0087
                           0000C7   265 _CKCON	=	0x00c7
                           0000BF   266 _CKCON2	=	0x00bf
                           00008E   267 _AUXR	=	0x008e
                           0000A6   268 _AUXR2	=	0x00a6
                           0000E1   269 _WDTCR	=	0x00e1
                           0000E7   270 _ISPCR	=	0x00e7
                           0000E5   271 _ISPTME	=	0x00e5
                           0000E2   272 _IFD	=	0x00e2
                           0000E3   273 _IFADRH	=	0x00e3
                           0000E4   274 _IFADRL	=	0x00e4
                           0000E6   275 _SCMD	=	0x00e6
                                    276 ;--------------------------------------------------------
                                    277 ; special function bits
                                    278 ;--------------------------------------------------------
                                    279 	.area RSEG    (ABS,DATA)
      000000                        280 	.org 0x0000
                           0000D7   281 _CY	=	0x00d7
                           0000D6   282 _AC	=	0x00d6
                           0000D5   283 _F0	=	0x00d5
                           0000D4   284 _RS1	=	0x00d4
                           0000D3   285 _RS0	=	0x00d3
                           0000D2   286 _OV	=	0x00d2
                           0000D0   287 _P	=	0x00d0
                           0000AF   288 _EA	=	0x00af
                           0000AD   289 _ET2	=	0x00ad
                           0000AC   290 _ES	=	0x00ac
                           0000AB   291 _ET1	=	0x00ab
                           0000AA   292 _EX1	=	0x00aa
                           0000A9   293 _ET0	=	0x00a9
                           0000A8   294 _EX0	=	0x00a8
                           0000BF   295 _PX3	=	0x00bf
                           0000BE   296 _PX2	=	0x00be
                           0000BD   297 _PT2	=	0x00bd
                           0000BC   298 _PS	=	0x00bc
                           0000BB   299 _PT1	=	0x00bb
                           0000BA   300 _PX1	=	0x00ba
                           0000B9   301 _PT0	=	0x00b9
                           0000B8   302 _PX0	=	0x00b8
                           00009F   303 _SM0	=	0x009f
                           00009E   304 _SM1	=	0x009e
                           00009D   305 _SM2	=	0x009d
                           00009C   306 _REN	=	0x009c
                           00009B   307 _TB8	=	0x009b
                           00009A   308 _RB8	=	0x009a
                           000099   309 _TI	=	0x0099
                           000098   310 _RI	=	0x0098
                           00009F   311 _FE	=	0x009f
                           00008F   312 _TF1	=	0x008f
                           00008E   313 _TR1	=	0x008e
                           00008D   314 _TF0	=	0x008d
                           00008C   315 _TR0	=	0x008c
                           00008B   316 _IE1	=	0x008b
                           00008A   317 _IT1	=	0x008a
                           000089   318 _IE0	=	0x0089
                           000088   319 _IT0	=	0x0088
                           0000CF   320 _TF2	=	0x00cf
                           0000CE   321 _EXF2	=	0x00ce
                           0000CD   322 _RCLK	=	0x00cd
                           0000CC   323 _TCLK	=	0x00cc
                           0000CB   324 _EXEN2	=	0x00cb
                           0000CA   325 _TR2	=	0x00ca
                           0000C9   326 _C_T2	=	0x00c9
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C7   328 _IL3	=	0x00c7
                           0000C6   329 _EX3	=	0x00c6
                           0000C5   330 _IE3	=	0x00c5
                           0000C4   331 _IT3	=	0x00c4
                           0000C3   332 _IL2	=	0x00c3
                           0000C2   333 _EX2	=	0x00c2
                           0000C1   334 _IE2	=	0x00c1
                           0000C0   335 _IT2	=	0x00c0
                           0000FF   336 _CR2	=	0x00ff
                           0000FE   337 _ENSI	=	0x00fe
                           0000FD   338 _STA	=	0x00fd
                           0000FC   339 _STO	=	0x00fc
                           0000FB   340 _SI	=	0x00fb
                           0000FA   341 _AA	=	0x00fa
                           0000F9   342 _CR1	=	0x00f9
                           0000F8   343 _CR0	=	0x00f8
                           000087   344 _P07	=	0x0087
                           000086   345 _P06	=	0x0086
                           000085   346 _P05	=	0x0085
                           000084   347 _P04	=	0x0084
                           000083   348 _P03	=	0x0083
                           000082   349 _P02	=	0x0082
                           000081   350 _P01	=	0x0081
                           000080   351 _P00	=	0x0080
                           000097   352 _P17	=	0x0097
                           000096   353 _P16	=	0x0096
                           000095   354 _P15	=	0x0095
                           000094   355 _P14	=	0x0094
                           000093   356 _P13	=	0x0093
                           000092   357 _P12	=	0x0092
                           000091   358 _P11	=	0x0091
                           000090   359 _P10	=	0x0090
                           0000A7   360 _P27	=	0x00a7
                           0000A6   361 _P26	=	0x00a6
                           0000A5   362 _P25	=	0x00a5
                           0000A4   363 _P24	=	0x00a4
                           0000A3   364 _P23	=	0x00a3
                           0000A2   365 _P22	=	0x00a2
                           0000A1   366 _P21	=	0x00a1
                           0000A0   367 _P20	=	0x00a0
                           0000B7   368 _P37	=	0x00b7
                           0000B6   369 _P36	=	0x00b6
                           0000B5   370 _P35	=	0x00b5
                           0000B4   371 _P34	=	0x00b4
                           0000B3   372 _P33	=	0x00b3
                           0000B2   373 _P32	=	0x00b2
                           0000B1   374 _P31	=	0x00b1
                           0000B0   375 _P30	=	0x00b0
                           0000EB   376 _P43	=	0x00eb
                           0000EA   377 _P42	=	0x00ea
                           0000E9   378 _P41	=	0x00e9
                           0000E8   379 _P40	=	0x00e8
                           000091   380 _T2EX	=	0x0091
                           000090   381 _T2	=	0x0090
                           0000A7   382 _SPI_CLK	=	0x00a7
                           0000A6   383 _SPI_MISO	=	0x00a6
                           0000A5   384 _SPI_MOSI	=	0x00a5
                           0000A4   385 _SPI_SS	=	0x00a4
                           0000A1   386 _I2C_SDA	=	0x00a1
                           0000A0   387 _I2C_SCL	=	0x00a0
                           0000B7   388 _RD	=	0x00b7
                           0000B6   389 _WR	=	0x00b6
                           0000B5   390 _T1	=	0x00b5
                           0000B4   391 _T0	=	0x00b4
                           0000B3   392 _INT1	=	0x00b3
                           0000B2   393 _INT0	=	0x00b2
                           0000B1   394 _TXD	=	0x00b1
                           0000B0   395 _RXD	=	0x00b0
                           0000B7   396 _INT3	=	0x00b7
                           0000B6   397 _INT2	=	0x00b6
                                    398 ;--------------------------------------------------------
                                    399 ; overlayable register banks
                                    400 ;--------------------------------------------------------
                                    401 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        402 	.ds 8
                                    403 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        404 	.ds 8
                                    405 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        406 	.ds 8
                                    407 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        408 	.ds 8
                                    409 ;--------------------------------------------------------
                                    410 ; overlayable bit register bank
                                    411 ;--------------------------------------------------------
                                    412 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        413 bits:
      000020                        414 	.ds 1
                           008000   415 	b0 = bits[0]
                           008100   416 	b1 = bits[1]
                           008200   417 	b2 = bits[2]
                           008300   418 	b3 = bits[3]
                           008400   419 	b4 = bits[4]
                           008500   420 	b5 = bits[5]
                           008600   421 	b6 = bits[6]
                           008700   422 	b7 = bits[7]
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
      000021                        427 _T0Cnt::
      000021                        428 	.ds 1
      000022                        429 _Wdt::
      000022                        430 	.ds 1
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable items in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 	.area	OSEG    (OVR,DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; Stack segment in internal ram 
                                    437 ;--------------------------------------------------------
                                    438 	.area	SSEG
      000093                        439 __start__stack:
      000093                        440 	.ds	1
                                    441 
                                    442 ;--------------------------------------------------------
                                    443 ; indirectly addressable internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area ISEG    (DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area IABS    (ABS,DATA)
                                    450 	.area IABS    (ABS,DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; bit data
                                    453 ;--------------------------------------------------------
                                    454 	.area BSEG    (BIT)
                                    455 ;--------------------------------------------------------
                                    456 ; paged external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area PSEG    (PAG,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XSEG    (XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; absolute external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XABS    (ABS,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external initialized ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XISEG   (XDATA)
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT0 (CODE)
                                    473 	.area GSINIT1 (CODE)
                                    474 	.area GSINIT2 (CODE)
                                    475 	.area GSINIT3 (CODE)
                                    476 	.area GSINIT4 (CODE)
                                    477 	.area GSINIT5 (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 	.area GSFINAL (CODE)
                                    480 	.area CSEG    (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; interrupt vector 
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
      000000                        485 __interrupt_vect:
      000000 02 00 AF         [24]  486 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  487 	reti
      000004                        488 	.ds	7
      00000B 02 01 86         [24]  489 	ljmp	_INT_TIMER0
      00000E                        490 	.ds	5
      000013 32               [24]  491 	reti
      000014                        492 	.ds	7
      00001B 32               [24]  493 	reti
      00001C                        494 	.ds	7
      000023 32               [24]  495 	reti
      000024                        496 	.ds	7
      00002B 32               [24]  497 	reti
      00002C                        498 	.ds	7
      000033 32               [24]  499 	reti
      000034                        500 	.ds	7
      00003B 32               [24]  501 	reti
      00003C                        502 	.ds	7
      000043 32               [24]  503 	reti
      000044                        504 	.ds	7
      00004B 32               [24]  505 	reti
      00004C                        506 	.ds	7
      000053 32               [24]  507 	reti
      000054                        508 	.ds	7
      00005B 32               [24]  509 	reti
      00005C                        510 	.ds	7
      000063 32               [24]  511 	reti
      000064                        512 	.ds	7
      00006B 02 01 7C         [24]  513 	ljmp	_INT_KB
      00006E                        514 	.ds	5
      000073 32               [24]  515 	reti
      000074                        516 	.ds	7
      00007B 02 01 34         [24]  517 	ljmp	_INT_USB
                                    518 ;--------------------------------------------------------
                                    519 ; global & static initialisations
                                    520 ;--------------------------------------------------------
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.area GSFINAL (CODE)
                                    524 	.area GSINIT  (CODE)
                                    525 	.globl __sdcc_gsinit_startup
                                    526 	.globl __sdcc_program_startup
                                    527 	.globl __start__stack
                                    528 	.globl __mcs51_genXINIT
                                    529 	.globl __mcs51_genXRAMCLEAR
                                    530 	.globl __mcs51_genRAMCLEAR
                                    531 	.area GSFINAL (CODE)
      000111 02 00 7E         [24]  532 	ljmp	__sdcc_program_startup
                                    533 ;--------------------------------------------------------
                                    534 ; Home
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
                                    537 	.area HOME    (CODE)
      00007E                        538 __sdcc_program_startup:
      00007E 02 01 FF         [24]  539 	ljmp	_main
                                    540 ;	return from main will return to caller
                                    541 ;--------------------------------------------------------
                                    542 ; code
                                    543 ;--------------------------------------------------------
                                    544 	.area CSEG    (CODE)
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'idle'
                                    547 ;------------------------------------------------------------
                                    548 ;	main.c:22: void idle() {
                                    549 ;	-----------------------------------------
                                    550 ;	 function idle
                                    551 ;	-----------------------------------------
      000114                        552 _idle:
                           000007   553 	ar7 = 0x07
                           000006   554 	ar6 = 0x06
                           000005   555 	ar5 = 0x05
                           000004   556 	ar4 = 0x04
                           000003   557 	ar3 = 0x03
                           000002   558 	ar2 = 0x02
                           000001   559 	ar1 = 0x01
                           000000   560 	ar0 = 0x00
                                    561 ;	main.c:23: PCON |= 0x01;	
      000114 43 87 01         [24]  562 	orl	_PCON,#0x01
                                    563 ;	main.c:24: }
      000117 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'Delay_Xms'
                                    567 ;------------------------------------------------------------
                                    568 ;X                         Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                                    570 ;	main.c:26: void Delay_Xms( BYTE X ) { 
                                    571 ;	-----------------------------------------
                                    572 ;	 function Delay_Xms
                                    573 ;	-----------------------------------------
      000118                        574 _Delay_Xms:
      000118 AF 82            [24]  575 	mov	r7,dpl
                                    576 ;	main.c:27: TR0 = CLR;                        // Disable Timer0
                                    577 ;	assignBit
      00011A C2 8C            [12]  578 	clr	_TR0
                                    579 ;	main.c:28: T0Cnt = X;                        // X*1ms = Xms
      00011C 8F 21            [24]  580 	mov	_T0Cnt,r7
                                    581 ;	main.c:29: TL0 = T0_1MSL;
      00011E 75 8A 18         [24]  582 	mov	_TL0,#0x18
                                    583 ;	main.c:30: TH0 = T0_1MSH;
      000121 75 8C FC         [24]  584 	mov	_TH0,#0xfc
                                    585 ;	main.c:31: TR0 = SET;                        // Enable Timer0
                                    586 ;	assignBit
      000124 D2 8C            [12]  587 	setb	_TR0
                                    588 ;	main.c:32: while( T0Cnt ) {
      000126                        589 00101$:
      000126 E5 21            [12]  590 	mov	a,_T0Cnt
      000128 60 05            [24]  591 	jz	00104$
                                    592 ;	main.c:33: idle();
      00012A 12 01 14         [24]  593 	lcall	_idle
      00012D 80 F7            [24]  594 	sjmp	00101$
      00012F                        595 00104$:
                                    596 ;	main.c:35: }
      00012F 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'Reboot_Mcu'
                                    600 ;------------------------------------------------------------
                                    601 ;Cmd                       Allocated to registers 
                                    602 ;------------------------------------------------------------
                                    603 ;	main.c:38: void Reboot_Mcu( BYTE Cmd ) { 
                                    604 ;	-----------------------------------------
                                    605 ;	 function Reboot_Mcu
                                    606 ;	-----------------------------------------
      000130                        607 _Reboot_Mcu:
      000130 85 82 E7         [24]  608 	mov	_ISPCR,dpl
                                    609 ;	main.c:39: ISPCR = Cmd;
                                    610 ;	main.c:40: }
      000133 22               [24]  611 	ret
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'INT_USB'
                                    614 ;------------------------------------------------------------
                                    615 ;	main.c:43: void INT_USB(void) __interrupt 15 __using 3          // 
                                    616 ;	-----------------------------------------
                                    617 ;	 function INT_USB
                                    618 ;	-----------------------------------------
      000134                        619 _INT_USB:
                           00001F   620 	ar7 = 0x1f
                           00001E   621 	ar6 = 0x1e
                           00001D   622 	ar5 = 0x1d
                           00001C   623 	ar4 = 0x1c
                           00001B   624 	ar3 = 0x1b
                           00001A   625 	ar2 = 0x1a
                           000019   626 	ar1 = 0x19
                           000018   627 	ar0 = 0x18
      000134 C0 20            [24]  628 	push	bits
      000136 C0 E0            [24]  629 	push	acc
      000138 C0 F0            [24]  630 	push	b
      00013A C0 82            [24]  631 	push	dpl
      00013C C0 83            [24]  632 	push	dph
      00013E C0 07            [24]  633 	push	(0+7)
      000140 C0 06            [24]  634 	push	(0+6)
      000142 C0 05            [24]  635 	push	(0+5)
      000144 C0 04            [24]  636 	push	(0+4)
      000146 C0 03            [24]  637 	push	(0+3)
      000148 C0 02            [24]  638 	push	(0+2)
      00014A C0 01            [24]  639 	push	(0+1)
      00014C C0 00            [24]  640 	push	(0+0)
      00014E C0 D0            [24]  641 	push	psw
      000150 75 D0 18         [24]  642 	mov	psw,#0x18
                                    643 ;	main.c:44: { WDTCR = Wdt;                                 // Reset Watch Dog Timer
      000153 85 22 E1         [24]  644 	mov	_WDTCR,_Wdt
                                    645 ;	main.c:45: USB_Int();
      000156 75 D0 00         [24]  646 	mov	psw,#0x00
      000159 12 0D CF         [24]  647 	lcall	_USB_Int
      00015C 75 D0 18         [24]  648 	mov	psw,#0x18
                                    649 ;	main.c:46: }
      00015F D0 D0            [24]  650 	pop	psw
      000161 D0 00            [24]  651 	pop	(0+0)
      000163 D0 01            [24]  652 	pop	(0+1)
      000165 D0 02            [24]  653 	pop	(0+2)
      000167 D0 03            [24]  654 	pop	(0+3)
      000169 D0 04            [24]  655 	pop	(0+4)
      00016B D0 05            [24]  656 	pop	(0+5)
      00016D D0 06            [24]  657 	pop	(0+6)
      00016F D0 07            [24]  658 	pop	(0+7)
      000171 D0 83            [24]  659 	pop	dph
      000173 D0 82            [24]  660 	pop	dpl
      000175 D0 F0            [24]  661 	pop	b
      000177 D0 E0            [24]  662 	pop	acc
      000179 D0 20            [24]  663 	pop	bits
      00017B 32               [24]  664 	reti
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'INT_KB'
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:49: void INT_KB(void) __interrupt 13 __using 2 { 
                                    669 ;	-----------------------------------------
                                    670 ;	 function INT_KB
                                    671 ;	-----------------------------------------
      00017C                        672 _INT_KB:
                           000017   673 	ar7 = 0x17
                           000016   674 	ar6 = 0x16
                           000015   675 	ar5 = 0x15
                           000014   676 	ar4 = 0x14
                           000013   677 	ar3 = 0x13
                           000012   678 	ar2 = 0x12
                           000011   679 	ar1 = 0x11
                           000010   680 	ar0 = 0x10
                                    681 ;	main.c:50: WDTCR = Wdt;
      00017C 85 22 E1         [24]  682 	mov	_WDTCR,_Wdt
                                    683 ;	main.c:52: KBCON = 0x00;                                // Clear KP Interrupt Flag
      00017F 75 D6 00         [24]  684 	mov	_KBCON,#0x00
                                    685 ;	main.c:53: KBMASK = 0x00;                               // Will Disable KP Interrupt
      000182 75 D7 00         [24]  686 	mov	_KBMASK,#0x00
                                    687 ;	main.c:54: }
      000185 32               [24]  688 	reti
                                    689 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    690 ;	eliminated unneeded push/pop psw
                                    691 ;	eliminated unneeded push/pop dpl
                                    692 ;	eliminated unneeded push/pop dph
                                    693 ;	eliminated unneeded push/pop b
                                    694 ;	eliminated unneeded push/pop acc
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'INT_TIMER0'
                                    697 ;------------------------------------------------------------
                                    698 ;	main.c:56: void INT_TIMER0(void) __interrupt 1 __using 1  { 
                                    699 ;	-----------------------------------------
                                    700 ;	 function INT_TIMER0
                                    701 ;	-----------------------------------------
      000186                        702 _INT_TIMER0:
                           00000F   703 	ar7 = 0x0f
                           00000E   704 	ar6 = 0x0e
                           00000D   705 	ar5 = 0x0d
                           00000C   706 	ar4 = 0x0c
                           00000B   707 	ar3 = 0x0b
                           00000A   708 	ar2 = 0x0a
                           000009   709 	ar1 = 0x09
                           000008   710 	ar0 = 0x08
      000186 C0 E0            [24]  711 	push	acc
                                    712 ;	main.c:57: WDTCR = Wdt;                                 // Reset Watch Dog Timer
      000188 85 22 E1         [24]  713 	mov	_WDTCR,_Wdt
                                    714 ;	main.c:58: TR0 = CLR;                                   // Disable Timer0
                                    715 ;	assignBit
      00018B C2 8C            [12]  716 	clr	_TR0
                                    717 ;	main.c:60: if(T0Cnt) { 
      00018D E5 21            [12]  718 	mov	a,_T0Cnt
      00018F 60 02            [24]  719 	jz	00102$
                                    720 ;	main.c:61: T0Cnt--;
      000191 15 21            [12]  721 	dec	_T0Cnt
      000193                        722 00102$:
                                    723 ;	main.c:64: TL0 = T0_1MSL;
      000193 75 8A 18         [24]  724 	mov	_TL0,#0x18
                                    725 ;	main.c:65: TH0 = T0_1MSH;
      000196 75 8C FC         [24]  726 	mov	_TH0,#0xfc
                                    727 ;	main.c:66: TR0 = SET;                               // Enable Timer0
                                    728 ;	assignBit
      000199 D2 8C            [12]  729 	setb	_TR0
                                    730 ;	main.c:68: }
      00019B D0 E0            [24]  731 	pop	acc
      00019D 32               [24]  732 	reti
                                    733 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    734 ;	eliminated unneeded push/pop psw
                                    735 ;	eliminated unneeded push/pop dpl
                                    736 ;	eliminated unneeded push/pop dph
                                    737 ;	eliminated unneeded push/pop b
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'Initial_Mcu'
                                    740 ;------------------------------------------------------------
                                    741 ;	main.c:71: void Initial_Mcu( void ) { IE  = 0x00;	                                 // disable all interrupt
                                    742 ;	-----------------------------------------
                                    743 ;	 function Initial_Mcu
                                    744 ;	-----------------------------------------
      00019E                        745 _Initial_Mcu:
                           000007   746 	ar7 = 0x07
                           000006   747 	ar6 = 0x06
                           000005   748 	ar5 = 0x05
                           000004   749 	ar4 = 0x04
                           000003   750 	ar3 = 0x03
                           000002   751 	ar2 = 0x02
                           000001   752 	ar1 = 0x01
                           000000   753 	ar0 = 0x00
      00019E 75 A8 00         [24]  754 	mov	_IE,#0x00
                                    755 ;	main.c:73: AUXIE = ( EUSB | EKB );                      // Enable USB and KB int
      0001A1 75 AD A0         [24]  756 	mov	_AUXIE,#0xa0
                                    757 ;	main.c:74: AUXIP = 0x20;                                // KB high priority
      0001A4 75 AE 20         [24]  758 	mov	_AUXIP,#0x20
                                    759 ;	main.c:76: PSW = 0x00;	                                 // bank 0
      0001A7 75 D0 00         [24]  760 	mov	_PSW,#0x00
                                    761 ;	main.c:77: IP  = 0x12;	                                 // hi priority: UART / Timer0
      0001AA 75 B8 12         [24]  762 	mov	_IP,#0x12
                                    763 ;	main.c:79: TMOD = 0x21;                                 // Set Timer0/1 in Mode1/2 ( 16/8 bit )
      0001AD 75 89 21         [24]  764 	mov	_TMOD,#0x21
                                    765 ;	main.c:80: TR0 = 0;                                     // Desable Timer0
                                    766 ;	assignBit
      0001B0 C2 8C            [12]  767 	clr	_TR0
                                    768 ;	main.c:81: ET0 = 1;                                     // Enable Timer0 interrupt
                                    769 ;	assignBit
      0001B2 D2 A9            [12]  770 	setb	_ET0
                                    771 ;	main.c:83: Wdt = WDTCR;
      0001B4 85 E1 22         [24]  772 	mov	_Wdt,_WDTCR
                                    773 ;	main.c:84: Wdt |= 0x37;                                 // Setting and Reset WDT
      0001B7 43 22 37         [24]  774 	orl	_Wdt,#0x37
                                    775 ;	main.c:86: CKCON = (BYTE)(( 12 - 1 ) << 3);             // CLKin -> Default , OSCDN = 12Mhz - 1
      0001BA 75 C7 58         [24]  776 	mov	_CKCON,#0x58
                                    777 ;	main.c:88: EA  = 1;                                     // enable all interrupt
                                    778 ;	assignBit
      0001BD D2 AF            [12]  779 	setb	_EA
                                    780 ;	main.c:90: CKCON2 |= EN_USB;                            // Enalbe EN_USB
      0001BF 43 BF 08         [24]  781 	orl	_CKCON2,#0x08
                                    782 ;	main.c:91: Delay_Xms( 1 );
      0001C2 75 82 01         [24]  783 	mov	dpl,#0x01
      0001C5 12 01 18         [24]  784 	lcall	_Delay_Xms
                                    785 ;	main.c:93: while(1) { USB[ACKCTL] |= EN_DLL;
      0001C8                        786 00104$:
                                    787 ;	main.c:94: if (USB[ACKCTL] & EN_DLL)
      0001C8 90 FF CC         [24]  788 	mov	dptr,#0xffcc
      0001CB E0               [24]  789 	movx	a,@dptr
      0001CC 44 01            [12]  790 	orl	a,#0x01
      0001CE F0               [24]  791 	movx	@dptr,a
      0001CF E0               [24]  792 	movx	a,@dptr
      0001D0 30 E0 F5         [24]  793 	jnb	acc.0,00104$
                                    794 ;	main.c:98: Delay_Xms( 4 );                              // Wait for DPLL 48Mhz Ready
      0001D3 75 82 04         [24]  795 	mov	dpl,#0x04
      0001D6 12 01 18         [24]  796 	lcall	_Delay_Xms
                                    797 ;	main.c:100: while( 1 ) { 
      0001D9                        798 00109$:
                                    799 ;	main.c:101: USB[ACKCTL] |= UCK_SEL;
                                    800 ;	main.c:102: if ( USB[ACKCTL] & UCK_SEL )
      0001D9 90 FF CC         [24]  801 	mov	dptr,#0xffcc
      0001DC E0               [24]  802 	movx	a,@dptr
      0001DD 44 02            [12]  803 	orl	a,#0x02
      0001DF F0               [24]  804 	movx	@dptr,a
      0001E0 E0               [24]  805 	movx	a,@dptr
      0001E1 30 E1 F5         [24]  806 	jnb	acc.1,00109$
                                    807 ;	main.c:106: CKCON2 |= OSCDR0;                            // Mini clock output
      0001E4 43 BF 20         [24]  808 	orl	_CKCON2,#0x20
                                    809 ;	main.c:108: P1M0 = 0xFF;                                 // Set Open Drain
      0001E7 75 91 FF         [24]  810 	mov	_P1M0,#0xff
                                    811 ;	main.c:109: P1M1 = 0xFF;
      0001EA 75 92 FF         [24]  812 	mov	_P1M1,#0xff
                                    813 ;	main.c:110: P2M0 = 0xFF;
      0001ED 75 95 FF         [24]  814 	mov	_P2M0,#0xff
                                    815 ;	main.c:111: P2M1 = 0xFF;
      0001F0 75 96 FF         [24]  816 	mov	_P2M1,#0xff
                                    817 ;	main.c:112: P3M0 = 0x18;
      0001F3 75 B1 18         [24]  818 	mov	_P3M0,#0x18
                                    819 ;	main.c:113: P3M1 = 0x18; 
      0001F6 75 B2 18         [24]  820 	mov	_P3M1,#0x18
                                    821 ;	main.c:115: Delay_Xms( 250 );
      0001F9 75 82 FA         [24]  822 	mov	dpl,#0xfa
                                    823 ;	main.c:116: }
      0001FC 02 01 18         [24]  824 	ljmp	_Delay_Xms
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'main'
                                    827 ;------------------------------------------------------------
                                    828 ;	main.c:119: void main( void ) { 
                                    829 ;	-----------------------------------------
                                    830 ;	 function main
                                    831 ;	-----------------------------------------
      0001FF                        832 _main:
                                    833 ;	main.c:121: Initial_Mcu();
      0001FF 12 01 9E         [24]  834 	lcall	_Initial_Mcu
                                    835 ;	main.c:122: Initial_DFU();
      000202 12 0E B8         [24]  836 	lcall	_Initial_DFU
                                    837 ;	main.c:124: Initial_USB();
      000205 12 07 B3         [24]  838 	lcall	_Initial_USB
                                    839 ;	main.c:125: initKeyboard();
      000208 12 02 94         [24]  840 	lcall	_initKeyboard
                                    841 ;	main.c:127: while(1) {
      00020B                        842 00102$:
                                    843 ;	main.c:128: scan();
      00020B 12 07 60         [24]  844 	lcall	_scan
                                    845 ;	main.c:131: }
      00020E 80 FB            [24]  846 	sjmp	00102$
                                    847 	.area CSEG    (CODE)
                                    848 	.area CONST   (CODE)
                                    849 	.area XINIT   (CODE)
                                    850 	.area CABS    (ABS,CODE)
