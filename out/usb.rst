                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _USB_Wr_FIFO_PARM_2
                                     12 	.globl _USB_Rd_FIFO_PARM_2
                                     13 	.globl _SERIALNUMBER_DESCRIPTOR
                                     14 	.globl _PRODUCT_DESCRIPTOR
                                     15 	.globl _MANUFACTURER_DESCRIPTOR
                                     16 	.globl _LANGUAGEID_DESCRIPTOR
                                     17 	.globl _KB_INTERRUPT_IN_ENDPOINT_DESCRIPTOR
                                     18 	.globl _KB_HID_DESCRIPTOR
                                     19 	.globl _KB_INTERFACE_DESCRIPTOR
                                     20 	.globl _CONGFIGURATION_DESCRIPTOR
                                     21 	.globl _DEVICE_DESCRIPTOR
                                     22 	.globl _KB_HID_REPORT
                                     23 	.globl _USB_Int
                                     24 	.globl _USB_Set_TxStatus
                                     25 	.globl _USB_CtrlWr
                                     26 	.globl _USB_Class_Request
                                     27 	.globl _USB_Stardard_Request
                                     28 	.globl _USB_CtrlRd
                                     29 	.globl _USB_Get_Interface
                                     30 	.globl _USB_Set_Interface
                                     31 	.globl _USB_Set_Configuration
                                     32 	.globl _USB_Get_Descriptor
                                     33 	.globl _USB_Set_Feature
                                     34 	.globl _USB_Clear_Feature
                                     35 	.globl _USB_Get_Status
                                     36 	.globl _USB_Ep0_FIFO
                                     37 	.globl _USB_Wr_FIFO
                                     38 	.globl _USB_Rd_FIFO
                                     39 	.globl _Initial_USB
                                     40 	.globl _initKeyboard
                                     41 	.globl _KB_LED_Off
                                     42 	.globl _KB_LED_Status
                                     43 	.globl _Delay_Xms
                                     44 	.globl _Reboot_Mcu
                                     45 	.globl _INT2
                                     46 	.globl _INT3
                                     47 	.globl _RXD
                                     48 	.globl _TXD
                                     49 	.globl _INT0
                                     50 	.globl _INT1
                                     51 	.globl _T0
                                     52 	.globl _T1
                                     53 	.globl _WR
                                     54 	.globl _RD
                                     55 	.globl _I2C_SCL
                                     56 	.globl _I2C_SDA
                                     57 	.globl _SPI_SS
                                     58 	.globl _SPI_MOSI
                                     59 	.globl _SPI_MISO
                                     60 	.globl _SPI_CLK
                                     61 	.globl _T2
                                     62 	.globl _T2EX
                                     63 	.globl _P40
                                     64 	.globl _P41
                                     65 	.globl _P42
                                     66 	.globl _P43
                                     67 	.globl _P30
                                     68 	.globl _P31
                                     69 	.globl _P32
                                     70 	.globl _P33
                                     71 	.globl _P34
                                     72 	.globl _P35
                                     73 	.globl _P36
                                     74 	.globl _P37
                                     75 	.globl _P20
                                     76 	.globl _P21
                                     77 	.globl _P22
                                     78 	.globl _P23
                                     79 	.globl _P24
                                     80 	.globl _P25
                                     81 	.globl _P26
                                     82 	.globl _P27
                                     83 	.globl _P10
                                     84 	.globl _P11
                                     85 	.globl _P12
                                     86 	.globl _P13
                                     87 	.globl _P14
                                     88 	.globl _P15
                                     89 	.globl _P16
                                     90 	.globl _P17
                                     91 	.globl _P00
                                     92 	.globl _P01
                                     93 	.globl _P02
                                     94 	.globl _P03
                                     95 	.globl _P04
                                     96 	.globl _P05
                                     97 	.globl _P06
                                     98 	.globl _P07
                                     99 	.globl _CR0
                                    100 	.globl _CR1
                                    101 	.globl _AA
                                    102 	.globl _SI
                                    103 	.globl _STO
                                    104 	.globl _STA
                                    105 	.globl _ENSI
                                    106 	.globl _CR2
                                    107 	.globl _IT2
                                    108 	.globl _IE2
                                    109 	.globl _EX2
                                    110 	.globl _IL2
                                    111 	.globl _IT3
                                    112 	.globl _IE3
                                    113 	.globl _EX3
                                    114 	.globl _IL3
                                    115 	.globl _CP_RL2
                                    116 	.globl _C_T2
                                    117 	.globl _TR2
                                    118 	.globl _EXEN2
                                    119 	.globl _TCLK
                                    120 	.globl _RCLK
                                    121 	.globl _EXF2
                                    122 	.globl _TF2
                                    123 	.globl _IT0
                                    124 	.globl _IE0
                                    125 	.globl _IT1
                                    126 	.globl _IE1
                                    127 	.globl _TR0
                                    128 	.globl _TF0
                                    129 	.globl _TR1
                                    130 	.globl _TF1
                                    131 	.globl _FE
                                    132 	.globl _RI
                                    133 	.globl _TI
                                    134 	.globl _RB8
                                    135 	.globl _TB8
                                    136 	.globl _REN
                                    137 	.globl _SM2
                                    138 	.globl _SM1
                                    139 	.globl _SM0
                                    140 	.globl _PX0
                                    141 	.globl _PT0
                                    142 	.globl _PX1
                                    143 	.globl _PT1
                                    144 	.globl _PS
                                    145 	.globl _PT2
                                    146 	.globl _PX2
                                    147 	.globl _PX3
                                    148 	.globl _EX0
                                    149 	.globl _ET0
                                    150 	.globl _EX1
                                    151 	.globl _ET1
                                    152 	.globl _ES
                                    153 	.globl _ET2
                                    154 	.globl _EA
                                    155 	.globl _P
                                    156 	.globl _OV
                                    157 	.globl _RS0
                                    158 	.globl _RS1
                                    159 	.globl _F0
                                    160 	.globl _AC
                                    161 	.globl _CY
                                    162 	.globl _SCMD
                                    163 	.globl _IFADRL
                                    164 	.globl _IFADRH
                                    165 	.globl _IFD
                                    166 	.globl _ISPTME
                                    167 	.globl _ISPCR
                                    168 	.globl _WDTCR
                                    169 	.globl _AUXR2
                                    170 	.globl _AUXR
                                    171 	.globl _CKCON2
                                    172 	.globl _CKCON
                                    173 	.globl _PCON
                                    174 	.globl _SISTA
                                    175 	.globl _SIDAT
                                    176 	.globl _SIADR
                                    177 	.globl _SICON
                                    178 	.globl _SPSTAT
                                    179 	.globl _SPDAT
                                    180 	.globl _SPCTL
                                    181 	.globl _KBMASK
                                    182 	.globl _KBPATN
                                    183 	.globl _KBCON
                                    184 	.globl _SADEN
                                    185 	.globl _SADDR
                                    186 	.globl _SBUF
                                    187 	.globl _SCON
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _TH1
                                    191 	.globl _TL1
                                    192 	.globl _TH0
                                    193 	.globl _TL0
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2MOD
                                    197 	.globl _T2CON
                                    198 	.globl _TMOD
                                    199 	.globl _TCON
                                    200 	.globl _P4M1
                                    201 	.globl _P4M0
                                    202 	.globl _P3M1
                                    203 	.globl _P3M0
                                    204 	.globl _P2M1
                                    205 	.globl _P2M0
                                    206 	.globl _P1M1
                                    207 	.globl _P1M0
                                    208 	.globl _P0M1
                                    209 	.globl _P0M0
                                    210 	.globl _P4
                                    211 	.globl _P3
                                    212 	.globl _P2
                                    213 	.globl _P1
                                    214 	.globl _P0
                                    215 	.globl _IP
                                    216 	.globl _XICON
                                    217 	.globl _AUXIP
                                    218 	.globl _AUXIE
                                    219 	.globl _IE
                                    220 	.globl _PSW
                                    221 	.globl _DPH
                                    222 	.globl _DPL
                                    223 	.globl _SP
                                    224 	.globl _B
                                    225 	.globl _ACC
                                    226 	.globl _Ep0
                                    227 	.globl _Protocol
                                    228 	.globl _IdleRate
                                    229 	.globl _TxBusy
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000E0   235 _ACC	=	0x00e0
                           0000F0   236 _B	=	0x00f0
                           000081   237 _SP	=	0x0081
                           000082   238 _DPL	=	0x0082
                           000083   239 _DPH	=	0x0083
                           0000D0   240 _PSW	=	0x00d0
                           0000A8   241 _IE	=	0x00a8
                           0000AD   242 _AUXIE	=	0x00ad
                           0000AE   243 _AUXIP	=	0x00ae
                           0000C0   244 _XICON	=	0x00c0
                           0000B8   245 _IP	=	0x00b8
                           000080   246 _P0	=	0x0080
                           000090   247 _P1	=	0x0090
                           0000A0   248 _P2	=	0x00a0
                           0000B0   249 _P3	=	0x00b0
                           0000E8   250 _P4	=	0x00e8
                           000093   251 _P0M0	=	0x0093
                           000094   252 _P0M1	=	0x0094
                           000091   253 _P1M0	=	0x0091
                           000092   254 _P1M1	=	0x0092
                           000095   255 _P2M0	=	0x0095
                           000096   256 _P2M1	=	0x0096
                           0000B1   257 _P3M0	=	0x00b1
                           0000B2   258 _P3M1	=	0x00b2
                           0000B3   259 _P4M0	=	0x00b3
                           0000B4   260 _P4M1	=	0x00b4
                           000088   261 _TCON	=	0x0088
                           000089   262 _TMOD	=	0x0089
                           0000C8   263 _T2CON	=	0x00c8
                           0000C9   264 _T2MOD	=	0x00c9
                           0000CA   265 _RCAP2L	=	0x00ca
                           0000CB   266 _RCAP2H	=	0x00cb
                           00008A   267 _TL0	=	0x008a
                           00008C   268 _TH0	=	0x008c
                           00008B   269 _TL1	=	0x008b
                           00008D   270 _TH1	=	0x008d
                           0000CC   271 _TL2	=	0x00cc
                           0000CD   272 _TH2	=	0x00cd
                           000098   273 _SCON	=	0x0098
                           000099   274 _SBUF	=	0x0099
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000D6   277 _KBCON	=	0x00d6
                           0000D5   278 _KBPATN	=	0x00d5
                           0000D7   279 _KBMASK	=	0x00d7
                           000085   280 _SPCTL	=	0x0085
                           000086   281 _SPDAT	=	0x0086
                           000084   282 _SPSTAT	=	0x0084
                           0000F8   283 _SICON	=	0x00f8
                           0000D1   284 _SIADR	=	0x00d1
                           0000D2   285 _SIDAT	=	0x00d2
                           0000D3   286 _SISTA	=	0x00d3
                           000087   287 _PCON	=	0x0087
                           0000C7   288 _CKCON	=	0x00c7
                           0000BF   289 _CKCON2	=	0x00bf
                           00008E   290 _AUXR	=	0x008e
                           0000A6   291 _AUXR2	=	0x00a6
                           0000E1   292 _WDTCR	=	0x00e1
                           0000E7   293 _ISPCR	=	0x00e7
                           0000E5   294 _ISPTME	=	0x00e5
                           0000E2   295 _IFD	=	0x00e2
                           0000E3   296 _IFADRH	=	0x00e3
                           0000E4   297 _IFADRL	=	0x00e4
                           0000E6   298 _SCMD	=	0x00e6
                                    299 ;--------------------------------------------------------
                                    300 ; special function bits
                                    301 ;--------------------------------------------------------
                                    302 	.area RSEG    (ABS,DATA)
      000000                        303 	.org 0x0000
                           0000D7   304 _CY	=	0x00d7
                           0000D6   305 _AC	=	0x00d6
                           0000D5   306 _F0	=	0x00d5
                           0000D4   307 _RS1	=	0x00d4
                           0000D3   308 _RS0	=	0x00d3
                           0000D2   309 _OV	=	0x00d2
                           0000D0   310 _P	=	0x00d0
                           0000AF   311 _EA	=	0x00af
                           0000AD   312 _ET2	=	0x00ad
                           0000AC   313 _ES	=	0x00ac
                           0000AB   314 _ET1	=	0x00ab
                           0000AA   315 _EX1	=	0x00aa
                           0000A9   316 _ET0	=	0x00a9
                           0000A8   317 _EX0	=	0x00a8
                           0000BF   318 _PX3	=	0x00bf
                           0000BE   319 _PX2	=	0x00be
                           0000BD   320 _PT2	=	0x00bd
                           0000BC   321 _PS	=	0x00bc
                           0000BB   322 _PT1	=	0x00bb
                           0000BA   323 _PX1	=	0x00ba
                           0000B9   324 _PT0	=	0x00b9
                           0000B8   325 _PX0	=	0x00b8
                           00009F   326 _SM0	=	0x009f
                           00009E   327 _SM1	=	0x009e
                           00009D   328 _SM2	=	0x009d
                           00009C   329 _REN	=	0x009c
                           00009B   330 _TB8	=	0x009b
                           00009A   331 _RB8	=	0x009a
                           000099   332 _TI	=	0x0099
                           000098   333 _RI	=	0x0098
                           00009F   334 _FE	=	0x009f
                           00008F   335 _TF1	=	0x008f
                           00008E   336 _TR1	=	0x008e
                           00008D   337 _TF0	=	0x008d
                           00008C   338 _TR0	=	0x008c
                           00008B   339 _IE1	=	0x008b
                           00008A   340 _IT1	=	0x008a
                           000089   341 _IE0	=	0x0089
                           000088   342 _IT0	=	0x0088
                           0000CF   343 _TF2	=	0x00cf
                           0000CE   344 _EXF2	=	0x00ce
                           0000CD   345 _RCLK	=	0x00cd
                           0000CC   346 _TCLK	=	0x00cc
                           0000CB   347 _EXEN2	=	0x00cb
                           0000CA   348 _TR2	=	0x00ca
                           0000C9   349 _C_T2	=	0x00c9
                           0000C8   350 _CP_RL2	=	0x00c8
                           0000C7   351 _IL3	=	0x00c7
                           0000C6   352 _EX3	=	0x00c6
                           0000C5   353 _IE3	=	0x00c5
                           0000C4   354 _IT3	=	0x00c4
                           0000C3   355 _IL2	=	0x00c3
                           0000C2   356 _EX2	=	0x00c2
                           0000C1   357 _IE2	=	0x00c1
                           0000C0   358 _IT2	=	0x00c0
                           0000FF   359 _CR2	=	0x00ff
                           0000FE   360 _ENSI	=	0x00fe
                           0000FD   361 _STA	=	0x00fd
                           0000FC   362 _STO	=	0x00fc
                           0000FB   363 _SI	=	0x00fb
                           0000FA   364 _AA	=	0x00fa
                           0000F9   365 _CR1	=	0x00f9
                           0000F8   366 _CR0	=	0x00f8
                           000087   367 _P07	=	0x0087
                           000086   368 _P06	=	0x0086
                           000085   369 _P05	=	0x0085
                           000084   370 _P04	=	0x0084
                           000083   371 _P03	=	0x0083
                           000082   372 _P02	=	0x0082
                           000081   373 _P01	=	0x0081
                           000080   374 _P00	=	0x0080
                           000097   375 _P17	=	0x0097
                           000096   376 _P16	=	0x0096
                           000095   377 _P15	=	0x0095
                           000094   378 _P14	=	0x0094
                           000093   379 _P13	=	0x0093
                           000092   380 _P12	=	0x0092
                           000091   381 _P11	=	0x0091
                           000090   382 _P10	=	0x0090
                           0000A7   383 _P27	=	0x00a7
                           0000A6   384 _P26	=	0x00a6
                           0000A5   385 _P25	=	0x00a5
                           0000A4   386 _P24	=	0x00a4
                           0000A3   387 _P23	=	0x00a3
                           0000A2   388 _P22	=	0x00a2
                           0000A1   389 _P21	=	0x00a1
                           0000A0   390 _P20	=	0x00a0
                           0000B7   391 _P37	=	0x00b7
                           0000B6   392 _P36	=	0x00b6
                           0000B5   393 _P35	=	0x00b5
                           0000B4   394 _P34	=	0x00b4
                           0000B3   395 _P33	=	0x00b3
                           0000B2   396 _P32	=	0x00b2
                           0000B1   397 _P31	=	0x00b1
                           0000B0   398 _P30	=	0x00b0
                           0000EB   399 _P43	=	0x00eb
                           0000EA   400 _P42	=	0x00ea
                           0000E9   401 _P41	=	0x00e9
                           0000E8   402 _P40	=	0x00e8
                           000091   403 _T2EX	=	0x0091
                           000090   404 _T2	=	0x0090
                           0000A7   405 _SPI_CLK	=	0x00a7
                           0000A6   406 _SPI_MISO	=	0x00a6
                           0000A5   407 _SPI_MOSI	=	0x00a5
                           0000A4   408 _SPI_SS	=	0x00a4
                           0000A1   409 _I2C_SDA	=	0x00a1
                           0000A0   410 _I2C_SCL	=	0x00a0
                           0000B7   411 _RD	=	0x00b7
                           0000B6   412 _WR	=	0x00b6
                           0000B5   413 _T1	=	0x00b5
                           0000B4   414 _T0	=	0x00b4
                           0000B3   415 _INT1	=	0x00b3
                           0000B2   416 _INT0	=	0x00b2
                           0000B1   417 _TXD	=	0x00b1
                           0000B0   418 _RXD	=	0x00b0
                           0000B7   419 _INT3	=	0x00b7
                           0000B6   420 _INT2	=	0x00b6
                                    421 ;--------------------------------------------------------
                                    422 ; overlayable register banks
                                    423 ;--------------------------------------------------------
                                    424 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        425 	.ds 8
                                    426 ;--------------------------------------------------------
                                    427 ; internal ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area DSEG    (DATA)
      00005E                        430 _TxBusy::
      00005E                        431 	.ds 1
      00005F                        432 _IdleRate::
      00005F                        433 	.ds 1
      000060                        434 _Protocol::
      000060                        435 	.ds 1
      000061                        436 _Ep0::
      000061                        437 	.ds 19
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable items in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 	.area	OSEG    (OVR,DATA)
      000074                        442 _USB_Rd_FIFO_PARM_2:
      000074                        443 	.ds 1
                                    444 	.area	OSEG    (OVR,DATA)
      000074                        445 _USB_Wr_FIFO_PARM_2:
      000074                        446 	.ds 1
                                    447 	.area	OSEG    (OVR,DATA)
      000074                        448 _USB_Get_Descriptor_WLen_65536_35:
      000074                        449 	.ds 2
                                    450 	.area	OSEG    (OVR,DATA)
                                    451 	.area	OSEG    (OVR,DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; indirectly addressable internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area ISEG    (DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area IABS    (ABS,DATA)
                                    460 	.area IABS    (ABS,DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; bit data
                                    463 ;--------------------------------------------------------
                                    464 	.area BSEG    (BIT)
                                    465 ;--------------------------------------------------------
                                    466 ; paged external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area PSEG    (PAG,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XSEG    (XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external initialized ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; Home
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area HOME    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'Initial_USB'
                                    509 ;------------------------------------------------------------
                                    510 ;	usb.c:30: void Initial_USB( void )
                                    511 ;	-----------------------------------------
                                    512 ;	 function Initial_USB
                                    513 ;	-----------------------------------------
      0007B3                        514 _Initial_USB:
                           000007   515 	ar7 = 0x07
                           000006   516 	ar6 = 0x06
                           000005   517 	ar5 = 0x05
                           000004   518 	ar4 = 0x04
                           000003   519 	ar3 = 0x03
                           000002   520 	ar2 = 0x02
                           000001   521 	ar1 = 0x01
                           000000   522 	ar0 = 0x00
                                    523 ;	usb.c:31: { USB[IEN] = CLR;                              // Disable USB all related interrupts
      0007B3 90 FF D9         [24]  524 	mov	dptr,#0xffd9
      0007B6 E4               [12]  525 	clr	a
      0007B7 F0               [24]  526 	movx	@dptr,a
                                    527 ;	usb.c:33: USB[EPINDEX] = EP0;                          // Change to EP0 
      0007B8 90 FF F1         [24]  528 	mov	dptr,#0xfff1
      0007BB F0               [24]  529 	movx	@dptr,a
                                    530 ;	usb.c:34: USB[EPCON] = ( TXEPEN | RXEPEN );            // Enable Tx & Rx
                                    531 ;	usb.c:35: USB[EPCON] |= ( TXSTL | RXSTL );             // Set RXSTL & TXSTL (prevent not SETUP Token)
      0007BC 90 FF E1         [24]  532 	mov	dptr,#0xffe1
      0007BF 74 05            [12]  533 	mov	a,#0x05
      0007C1 F0               [24]  534 	movx	@dptr,a
      0007C2 E0               [24]  535 	movx	a,@dptr
      0007C3 FF               [12]  536 	mov	r7,a
      0007C4 43 07 C0         [24]  537 	orl	ar7,#0xc0
      0007C7 90 FF E1         [24]  538 	mov	dptr,#0xffe1
      0007CA EF               [12]  539 	mov	a,r7
      0007CB F0               [24]  540 	movx	@dptr,a
                                    541 ;	usb.c:36: USB[TXCON] = TXCLR;                          // Clear Tx FIFO
      0007CC 90 FF F4         [24]  542 	mov	dptr,#0xfff4
      0007CF 74 80            [12]  543 	mov	a,#0x80
      0007D1 F0               [24]  544 	movx	@dptr,a
                                    545 ;	usb.c:37: USB[RXCON] = RXCLR;                          // Clear Rx FIFO
      0007D2 90 FF E4         [24]  546 	mov	dptr,#0xffe4
      0007D5 F0               [24]  547 	movx	@dptr,a
                                    548 ;	usb.c:39: USB[UIE] = ( UTXIE0 | URXIE0 | UTXIE1 );   
      0007D6 90 FF DA         [24]  549 	mov	dptr,#0xffda
      0007D9 74 07            [12]  550 	mov	a,#0x07
      0007DB F0               [24]  551 	movx	@dptr,a
                                    552 ;	usb.c:41: USB[IEN] = ( EF | EFSR );                    // Enable USB all related interrupts
      0007DC 90 FF D9         [24]  553 	mov	dptr,#0xffd9
      0007DF 14               [12]  554 	dec	a
      0007E0 F0               [24]  555 	movx	@dptr,a
                                    556 ;	usb.c:43: Ep0.Unit = EP0_MAX;                          // 
      0007E1 75 70 08         [24]  557 	mov	(_Ep0 + 0x000f),#0x08
                                    558 ;	usb.c:44: Ep0.EmuOk = CLR;                             // Check Emulation status
      0007E4 75 62 00         [24]  559 	mov	(_Ep0 + 0x0001),#0x00
                                    560 ;	usb.c:45: Ep0.RWEN = CLR;                              // Remote/Wakeup flag ( Default " Disable " )
      0007E7 75 61 00         [24]  561 	mov	_Ep0,#0x00
                                    562 ;	usb.c:47: USB[UPCON] |= CONEN;                         // Connecter to Host ( Enable the pull-up resistor )
      0007EA 90 FF C9         [24]  563 	mov	dptr,#0xffc9
      0007ED E0               [24]  564 	movx	a,@dptr
      0007EE 44 80            [12]  565 	orl	a,#0x80
      0007F0 F0               [24]  566 	movx	@dptr,a
                                    567 ;	usb.c:48: }
      0007F1 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'USB_Rd_FIFO'
                                    571 ;------------------------------------------------------------
                                    572 ;Cnt                       Allocated with name '_USB_Rd_FIFO_PARM_2'
                                    573 ;Buffer                    Allocated to registers r5 r6 r7 
                                    574 ;i                         Allocated to registers r4 
                                    575 ;------------------------------------------------------------
                                    576 ;	usb.c:51: void USB_Rd_FIFO( BYTE *Buffer , BYTE Cnt ) { 
                                    577 ;	-----------------------------------------
                                    578 ;	 function USB_Rd_FIFO
                                    579 ;	-----------------------------------------
      0007F2                        580 _USB_Rd_FIFO:
      0007F2 AD 82            [24]  581 	mov	r5,dpl
      0007F4 AE 83            [24]  582 	mov	r6,dph
      0007F6 AF F0            [24]  583 	mov	r7,b
                                    584 ;	usb.c:53: for (i = 0; i < Cnt; i++) {  
      0007F8 7C 00            [12]  585 	mov	r4,#0x00
      0007FA                        586 00103$:
      0007FA C3               [12]  587 	clr	c
      0007FB EC               [12]  588 	mov	a,r4
      0007FC 95 74            [12]  589 	subb	a,_USB_Rd_FIFO_PARM_2
      0007FE 50 19            [24]  590 	jnc	00105$
                                    591 ;	usb.c:54: Buffer[i] = USB[RXDAT];
      000800 EC               [12]  592 	mov	a,r4
      000801 2D               [12]  593 	add	a,r5
      000802 F9               [12]  594 	mov	r1,a
      000803 E4               [12]  595 	clr	a
      000804 3E               [12]  596 	addc	a,r6
      000805 FA               [12]  597 	mov	r2,a
      000806 8F 03            [24]  598 	mov	ar3,r7
      000808 90 FF E3         [24]  599 	mov	dptr,#0xffe3
      00080B E0               [24]  600 	movx	a,@dptr
      00080C F8               [12]  601 	mov	r0,a
      00080D 89 82            [24]  602 	mov	dpl,r1
      00080F 8A 83            [24]  603 	mov	dph,r2
      000811 8B F0            [24]  604 	mov	b,r3
      000813 12 0E 9D         [24]  605 	lcall	__gptrput
                                    606 ;	usb.c:53: for (i = 0; i < Cnt; i++) {  
      000816 0C               [12]  607 	inc	r4
      000817 80 E1            [24]  608 	sjmp	00103$
      000819                        609 00105$:
                                    610 ;	usb.c:56: }
      000819 22               [24]  611 	ret
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'USB_Wr_FIFO'
                                    614 ;------------------------------------------------------------
                                    615 ;Cnt                       Allocated with name '_USB_Wr_FIFO_PARM_2'
                                    616 ;Buffer                    Allocated to registers r5 r6 r7 
                                    617 ;i                         Allocated to registers r4 
                                    618 ;------------------------------------------------------------
                                    619 ;	usb.c:59: void USB_Wr_FIFO( BYTE *Buffer , BYTE Cnt )
                                    620 ;	-----------------------------------------
                                    621 ;	 function USB_Wr_FIFO
                                    622 ;	-----------------------------------------
      00081A                        623 _USB_Wr_FIFO:
      00081A AD 82            [24]  624 	mov	r5,dpl
      00081C AE 83            [24]  625 	mov	r6,dph
      00081E AF F0            [24]  626 	mov	r7,b
                                    627 ;	usb.c:63: for ( i=0 ; i<Cnt ; i++ )  
      000820 7C 00            [12]  628 	mov	r4,#0x00
      000822                        629 00103$:
      000822 C3               [12]  630 	clr	c
      000823 EC               [12]  631 	mov	a,r4
      000824 95 74            [12]  632 	subb	a,_USB_Wr_FIFO_PARM_2
      000826 50 19            [24]  633 	jnc	00105$
                                    634 ;	usb.c:64: USB[TXDAT] = Buffer[i];
      000828 EC               [12]  635 	mov	a,r4
      000829 2D               [12]  636 	add	a,r5
      00082A F9               [12]  637 	mov	r1,a
      00082B E4               [12]  638 	clr	a
      00082C 3E               [12]  639 	addc	a,r6
      00082D FA               [12]  640 	mov	r2,a
      00082E 8F 03            [24]  641 	mov	ar3,r7
      000830 89 82            [24]  642 	mov	dpl,r1
      000832 8A 83            [24]  643 	mov	dph,r2
      000834 8B F0            [24]  644 	mov	b,r3
      000836 12 10 82         [24]  645 	lcall	__gptrget
      000839 F9               [12]  646 	mov	r1,a
      00083A 90 FF F3         [24]  647 	mov	dptr,#0xfff3
      00083D F0               [24]  648 	movx	@dptr,a
                                    649 ;	usb.c:63: for ( i=0 ; i<Cnt ; i++ )  
      00083E 0C               [12]  650 	inc	r4
      00083F 80 E1            [24]  651 	sjmp	00103$
      000841                        652 00105$:
                                    653 ;	usb.c:65: }
      000841 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'USB_Ep0_FIFO'
                                    657 ;------------------------------------------------------------
                                    658 ;BLen                      Allocated to registers r7 
                                    659 ;------------------------------------------------------------
                                    660 ;	usb.c:68: void USB_Ep0_FIFO( void )
                                    661 ;	-----------------------------------------
                                    662 ;	 function USB_Ep0_FIFO
                                    663 ;	-----------------------------------------
      000842                        664 _USB_Ep0_FIFO:
                                    665 ;	usb.c:72: USB[TXCON] = TXCLR;                          // Clear Tx FIFO
      000842 90 FF F4         [24]  666 	mov	dptr,#0xfff4
      000845 74 80            [12]  667 	mov	a,#0x80
      000847 F0               [24]  668 	movx	@dptr,a
                                    669 ;	usb.c:74: if ( USB[RXSTAT] & ( STOVW | EDOVW ))        // Setup Token
      000848 90 FF E2         [24]  670 	mov	dptr,#0xffe2
      00084B E0               [24]  671 	movx	a,@dptr
      00084C FF               [12]  672 	mov	r7,a
      00084D 54 30            [12]  673 	anl	a,#0x30
      00084F 60 53            [24]  674 	jz	00119$
                                    675 ;	usb.c:75: { Ep0.Stage = SETUPSTAGE;
      000851 75 63 F0         [24]  676 	mov	(_Ep0 + 0x0002),#0xf0
                                    677 ;	usb.c:77: { while(USB[RXSTAT] & STOVW);          // waiting STOVE = 0
      000854                        678 00101$:
      000854 90 FF E2         [24]  679 	mov	dptr,#0xffe2
      000857 E0               [24]  680 	movx	a,@dptr
      000858 FF               [12]  681 	mov	r7,a
      000859 20 E5 F8         [24]  682 	jb	acc.5,00101$
                                    683 ;	usb.c:78: while(!( USB[RXSTAT] & EDOVW ));     // waiting EDOVW = 1
      00085C                        684 00104$:
      00085C 90 FF E2         [24]  685 	mov	dptr,#0xffe2
      00085F E0               [24]  686 	movx	a,@dptr
      000860 30 E4 F9         [24]  687 	jnb	acc.4,00104$
                                    688 ;	usb.c:79: USB[RXSTAT] &= ~EDOVW;               // Clear the EDOVW bit when reading the contents of the FIFO
      000863 90 FF E2         [24]  689 	mov	dptr,#0xffe2
      000866 E0               [24]  690 	movx	a,@dptr
      000867 54 EF            [12]  691 	anl	a,#0xef
      000869 F0               [24]  692 	movx	@dptr,a
                                    693 ;	usb.c:80: USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
      00086A 90 FF DB         [24]  694 	mov	dptr,#0xffdb
      00086D 74 02            [12]  695 	mov	a,#0x02
      00086F F0               [24]  696 	movx	@dptr,a
                                    697 ;	usb.c:81: BLen = USB[RXCNT];                   // Chk total Rx Data count in Byte
      000870 90 FF E6         [24]  698 	mov	dptr,#0xffe6
      000873 E0               [24]  699 	movx	a,@dptr
      000874 FF               [12]  700 	mov	r7,a
                                    701 ;	usb.c:82: USB_Rd_FIFO( Ep0.RxTx , BLen );
      000875 8F 74            [24]  702 	mov	_USB_Rd_FIFO_PARM_2,r7
      000877 90 00 64         [24]  703 	mov	dptr,#(_Ep0 + 0x0003)
      00087A 75 F0 40         [24]  704 	mov	b,#0x40
      00087D C0 07            [24]  705 	push	ar7
      00087F 12 07 F2         [24]  706 	lcall	_USB_Rd_FIFO
      000882 D0 07            [24]  707 	pop	ar7
                                    708 ;	usb.c:83: if (!(USB[RXSTAT] & ( STOVW | EDOVW )))
      000884 90 FF E2         [24]  709 	mov	dptr,#0xffe2
      000887 E0               [24]  710 	movx	a,@dptr
      000888 54 30            [12]  711 	anl	a,#0x30
      00088A 60 02            [24]  712 	jz	00162$
      00088C 80 C6            [24]  713 	sjmp	00101$
      00088E                        714 00162$:
                                    715 ;	usb.c:86: USB[EPCON] &= ~( RXSTL | TXSTL );        // Release Rx/Tx STAL
      00088E 90 FF E1         [24]  716 	mov	dptr,#0xffe1
      000891 E0               [24]  717 	movx	a,@dptr
      000892 54 3F            [12]  718 	anl	a,#0x3f
      000894 F0               [24]  719 	movx	@dptr,a
                                    720 ;	usb.c:87: USB[RXSTAT] &= ~RXSETUP;                 // Release Setup Token flag
      000895 90 FF E2         [24]  721 	mov	dptr,#0xffe2
      000898 E0               [24]  722 	movx	a,@dptr
      000899 54 BF            [12]  723 	anl	a,#0xbf
      00089B F0               [24]  724 	movx	@dptr,a
                                    725 ;	usb.c:88: Ep0.All = BLen;                          // Only for analytic "Urd"
      00089C 7E 00            [12]  726 	mov	r6,#0x00
      00089E 8F 71            [24]  727 	mov	((_Ep0 + 0x0010) + 0),r7
      0008A0 8E 72            [24]  728 	mov	((_Ep0 + 0x0010) + 1),r6
      0008A2 80 52            [24]  729 	sjmp	00120$
      0008A4                        730 00119$:
                                    731 ;	usb.c:90: else if ( Ep0.Stage == DFU_STAGE )
      0008A4 74 33            [12]  732 	mov	a,#0x33
      0008A6 B5 63 42         [24]  733 	cjne	a,(_Ep0 + 0x0002),00116$
                                    734 ;	usb.c:91: { BLen = USB[RXCNT];                       // Chk total Rx Data count in Byte  
      0008A9 90 FF E6         [24]  735 	mov	dptr,#0xffe6
      0008AC E0               [24]  736 	movx	a,@dptr
                                    737 ;	usb.c:92: Ep0.All -= BLen;
      0008AD FF               [12]  738 	mov	r7,a
      0008AE FD               [12]  739 	mov	r5,a
      0008AF 7E 00            [12]  740 	mov	r6,#0x00
      0008B1 E5 71            [12]  741 	mov	a,(_Ep0 + 0x0010)
      0008B3 C3               [12]  742 	clr	c
      0008B4 9D               [12]  743 	subb	a,r5
      0008B5 FD               [12]  744 	mov	r5,a
      0008B6 E5 72            [12]  745 	mov	a,((_Ep0 + 0x0010) + 1)
      0008B8 9E               [12]  746 	subb	a,r6
      0008B9 FE               [12]  747 	mov	r6,a
      0008BA 8D 71            [24]  748 	mov	((_Ep0 + 0x0010) + 0),r5
      0008BC 8E 72            [24]  749 	mov	((_Ep0 + 0x0010) + 1),r6
                                    750 ;	usb.c:94: USB_Rd_FIFO( Ep0.RxTx , BLen );
      0008BE 8F 74            [24]  751 	mov	_USB_Rd_FIFO_PARM_2,r7
      0008C0 90 00 64         [24]  752 	mov	dptr,#(_Ep0 + 0x0003)
      0008C3 75 F0 40         [24]  753 	mov	b,#0x40
      0008C6 C0 07            [24]  754 	push	ar7
      0008C8 12 07 F2         [24]  755 	lcall	_USB_Rd_FIFO
      0008CB D0 07            [24]  756 	pop	ar7
                                    757 ;	usb.c:95: if ( BLen == EP0_MAX )
      0008CD BF 08 0B         [24]  758 	cjne	r7,#0x08,00113$
                                    759 ;	usb.c:96: { USB[TXCNT] = 0;
      0008D0 90 FF F6         [24]  760 	mov	dptr,#0xfff6
      0008D3 E4               [12]  761 	clr	a
      0008D4 F0               [24]  762 	movx	@dptr,a
                                    763 ;	usb.c:97: Ep0.Stage = Ep0.RxTx[0];
      0008D5 AF 64            [24]  764 	mov	r7,(_Ep0 + 0x0003)
      0008D7 8F 63            [24]  765 	mov	(_Ep0 + 0x0002),r7
      0008D9 80 1B            [24]  766 	sjmp	00120$
      0008DB                        767 00113$:
                                    768 ;	usb.c:100: { LED_STATUS = Ep0.RxTx[0];
      0008DB 85 64 20         [24]  769 	mov	_LED_STATUS,(_Ep0 + 0x0003)
                                    770 ;	usb.c:101: KB_LED_Status();
      0008DE 12 03 07         [24]  771 	lcall	_KB_LED_Status
                                    772 ;	usb.c:102: USB[TXCNT] = 0;
      0008E1 90 FF F6         [24]  773 	mov	dptr,#0xfff6
      0008E4 E4               [12]  774 	clr	a
      0008E5 F0               [24]  775 	movx	@dptr,a
                                    776 ;	usb.c:103: Ep0.Stage = STATUSSTAGE;
      0008E6 75 63 A5         [24]  777 	mov	(_Ep0 + 0x0002),#0xa5
      0008E9 80 0B            [24]  778 	sjmp	00120$
      0008EB                        779 00116$:
                                    780 ;	usb.c:107: { Ep0.Stage = STATUSSTAGE;
      0008EB 75 63 A5         [24]  781 	mov	(_Ep0 + 0x0002),#0xa5
                                    782 ;	usb.c:108: USB[EPCON] |= ( RXSTL | TXSTL );         // Receive the host "ACK" transaction , we should set Rx/Tx STAL
      0008EE 90 FF E1         [24]  783 	mov	dptr,#0xffe1
      0008F1 E0               [24]  784 	movx	a,@dptr
      0008F2 44 C0            [12]  785 	orl	a,#0xc0
      0008F4 FF               [12]  786 	mov	r7,a
      0008F5 F0               [24]  787 	movx	@dptr,a
      0008F6                        788 00120$:
                                    789 ;	usb.c:111: USB[RXCON] |= RXFFRC;                        // Set this bit , meaning that Rx Data has Read Complete
      0008F6 90 FF E4         [24]  790 	mov	dptr,#0xffe4
      0008F9 E0               [24]  791 	movx	a,@dptr
      0008FA 44 10            [12]  792 	orl	a,#0x10
      0008FC F0               [24]  793 	movx	@dptr,a
                                    794 ;	usb.c:112: }
      0008FD 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'USB_Get_Status'
                                    798 ;------------------------------------------------------------
                                    799 ;	usb.c:115: void USB_Get_Status( void )
                                    800 ;	-----------------------------------------
                                    801 ;	 function USB_Get_Status
                                    802 ;	-----------------------------------------
      0008FE                        803 _USB_Get_Status:
                                    804 ;	usb.c:116: { Ep0.All = 2;                                 // Only 2 byte transfer to the host
      0008FE 75 71 02         [24]  805 	mov	((_Ep0 + 0x0010) + 0),#0x02
      000901 75 72 00         [24]  806 	mov	((_Ep0 + 0x0010) + 1),#0x00
                                    807 ;	usb.c:119: Ep0.RxTx[1] = 0;
      000904 75 65 00         [24]  808 	mov	(_Ep0 + 0x0004),#0x00
                                    809 ;	usb.c:120: switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      000907 AE 64            [24]  810 	mov	r6,(_Ep0 + 0x0003)
      000909 53 06 03         [24]  811 	anl	ar6,#0x03
      00090C 7F 00            [12]  812 	mov	r7,#0x00
      00090E BE 00 05         [24]  813 	cjne	r6,#0x00,00135$
      000911 BF 00 02         [24]  814 	cjne	r7,#0x00,00135$
      000914 80 0F            [24]  815 	sjmp	00101$
      000916                        816 00135$:
      000916 BE 01 04         [24]  817 	cjne	r6,#0x01,00136$
      000919 BF 00 01         [24]  818 	cjne	r7,#0x00,00136$
      00091C 22               [24]  819 	ret
      00091D                        820 00136$:
                                    821 ;	usb.c:121: { case DEVICEREQUEST:    if ( Ep0.RWEN )
      00091D BE 02 33         [24]  822 	cjne	r6,#0x02,00111$
      000920 BF 00 30         [24]  823 	cjne	r7,#0x00,00111$
      000923 80 0C            [24]  824 	sjmp	00105$
      000925                        825 00101$:
      000925 E5 61            [12]  826 	mov	a,_Ep0
      000927 60 04            [24]  827 	jz	00103$
                                    828 ;	usb.c:122: Ep0.RxTx[0] = 0x02;// Return Function Remove Wake-up Enable
      000929 75 64 02         [24]  829 	mov	(_Ep0 + 0x0003),#0x02
      00092C 22               [24]  830 	ret
      00092D                        831 00103$:
                                    832 ;	usb.c:124: Ep0.RxTx[0] = 0x00;// Return Function Remove Wake-up Disable
      00092D 75 64 00         [24]  833 	mov	(_Ep0 + 0x0003),#0x00
                                    834 ;	usb.c:125: break;            // Chk Remote wakeup enabled or not
                                    835 ;	usb.c:126: case ENDPOINTREQUEST:  USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
      000930 22               [24]  836 	ret
      000931                        837 00105$:
      000931 74 0F            [12]  838 	mov	a,#0x0f
      000933 55 68            [12]  839 	anl	a,(_Ep0 + 0x0007)
      000935 90 FF F1         [24]  840 	mov	dptr,#0xfff1
      000938 F0               [24]  841 	movx	@dptr,a
                                    842 ;	usb.c:127: if (( USB[EPCON] & RXSTL )||( USB[EPCON] & TXSTL ))
      000939 90 FF E1         [24]  843 	mov	dptr,#0xffe1
      00093C E0               [24]  844 	movx	a,@dptr
      00093D FF               [12]  845 	mov	r7,a
      00093E 20 E7 04         [24]  846 	jb	acc.7,00106$
      000941 EF               [12]  847 	mov	a,r7
      000942 30 E6 05         [24]  848 	jnb	acc.6,00107$
      000945                        849 00106$:
                                    850 ;	usb.c:128: Ep0.RxTx[0] = 0x01;// if EndPoint Rx/Tx STAL then set EndPoint Halt
      000945 75 64 01         [24]  851 	mov	(_Ep0 + 0x0003),#0x01
      000948 80 03            [24]  852 	sjmp	00108$
      00094A                        853 00107$:
                                    854 ;	usb.c:130: Ep0.RxTx[0] = 0x00;// else seting this EndPoint Avaliable for Rx/Tx  
      00094A 75 64 00         [24]  855 	mov	(_Ep0 + 0x0003),#0x00
      00094D                        856 00108$:
                                    857 ;	usb.c:131: USB[EPINDEX] = EP0;
      00094D 90 FF F1         [24]  858 	mov	dptr,#0xfff1
      000950 E4               [12]  859 	clr	a
      000951 F0               [24]  860 	movx	@dptr,a
                                    861 ;	usb.c:132: break;
                                    862 ;	usb.c:134: default:               USB[EPCON] |= ( RXSTL | TXSTL );
      000952 22               [24]  863 	ret
      000953                        864 00111$:
      000953 90 FF E1         [24]  865 	mov	dptr,#0xffe1
      000956 E0               [24]  866 	movx	a,@dptr
      000957 44 C0            [12]  867 	orl	a,#0xc0
      000959 F0               [24]  868 	movx	@dptr,a
                                    869 ;	usb.c:136: }
                                    870 ;	usb.c:137: }  	
      00095A 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'USB_Clear_Feature'
                                    874 ;------------------------------------------------------------
                                    875 ;	usb.c:140: void USB_Clear_Feature( void )
                                    876 ;	-----------------------------------------
                                    877 ;	 function USB_Clear_Feature
                                    878 ;	-----------------------------------------
      00095B                        879 _USB_Clear_Feature:
                                    880 ;	usb.c:141: { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      00095B AE 64            [24]  881 	mov	r6,(_Ep0 + 0x0003)
      00095D 53 06 03         [24]  882 	anl	ar6,#0x03
      000960 7F 00            [12]  883 	mov	r7,#0x00
      000962 BE 00 05         [24]  884 	cjne	r6,#0x00,00134$
      000965 BF 00 02         [24]  885 	cjne	r7,#0x00,00134$
      000968 80 0F            [24]  886 	sjmp	00101$
      00096A                        887 00134$:
      00096A BE 01 04         [24]  888 	cjne	r6,#0x01,00135$
      00096D BF 00 01         [24]  889 	cjne	r7,#0x00,00135$
      000970 22               [24]  890 	ret
      000971                        891 00135$:
                                    892 ;	usb.c:142: { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
      000971 BE 02 41         [24]  893 	cjne	r6,#0x02,00110$
      000974 BF 00 3E         [24]  894 	cjne	r7,#0x00,00110$
      000977 80 11            [24]  895 	sjmp	00105$
      000979                        896 00101$:
      000979 74 01            [12]  897 	mov	a,#0x01
      00097B B5 66 04         [24]  898 	cjne	a,(_Ep0 + 0x0005),00103$
                                    899 ;	usb.c:143: Ep0.RWEN = CLR;
      00097E 75 61 00         [24]  900 	mov	_Ep0,#0x00
      000981 22               [24]  901 	ret
      000982                        902 00103$:
                                    903 ;	usb.c:145: USB[EPCON] |= ( RXSTL | TXSTL );
      000982 90 FF E1         [24]  904 	mov	dptr,#0xffe1
      000985 E0               [24]  905 	movx	a,@dptr
      000986 44 C0            [12]  906 	orl	a,#0xc0
      000988 F0               [24]  907 	movx	@dptr,a
                                    908 ;	usb.c:146: break;            // Disable the Device Remote Wakeup function
                                    909 ;	usb.c:147: case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
      000989 22               [24]  910 	ret
      00098A                        911 00105$:
      00098A E5 66            [12]  912 	mov	a,(_Ep0 + 0x0005)
      00098C 70 1F            [24]  913 	jnz	00107$
                                    914 ;	usb.c:148: { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
      00098E 74 0F            [12]  915 	mov	a,#0x0f
      000990 55 68            [12]  916 	anl	a,(_Ep0 + 0x0007)
      000992 90 FF F1         [24]  917 	mov	dptr,#0xfff1
      000995 F0               [24]  918 	movx	@dptr,a
                                    919 ;	usb.c:149: USB[EPCON] &= ~( RXSTL | TXSTL );
      000996 90 FF E1         [24]  920 	mov	dptr,#0xffe1
      000999 E0               [24]  921 	movx	a,@dptr
      00099A 54 3F            [12]  922 	anl	a,#0x3f
      00099C F0               [24]  923 	movx	@dptr,a
                                    924 ;	usb.c:150: USB[RXSTAT] = RXSOVW;// Enable RXSEQ/TXSEQ bit can be Updata , and
      00099D 90 FF E2         [24]  925 	mov	dptr,#0xffe2
      0009A0 74 08            [12]  926 	mov	a,#0x08
      0009A2 F0               [24]  927 	movx	@dptr,a
                                    928 ;	usb.c:151: USB[TXSTAT] = TXSOVW;// set Rx/Tx toggle buffer into DATA0
      0009A3 90 FF F2         [24]  929 	mov	dptr,#0xfff2
      0009A6 F0               [24]  930 	movx	@dptr,a
                                    931 ;	usb.c:152: USB[EPINDEX] = EP0;
      0009A7 90 FF F1         [24]  932 	mov	dptr,#0xfff1
      0009AA E4               [12]  933 	clr	a
      0009AB F0               [24]  934 	movx	@dptr,a
      0009AC 22               [24]  935 	ret
      0009AD                        936 00107$:
                                    937 ;	usb.c:155: USB[EPCON] |= ( RXSTL | TXSTL );
      0009AD 90 FF E1         [24]  938 	mov	dptr,#0xffe1
      0009B0 E0               [24]  939 	movx	a,@dptr
      0009B1 44 C0            [12]  940 	orl	a,#0xc0
      0009B3 F0               [24]  941 	movx	@dptr,a
                                    942 ;	usb.c:156: break;
                                    943 ;	usb.c:158: default:               USB[EPCON] |= ( RXSTL | TXSTL );
      0009B4 22               [24]  944 	ret
      0009B5                        945 00110$:
      0009B5 90 FF E1         [24]  946 	mov	dptr,#0xffe1
      0009B8 E0               [24]  947 	movx	a,@dptr
      0009B9 44 C0            [12]  948 	orl	a,#0xc0
      0009BB F0               [24]  949 	movx	@dptr,a
                                    950 ;	usb.c:160: }
                                    951 ;	usb.c:161: }
      0009BC 22               [24]  952 	ret
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'USB_Set_Feature'
                                    955 ;------------------------------------------------------------
                                    956 ;	usb.c:164: void USB_Set_Feature( void )
                                    957 ;	-----------------------------------------
                                    958 ;	 function USB_Set_Feature
                                    959 ;	-----------------------------------------
      0009BD                        960 _USB_Set_Feature:
                                    961 ;	usb.c:165: { switch( Ep0.RxTx[0] & 0x03 )                 // Request Type ( Reserve low 2 bit )
      0009BD AE 64            [24]  962 	mov	r6,(_Ep0 + 0x0003)
      0009BF 53 06 03         [24]  963 	anl	ar6,#0x03
      0009C2 7F 00            [12]  964 	mov	r7,#0x00
      0009C4 BE 00 05         [24]  965 	cjne	r6,#0x00,00134$
      0009C7 BF 00 02         [24]  966 	cjne	r7,#0x00,00134$
      0009CA 80 0F            [24]  967 	sjmp	00101$
      0009CC                        968 00134$:
      0009CC BE 01 04         [24]  969 	cjne	r6,#0x01,00135$
      0009CF BF 00 01         [24]  970 	cjne	r7,#0x00,00135$
      0009D2 22               [24]  971 	ret
      0009D3                        972 00135$:
                                    973 ;	usb.c:166: { case DEVICEREQUEST:    if ( Ep0.RxTx[2] == DEVICE_REMOTE_WAKEUP )
      0009D3 BE 02 37         [24]  974 	cjne	r6,#0x02,00110$
      0009D6 BF 00 34         [24]  975 	cjne	r7,#0x00,00110$
      0009D9 80 11            [24]  976 	sjmp	00105$
      0009DB                        977 00101$:
      0009DB 74 01            [12]  978 	mov	a,#0x01
      0009DD B5 66 04         [24]  979 	cjne	a,(_Ep0 + 0x0005),00103$
                                    980 ;	usb.c:167: Ep0.RWEN = SET;
      0009E0 75 61 01         [24]  981 	mov	_Ep0,#0x01
      0009E3 22               [24]  982 	ret
      0009E4                        983 00103$:
                                    984 ;	usb.c:169: USB[EPCON] |= ( RXSTL | TXSTL );
      0009E4 90 FF E1         [24]  985 	mov	dptr,#0xffe1
      0009E7 E0               [24]  986 	movx	a,@dptr
      0009E8 44 C0            [12]  987 	orl	a,#0xc0
      0009EA F0               [24]  988 	movx	@dptr,a
                                    989 ;	usb.c:170: break;            // Disable the Device Remote Wakeup function
                                    990 ;	usb.c:171: case ENDPOINTREQUEST:  if ( Ep0.RxTx[2] == ENDPOINT_HALT )
      0009EB 22               [24]  991 	ret
      0009EC                        992 00105$:
      0009EC E5 66            [12]  993 	mov	a,(_Ep0 + 0x0005)
      0009EE 70 15            [24]  994 	jnz	00107$
                                    995 ;	usb.c:172: { USB[EPINDEX] = Ep0.RxTx[4] & 0x0F;
      0009F0 74 0F            [12]  996 	mov	a,#0x0f
      0009F2 55 68            [12]  997 	anl	a,(_Ep0 + 0x0007)
      0009F4 90 FF F1         [24]  998 	mov	dptr,#0xfff1
      0009F7 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	usb.c:173: USB[EPCON] |= ( RXSTL | TXSTL );
      0009F8 90 FF E1         [24] 1001 	mov	dptr,#0xffe1
      0009FB E0               [24] 1002 	movx	a,@dptr
      0009FC 44 C0            [12] 1003 	orl	a,#0xc0
      0009FE F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	usb.c:174: USB[EPINDEX] = EP0;
      0009FF 90 FF F1         [24] 1006 	mov	dptr,#0xfff1
      000A02 E4               [12] 1007 	clr	a
      000A03 F0               [24] 1008 	movx	@dptr,a
      000A04 22               [24] 1009 	ret
      000A05                       1010 00107$:
                                   1011 ;	usb.c:177: USB[EPCON] |= ( RXSTL | TXSTL );
      000A05 90 FF E1         [24] 1012 	mov	dptr,#0xffe1
      000A08 E0               [24] 1013 	movx	a,@dptr
      000A09 44 C0            [12] 1014 	orl	a,#0xc0
      000A0B F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	usb.c:178: break;
                                   1017 ;	usb.c:180: default:               USB[EPCON] |= ( RXSTL | TXSTL );
      000A0C 22               [24] 1018 	ret
      000A0D                       1019 00110$:
      000A0D 90 FF E1         [24] 1020 	mov	dptr,#0xffe1
      000A10 E0               [24] 1021 	movx	a,@dptr
      000A11 44 C0            [12] 1022 	orl	a,#0xc0
      000A13 F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	usb.c:182: }
                                   1025 ;	usb.c:183: }  
      000A14 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'USB_Get_Descriptor'
                                   1029 ;------------------------------------------------------------
                                   1030 ;WLen                      Allocated with name '_USB_Get_Descriptor_WLen_65536_35'
                                   1031 ;------------------------------------------------------------
                                   1032 ;	usb.c:186: void USB_Get_Descriptor( void )
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function USB_Get_Descriptor
                                   1035 ;	-----------------------------------------
      000A15                       1036 _USB_Get_Descriptor:
                                   1037 ;	usb.c:190: WLen.B[0] = 0x00;                            // MSB
      000A15 75 74 00         [24] 1038 	mov	_USB_Get_Descriptor_WLen_65536_35,#0x00
                                   1039 ;	usb.c:191: Ep0.All = Ep0.RxTx[7];                       // MSB
      000A18 AE 6B            [24] 1040 	mov	r6,(_Ep0 + 0x000a)
      000A1A 7F 00            [12] 1041 	mov	r7,#0x00
      000A1C 8E 71            [24] 1042 	mov	((_Ep0 + 0x0010) + 0),r6
      000A1E 8F 72            [24] 1043 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1044 ;	usb.c:192: Ep0.All <<= 8;
      000A20 8E 07            [24] 1045 	mov	ar7,r6
      000A22 7E 00            [12] 1046 	mov	r6,#0x00
      000A24 8E 71            [24] 1047 	mov	((_Ep0 + 0x0010) + 0),r6
      000A26 8F 72            [24] 1048 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1049 ;	usb.c:193: Ep0.All += Ep0.RxTx[6];                      // LSB
      000A28 AC 6A            [24] 1050 	mov	r4,(_Ep0 + 0x0009)
      000A2A 7D 00            [12] 1051 	mov	r5,#0x00
      000A2C EC               [12] 1052 	mov	a,r4
      000A2D 2E               [12] 1053 	add	a,r6
      000A2E FE               [12] 1054 	mov	r6,a
      000A2F ED               [12] 1055 	mov	a,r5
      000A30 3F               [12] 1056 	addc	a,r7
      000A31 FF               [12] 1057 	mov	r7,a
      000A32 8E 71            [24] 1058 	mov	((_Ep0 + 0x0010) + 0),r6
      000A34 8F 72            [24] 1059 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1060 ;	usb.c:194: switch( Ep0.RxTx[3] ) { 
      000A36 AF 67            [24] 1061 	mov	r7,(_Ep0 + 0x0006)
      000A38 BF 01 02         [24] 1062 	cjne	r7,#0x01,00167$
      000A3B 80 19            [24] 1063 	sjmp	00101$
      000A3D                       1064 00167$:
      000A3D BF 02 02         [24] 1065 	cjne	r7,#0x02,00168$
      000A40 80 28            [24] 1066 	sjmp	00102$
      000A42                       1067 00168$:
      000A42 BF 03 02         [24] 1068 	cjne	r7,#0x03,00169$
      000A45 80 3B            [24] 1069 	sjmp	00103$
      000A47                       1070 00169$:
      000A47 BF 21 03         [24] 1071 	cjne	r7,#0x21,00170$
      000A4A 02 0B 12         [24] 1072 	ljmp	00119$
      000A4D                       1073 00170$:
      000A4D BF 22 03         [24] 1074 	cjne	r7,#0x22,00171$
      000A50 02 0B 25         [24] 1075 	ljmp	00120$
      000A53                       1076 00171$:
      000A53 02 0B 40         [24] 1077 	ljmp	00121$
                                   1078 ;	usb.c:195: case DEVICEDESCRIPTOR:        
      000A56                       1079 00101$:
                                   1080 ;	usb.c:196: Ep0.Buf = (void *)DEVICE_DESCRIPTOR;
      000A56 75 6C D9         [24] 1081 	mov	((_Ep0 + 0x000b) + 0),#_DEVICE_DESCRIPTOR
      000A59 75 6D 13         [24] 1082 	mov	((_Ep0 + 0x000b) + 1),#(_DEVICE_DESCRIPTOR >> 8)
      000A5C 75 6E 80         [24] 1083 	mov	((_Ep0 + 0x000b) + 2),#0x80
                                   1084 ;	usb.c:197: WLen.B[1] = Ep0.Buf[0];
      000A5F 90 13 D9         [24] 1085 	mov	dptr,#_DEVICE_DESCRIPTOR
      000A62 E4               [12] 1086 	clr	a
      000A63 93               [24] 1087 	movc	a,@a+dptr
      000A64 FF               [12] 1088 	mov	r7,a
      000A65 8F 75            [24] 1089 	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
                                   1090 ;	usb.c:198: break;
      000A67 02 0B 48         [24] 1091 	ljmp	00122$
                                   1092 ;	usb.c:199: case CONFIGURATIONDESCRIPTOR: 
      000A6A                       1093 00102$:
                                   1094 ;	usb.c:200: Ep0.Buf = (void *)CONGFIGURATION_DESCRIPTOR;
      000A6A 75 6C EB         [24] 1095 	mov	((_Ep0 + 0x000b) + 0),#_CONGFIGURATION_DESCRIPTOR
      000A6D 75 6D 13         [24] 1096 	mov	((_Ep0 + 0x000b) + 1),#(_CONGFIGURATION_DESCRIPTOR >> 8)
      000A70 75 6E 80         [24] 1097 	mov	((_Ep0 + 0x000b) + 2),#0x80
                                   1098 ;	usb.c:201: WLen.B[1] = Ep0.Buf[2];// LSB
      000A73 90 13 ED         [24] 1099 	mov	dptr,#(_CONGFIGURATION_DESCRIPTOR + 0x0002)
      000A76 75 F0 80         [24] 1100 	mov	b,#0x80
      000A79 12 10 82         [24] 1101 	lcall	__gptrget
      000A7C FF               [12] 1102 	mov	r7,a
      000A7D 8F 75            [24] 1103 	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
                                   1104 ;	usb.c:202: break;
      000A7F 02 0B 48         [24] 1105 	ljmp	00122$
                                   1106 ;	usb.c:203: case STRINGDESCRIPTOR:        
      000A82                       1107 00103$:
                                   1108 ;	usb.c:204: switch( Ep0.RxTx[2] ) { 
      000A82 E5 66            [12] 1109 	mov	a,(_Ep0 + 0x0005)
      000A84 FF               [12] 1110 	mov	r7,a
      000A85 24 FC            [12] 1111 	add	a,#0xff - 0x03
      000A87 50 03            [24] 1112 	jnc	00172$
      000A89 02 0A F9         [24] 1113 	ljmp	00117$
      000A8C                       1114 00172$:
      000A8C EF               [12] 1115 	mov	a,r7
      000A8D 2F               [12] 1116 	add	a,r7
                                   1117 ;	usb.c:205: case 0:  
      000A8E 90 0A 92         [24] 1118 	mov	dptr,#00173$
      000A91 73               [24] 1119 	jmp	@a+dptr
      000A92                       1120 00173$:
      000A92 80 06            [24] 1121 	sjmp	00104$
      000A94 80 0F            [24] 1122 	sjmp	00105$
      000A96 80 29            [24] 1123 	sjmp	00109$
      000A98 80 43            [24] 1124 	sjmp	00113$
      000A9A                       1125 00104$:
                                   1126 ;	usb.c:206: Ep0.Buf = (void *)LANGUAGEID_DESCRIPTOR;
      000A9A 75 6C 0D         [24] 1127 	mov	((_Ep0 + 0x000b) + 0),#_LANGUAGEID_DESCRIPTOR
      000A9D 75 6D 14         [24] 1128 	mov	((_Ep0 + 0x000b) + 1),#(_LANGUAGEID_DESCRIPTOR >> 8)
      000AA0 75 6E 80         [24] 1129 	mov	((_Ep0 + 0x000b) + 2),#0x80
                                   1130 ;	usb.c:207: break;
                                   1131 ;	usb.c:208: case 1:  
      000AA3 80 5C            [24] 1132 	sjmp	00118$
      000AA5                       1133 00105$:
                                   1134 ;	usb.c:209: if ( DEVICE_DESCRIPTOR[14] )
      000AA5 90 13 E7         [24] 1135 	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x000e)
      000AA8 E4               [12] 1136 	clr	a
      000AA9 93               [24] 1137 	movc	a,@a+dptr
      000AAA 60 0B            [24] 1138 	jz	00107$
                                   1139 ;	usb.c:210: Ep0.Buf = (void *)MANUFACTURER_DESCRIPTOR;
      000AAC 75 6C 11         [24] 1140 	mov	((_Ep0 + 0x000b) + 0),#_MANUFACTURER_DESCRIPTOR
      000AAF 75 6D 14         [24] 1141 	mov	((_Ep0 + 0x000b) + 1),#(_MANUFACTURER_DESCRIPTOR >> 8)
      000AB2 75 6E 80         [24] 1142 	mov	((_Ep0 + 0x000b) + 2),#0x80
      000AB5 80 4A            [24] 1143 	sjmp	00118$
      000AB7                       1144 00107$:
                                   1145 ;	usb.c:212: USB[EPCON] |= ( RXSTL | TXSTL );
      000AB7 90 FF E1         [24] 1146 	mov	dptr,#0xffe1
      000ABA E0               [24] 1147 	movx	a,@dptr
      000ABB 44 C0            [12] 1148 	orl	a,#0xc0
      000ABD FF               [12] 1149 	mov	r7,a
      000ABE F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	usb.c:213: break;
                                   1152 ;	usb.c:214: case 2:  
      000ABF 80 40            [24] 1153 	sjmp	00118$
      000AC1                       1154 00109$:
                                   1155 ;	usb.c:215: if ( DEVICE_DESCRIPTOR[15] )
      000AC1 90 13 E8         [24] 1156 	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x000f)
      000AC4 E4               [12] 1157 	clr	a
      000AC5 93               [24] 1158 	movc	a,@a+dptr
      000AC6 60 0B            [24] 1159 	jz	00111$
                                   1160 ;	usb.c:216: Ep0.Buf = (void *)PRODUCT_DESCRIPTOR;
      000AC8 75 6C 37         [24] 1161 	mov	((_Ep0 + 0x000b) + 0),#_PRODUCT_DESCRIPTOR
      000ACB 75 6D 14         [24] 1162 	mov	((_Ep0 + 0x000b) + 1),#(_PRODUCT_DESCRIPTOR >> 8)
      000ACE 75 6E 80         [24] 1163 	mov	((_Ep0 + 0x000b) + 2),#0x80
      000AD1 80 2E            [24] 1164 	sjmp	00118$
      000AD3                       1165 00111$:
                                   1166 ;	usb.c:218: USB[EPCON] |= ( RXSTL | TXSTL );
      000AD3 90 FF E1         [24] 1167 	mov	dptr,#0xffe1
      000AD6 E0               [24] 1168 	movx	a,@dptr
      000AD7 44 C0            [12] 1169 	orl	a,#0xc0
      000AD9 FF               [12] 1170 	mov	r7,a
      000ADA F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	usb.c:219: break;
                                   1173 ;	usb.c:220: case 3:  
      000ADB 80 24            [24] 1174 	sjmp	00118$
      000ADD                       1175 00113$:
                                   1176 ;	usb.c:221: if ( DEVICE_DESCRIPTOR[16] )
      000ADD 90 13 E9         [24] 1177 	mov	dptr,#(_DEVICE_DESCRIPTOR + 0x0010)
      000AE0 E4               [12] 1178 	clr	a
      000AE1 93               [24] 1179 	movc	a,@a+dptr
      000AE2 60 0B            [24] 1180 	jz	00115$
                                   1181 ;	usb.c:222: Ep0.Buf = (void *)SERIALNUMBER_DESCRIPTOR;
      000AE4 75 6C 7B         [24] 1182 	mov	((_Ep0 + 0x000b) + 0),#_SERIALNUMBER_DESCRIPTOR
      000AE7 75 6D 14         [24] 1183 	mov	((_Ep0 + 0x000b) + 1),#(_SERIALNUMBER_DESCRIPTOR >> 8)
      000AEA 75 6E 80         [24] 1184 	mov	((_Ep0 + 0x000b) + 2),#0x80
      000AED 80 12            [24] 1185 	sjmp	00118$
      000AEF                       1186 00115$:
                                   1187 ;	usb.c:224: USB[EPCON] |= ( RXSTL | TXSTL );
      000AEF 90 FF E1         [24] 1188 	mov	dptr,#0xffe1
      000AF2 E0               [24] 1189 	movx	a,@dptr
      000AF3 44 C0            [12] 1190 	orl	a,#0xc0
      000AF5 FF               [12] 1191 	mov	r7,a
      000AF6 F0               [24] 1192 	movx	@dptr,a
                                   1193 ;	usb.c:225: break;
                                   1194 ;	usb.c:226: default: USB[EPCON] |= ( RXSTL | TXSTL );
      000AF7 80 08            [24] 1195 	sjmp	00118$
      000AF9                       1196 00117$:
      000AF9 90 FF E1         [24] 1197 	mov	dptr,#0xffe1
      000AFC E0               [24] 1198 	movx	a,@dptr
      000AFD 44 C0            [12] 1199 	orl	a,#0xc0
      000AFF FF               [12] 1200 	mov	r7,a
      000B00 F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	usb.c:228: }
      000B01                       1203 00118$:
                                   1204 ;	usb.c:229: WLen.B[1] = Ep0.Buf[0];
      000B01 85 6C 82         [24] 1205 	mov	dpl,(_Ep0 + 0x000b)
      000B04 85 6D 83         [24] 1206 	mov	dph,((_Ep0 + 0x000b) + 1)
      000B07 85 6E F0         [24] 1207 	mov	b,((_Ep0 + 0x000b) + 2)
      000B0A 12 10 82         [24] 1208 	lcall	__gptrget
      000B0D FF               [12] 1209 	mov	r7,a
      000B0E 8F 75            [24] 1210 	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
                                   1211 ;	usb.c:230: break;
                                   1212 ;	usb.c:231: case HIDDESCRIPTOR:           
      000B10 80 36            [24] 1213 	sjmp	00122$
      000B12                       1214 00119$:
                                   1215 ;	usb.c:232: Ep0.Buf = (void *)KB_HID_DESCRIPTOR;
      000B12 75 6C FD         [24] 1216 	mov	((_Ep0 + 0x000b) + 0),#_KB_HID_DESCRIPTOR
      000B15 75 6D 13         [24] 1217 	mov	((_Ep0 + 0x000b) + 1),#(_KB_HID_DESCRIPTOR >> 8)
      000B18 75 6E 80         [24] 1218 	mov	((_Ep0 + 0x000b) + 2),#0x80
                                   1219 ;	usb.c:233: WLen.B[1] = Ep0.Buf[0];
      000B1B 90 13 FD         [24] 1220 	mov	dptr,#_KB_HID_DESCRIPTOR
      000B1E E4               [12] 1221 	clr	a
      000B1F 93               [24] 1222 	movc	a,@a+dptr
      000B20 FF               [12] 1223 	mov	r7,a
      000B21 8F 75            [24] 1224 	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
                                   1225 ;	usb.c:234: break;
                                   1226 ;	usb.c:235: case HIDREPORT:               
      000B23 80 23            [24] 1227 	sjmp	00122$
      000B25                       1228 00120$:
                                   1229 ;	usb.c:236: Ep0.Buf = (void *)KB_HID_REPORT;
      000B25 75 6C 90         [24] 1230 	mov	((_Ep0 + 0x000b) + 0),#_KB_HID_REPORT
      000B28 75 6D 13         [24] 1231 	mov	((_Ep0 + 0x000b) + 1),#(_KB_HID_REPORT >> 8)
      000B2B 75 6E 80         [24] 1232 	mov	((_Ep0 + 0x000b) + 2),#0x80
                                   1233 ;	usb.c:237: WLen.B[1] = KB_HID_DESCRIPTOR[7];
      000B2E 90 14 04         [24] 1234 	mov	dptr,#(_KB_HID_DESCRIPTOR + 0x0007)
      000B31 E4               [12] 1235 	clr	a
      000B32 93               [24] 1236 	movc	a,@a+dptr
      000B33 FF               [12] 1237 	mov	r7,a
      000B34 8F 75            [24] 1238 	mov	(_USB_Get_Descriptor_WLen_65536_35 + 0x0001),r7
                                   1239 ;	usb.c:238: WLen.B[0] = KB_HID_DESCRIPTOR[8];
      000B36 90 14 05         [24] 1240 	mov	dptr,#(_KB_HID_DESCRIPTOR + 0x0008)
      000B39 E4               [12] 1241 	clr	a
      000B3A 93               [24] 1242 	movc	a,@a+dptr
      000B3B FF               [12] 1243 	mov	r7,a
      000B3C 8F 74            [24] 1244 	mov	_USB_Get_Descriptor_WLen_65536_35,r7
                                   1245 ;	usb.c:239: break;
                                   1246 ;	usb.c:240: default:                      
      000B3E 80 08            [24] 1247 	sjmp	00122$
      000B40                       1248 00121$:
                                   1249 ;	usb.c:241: USB[EPCON] |= ( RXSTL | TXSTL );
      000B40 90 FF E1         [24] 1250 	mov	dptr,#0xffe1
      000B43 E0               [24] 1251 	movx	a,@dptr
      000B44 44 C0            [12] 1252 	orl	a,#0xc0
      000B46 FF               [12] 1253 	mov	r7,a
      000B47 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	usb.c:243: }
      000B48                       1256 00122$:
                                   1257 ;	usb.c:245: if (Ep0.All > WLen.W)
      000B48 C3               [12] 1258 	clr	c
      000B49 E5 74            [12] 1259 	mov	a,_USB_Get_Descriptor_WLen_65536_35
      000B4B 95 71            [12] 1260 	subb	a,(_Ep0 + 0x0010)
      000B4D E5 75            [12] 1261 	mov	a,(_USB_Get_Descriptor_WLen_65536_35 + 1)
      000B4F 95 72            [12] 1262 	subb	a,((_Ep0 + 0x0010) + 1)
      000B51 50 06            [24] 1263 	jnc	00125$
                                   1264 ;	usb.c:246: Ep0.All = WLen.W;
      000B53 85 74 71         [24] 1265 	mov	((_Ep0 + 0x0010) + 0),_USB_Get_Descriptor_WLen_65536_35
      000B56 85 75 72         [24] 1266 	mov	((_Ep0 + 0x0010) + 1),(_USB_Get_Descriptor_WLen_65536_35 + 1)
      000B59                       1267 00125$:
                                   1268 ;	usb.c:247: }
      000B59 22               [24] 1269 	ret
                                   1270 ;------------------------------------------------------------
                                   1271 ;Allocation info for local variables in function 'USB_Set_Configuration'
                                   1272 ;------------------------------------------------------------
                                   1273 ;i                         Allocated to registers r7 
                                   1274 ;------------------------------------------------------------
                                   1275 ;	usb.c:250: void USB_Set_Configuration( void )
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function USB_Set_Configuration
                                   1278 ;	-----------------------------------------
      000B5A                       1279 _USB_Set_Configuration:
                                   1280 ;	usb.c:254: Ep0.Tmp = Ep0.RxTx[2];
      000B5A AF 66            [24] 1281 	mov	r7,(_Ep0 + 0x0005)
                                   1282 ;	usb.c:255: if ( Ep0.Tmp )
      000B5C EF               [12] 1283 	mov	a,r7
      000B5D F5 73            [12] 1284 	mov	(_Ep0 + 0x0012),a
      000B5F 60 2B            [24] 1285 	jz	00115$
                                   1286 ;	usb.c:256: { for ( i=1 ; i<6 ; i++ )
      000B61 7F 01            [12] 1287 	mov	r7,#0x01
      000B63                       1288 00106$:
                                   1289 ;	usb.c:257: { USB[EPINDEX] = i;
      000B63 90 FF F1         [24] 1290 	mov	dptr,#0xfff1
      000B66 EF               [12] 1291 	mov	a,r7
      000B67 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	usb.c:258: USB[EPCON] = ( TXEPEN | RXEPEN );   // Enable Receive Input/Transmit Output
      000B68 90 FF E1         [24] 1294 	mov	dptr,#0xffe1
      000B6B 74 05            [12] 1295 	mov	a,#0x05
      000B6D F0               [24] 1296 	movx	@dptr,a
                                   1297 ;	usb.c:259: USB[RXCON] = RXCLR;                 // Clear Rx FIFO
      000B6E 90 FF E4         [24] 1298 	mov	dptr,#0xffe4
      000B71 74 80            [12] 1299 	mov	a,#0x80
      000B73 F0               [24] 1300 	movx	@dptr,a
                                   1301 ;	usb.c:260: USB[TXCON] = TXCLR;                 // Clear Tx FIFO
      000B74 90 FF F4         [24] 1302 	mov	dptr,#0xfff4
      000B77 F0               [24] 1303 	movx	@dptr,a
                                   1304 ;	usb.c:261: USB[RXSTAT] = RXSOVW;               // Enable RXSEQ/TXSEQ bit can be Updata , and
      000B78 90 FF E2         [24] 1305 	mov	dptr,#0xffe2
      000B7B C4               [12] 1306 	swap	a
      000B7C F0               [24] 1307 	movx	@dptr,a
                                   1308 ;	usb.c:262: USB[TXSTAT] = TXSOVW;               // set Rx/Tx toggle buffer into DATA0
      000B7D 90 FF F2         [24] 1309 	mov	dptr,#0xfff2
      000B80 F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	usb.c:256: { for ( i=1 ; i<6 ; i++ )
      000B81 0F               [12] 1312 	inc	r7
      000B82 BF 06 00         [24] 1313 	cjne	r7,#0x06,00131$
      000B85                       1314 00131$:
      000B85 40 DC            [24] 1315 	jc	00106$
                                   1316 ;	usb.c:264: Ep0.EmuOk = SET;                         // Emulation Flow pass
      000B87 75 62 01         [24] 1317 	mov	(_Ep0 + 0x0001),#0x01
                                   1318 ;	usb.c:267: { for ( i=1 ; i<6 ; i++ )
      000B8A 80 12            [24] 1319 	sjmp	00105$
      000B8C                       1320 00115$:
      000B8C 7F 01            [12] 1321 	mov	r7,#0x01
      000B8E                       1322 00108$:
                                   1323 ;	usb.c:268: { USB[EPINDEX] = i;
      000B8E 90 FF F1         [24] 1324 	mov	dptr,#0xfff1
      000B91 EF               [12] 1325 	mov	a,r7
      000B92 F0               [24] 1326 	movx	@dptr,a
                                   1327 ;	usb.c:269: USB[EPCON] = 0x00;
      000B93 90 FF E1         [24] 1328 	mov	dptr,#0xffe1
      000B96 E4               [12] 1329 	clr	a
      000B97 F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	usb.c:267: { for ( i=1 ; i<6 ; i++ )
      000B98 0F               [12] 1332 	inc	r7
      000B99 BF 06 00         [24] 1333 	cjne	r7,#0x06,00133$
      000B9C                       1334 00133$:
      000B9C 40 F0            [24] 1335 	jc	00108$
      000B9E                       1336 00105$:
                                   1337 ;	usb.c:272: USB[EPINDEX] = EP0;
      000B9E 90 FF F1         [24] 1338 	mov	dptr,#0xfff1
      000BA1 E4               [12] 1339 	clr	a
      000BA2 F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	usb.c:273: }
      000BA3 22               [24] 1342 	ret
                                   1343 ;------------------------------------------------------------
                                   1344 ;Allocation info for local variables in function 'USB_Set_Interface'
                                   1345 ;------------------------------------------------------------
                                   1346 ;	usb.c:276: void USB_Set_Interface( void )
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function USB_Set_Interface
                                   1349 ;	-----------------------------------------
      000BA4                       1350 _USB_Set_Interface:
                                   1351 ;	usb.c:277: { switch( Ep0.RxTx[4] )
      000BA4 E4               [12] 1352 	clr	a
      000BA5 B5 68 12         [24] 1353 	cjne	a,(_Ep0 + 0x0007),00105$
                                   1354 ;	usb.c:278: { case 0:  if ( Ep0.RxTx[2] > 0 )          // For Interface1 ( HID )
      000BA8 E5 66            [12] 1355 	mov	a,(_Ep0 + 0x0005)
      000BAA 60 08            [24] 1356 	jz	00103$
                                   1357 ;	usb.c:279: USB[EPCON] |= ( RXSTL | TXSTL );
      000BAC 90 FF E1         [24] 1358 	mov	dptr,#0xffe1
      000BAF E0               [24] 1359 	movx	a,@dptr
      000BB0 44 C0            [12] 1360 	orl	a,#0xc0
      000BB2 F0               [24] 1361 	movx	@dptr,a
      000BB3 22               [24] 1362 	ret
      000BB4                       1363 00103$:
                                   1364 ;	usb.c:281: USB[TXCNT] = 0;
      000BB4 90 FF F6         [24] 1365 	mov	dptr,#0xfff6
      000BB7 E4               [12] 1366 	clr	a
      000BB8 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	usb.c:282: break;
                                   1369 ;	usb.c:283: default: USB[EPCON] |= ( RXSTL | TXSTL );
      000BB9 22               [24] 1370 	ret
      000BBA                       1371 00105$:
      000BBA 90 FF E1         [24] 1372 	mov	dptr,#0xffe1
      000BBD E0               [24] 1373 	movx	a,@dptr
      000BBE 44 C0            [12] 1374 	orl	a,#0xc0
      000BC0 F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	usb.c:285: }
                                   1377 ;	usb.c:286: }
      000BC1 22               [24] 1378 	ret
                                   1379 ;------------------------------------------------------------
                                   1380 ;Allocation info for local variables in function 'USB_Get_Interface'
                                   1381 ;------------------------------------------------------------
                                   1382 ;	usb.c:289: void USB_Get_Interface( void )
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function USB_Get_Interface
                                   1385 ;	-----------------------------------------
      000BC2                       1386 _USB_Get_Interface:
                                   1387 ;	usb.c:290: { Ep0.All = 1;
      000BC2 75 71 01         [24] 1388 	mov	((_Ep0 + 0x0010) + 0),#0x01
                                   1389 ;	usb.c:291: switch( Ep0.RxTx[4] )
      000BC5 E4               [12] 1390 	clr	a
      000BC6 F5 72            [12] 1391 	mov	((_Ep0 + 0x0010) + 1),a
      000BC8 B5 68 04         [24] 1392 	cjne	a,(_Ep0 + 0x0007),00102$
                                   1393 ;	usb.c:292: { case 0:  Ep0.RxTx[0] = 0;                // For Interface1 ( HID )
      000BCB 75 64 00         [24] 1394 	mov	(_Ep0 + 0x0003),#0x00
                                   1395 ;	usb.c:293: break;
                                   1396 ;	usb.c:294: default: USB[EPCON] |= ( RXSTL | TXSTL );
      000BCE 22               [24] 1397 	ret
      000BCF                       1398 00102$:
      000BCF 90 FF E1         [24] 1399 	mov	dptr,#0xffe1
      000BD2 E0               [24] 1400 	movx	a,@dptr
      000BD3 44 C0            [12] 1401 	orl	a,#0xc0
      000BD5 F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	usb.c:296: }
                                   1404 ;	usb.c:297: }
      000BD6 22               [24] 1405 	ret
                                   1406 ;------------------------------------------------------------
                                   1407 ;Allocation info for local variables in function 'USB_CtrlRd'
                                   1408 ;------------------------------------------------------------
                                   1409 ;BLen                      Allocated to registers r5 
                                   1410 ;------------------------------------------------------------
                                   1411 ;	usb.c:300: void USB_CtrlRd( void )                          // Host In , USB Out ( Only for EP0 )
                                   1412 ;	-----------------------------------------
                                   1413 ;	 function USB_CtrlRd
                                   1414 ;	-----------------------------------------
      000BD7                       1415 _USB_CtrlRd:
                                   1416 ;	usb.c:304: if ( Ep0.Stage == DATASTAGE )                // In DATASTAGE we should move Data to TXFIFO
      000BD7 74 5A            [12] 1417 	mov	a,#0x5a
      000BD9 B5 63 4E         [24] 1418 	cjne	a,(_Ep0 + 0x0002),00109$
                                   1419 ;	usb.c:305: { if ( Ep0.All > Ep0.Unit )
      000BDC AE 71            [24] 1420 	mov	r6,((_Ep0 + 0x0010) + 0)
      000BDE AF 72            [24] 1421 	mov	r7,((_Ep0 + 0x0010) + 1)
      000BE0 AD 70            [24] 1422 	mov	r5,(_Ep0 + 0x000f)
      000BE2 8D 03            [24] 1423 	mov	ar3,r5
      000BE4 7C 00            [12] 1424 	mov	r4,#0x00
      000BE6 C3               [12] 1425 	clr	c
      000BE7 EB               [12] 1426 	mov	a,r3
      000BE8 9E               [12] 1427 	subb	a,r6
      000BE9 EC               [12] 1428 	mov	a,r4
      000BEA 9F               [12] 1429 	subb	a,r7
      000BEB 50 02            [24] 1430 	jnc	00102$
                                   1431 ;	usb.c:306: BLen = Ep0.Unit;
      000BED 80 02            [24] 1432 	sjmp	00103$
      000BEF                       1433 00102$:
                                   1434 ;	usb.c:308: BLen = Ep0.All;
      000BEF 8E 05            [24] 1435 	mov	ar5,r6
      000BF1                       1436 00103$:
                                   1437 ;	usb.c:309: USB_Wr_FIFO( Ep0.Buf , BLen );
      000BF1 8D 74            [24] 1438 	mov	_USB_Wr_FIFO_PARM_2,r5
      000BF3 85 6C 82         [24] 1439 	mov	dpl,(_Ep0 + 0x000b)
      000BF6 85 6D 83         [24] 1440 	mov	dph,((_Ep0 + 0x000b) + 1)
      000BF9 85 6E F0         [24] 1441 	mov	b,((_Ep0 + 0x000b) + 2)
      000BFC C0 05            [24] 1442 	push	ar5
      000BFE 12 08 1A         [24] 1443 	lcall	_USB_Wr_FIFO
      000C01 D0 05            [24] 1444 	pop	ar5
                                   1445 ;	usb.c:310: USB[TXCNT] = BLen;                       // Set this byte will Trigger USB to Transmit Data to the Host
      000C03 90 FF F6         [24] 1446 	mov	dptr,#0xfff6
      000C06 ED               [12] 1447 	mov	a,r5
      000C07 F0               [24] 1448 	movx	@dptr,a
                                   1449 ;	usb.c:311: Ep0.All -= BLen;                         // Calculated the Remain Data size
      000C08 8D 06            [24] 1450 	mov	ar6,r5
      000C0A 7F 00            [12] 1451 	mov	r7,#0x00
      000C0C E5 71            [12] 1452 	mov	a,(_Ep0 + 0x0010)
      000C0E C3               [12] 1453 	clr	c
      000C0F 9E               [12] 1454 	subb	a,r6
      000C10 FE               [12] 1455 	mov	r6,a
      000C11 E5 72            [12] 1456 	mov	a,((_Ep0 + 0x0010) + 1)
      000C13 9F               [12] 1457 	subb	a,r7
      000C14 FF               [12] 1458 	mov	r7,a
      000C15 8E 71            [24] 1459 	mov	((_Ep0 + 0x0010) + 0),r6
      000C17 8F 72            [24] 1460 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1461 ;	usb.c:312: Ep0.Buf += BLen;                         // Move Buffer Address in Right position
      000C19 ED               [12] 1462 	mov	a,r5
      000C1A 25 6C            [12] 1463 	add	a,(_Ep0 + 0x000b)
      000C1C FD               [12] 1464 	mov	r5,a
      000C1D E4               [12] 1465 	clr	a
      000C1E 35 6D            [12] 1466 	addc	a,((_Ep0 + 0x000b) + 1)
      000C20 FF               [12] 1467 	mov	r7,a
      000C21 AE 6E            [24] 1468 	mov	r6,((_Ep0 + 0x000b) + 2)
      000C23 8D 6C            [24] 1469 	mov	((_Ep0 + 0x000b) + 0),r5
      000C25 8F 6D            [24] 1470 	mov	((_Ep0 + 0x000b) + 1),r7
      000C27 8E 6E            [24] 1471 	mov	((_Ep0 + 0x000b) + 2),r6
      000C29 22               [24] 1472 	ret
      000C2A                       1473 00109$:
                                   1474 ;	usb.c:315: { USB[EPCON] |= ( RXSTL | TXSTL );         // In STATUSSTAGE we should STAL Rx/Tx
      000C2A 90 FF E1         [24] 1475 	mov	dptr,#0xffe1
      000C2D E0               [24] 1476 	movx	a,@dptr
      000C2E 44 C0            [12] 1477 	orl	a,#0xc0
      000C30 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	usb.c:316: if ( Ep0.Stage == SETADDRESS )           // Different from other STATUSSTAGE(importent)
      000C31 74 55            [12] 1480 	mov	a,#0x55
      000C33 B5 63 07         [24] 1481 	cjne	a,(_Ep0 + 0x0002),00105$
                                   1482 ;	usb.c:317: USB[UADDR] = Ep0.Tmp;                  // Set Address
      000C36 AF 73            [24] 1483 	mov	r7,(_Ep0 + 0x0012)
      000C38 90 FF D8         [24] 1484 	mov	dptr,#0xffd8
      000C3B EF               [12] 1485 	mov	a,r7
      000C3C F0               [24] 1486 	movx	@dptr,a
      000C3D                       1487 00105$:
                                   1488 ;	usb.c:318: if ( Ep0.Stage == DFU_RESET )
      000C3D 74 44            [12] 1489 	mov	a,#0x44
      000C3F B5 63 06         [24] 1490 	cjne	a,(_Ep0 + 0x0002),00111$
                                   1491 ;	usb.c:319: { Reboot_Mcu( REBOOT_TO_ISP );
      000C42 75 82 68         [24] 1492 	mov	dpl,#0x68
                                   1493 ;	usb.c:322: }
      000C45 02 01 30         [24] 1494 	ljmp	_Reboot_Mcu
      000C48                       1495 00111$:
      000C48 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'USB_Stardard_Request'
                                   1499 ;------------------------------------------------------------
                                   1500 ;	usb.c:325: void USB_Stardard_Request( void )
                                   1501 ;	-----------------------------------------
                                   1502 ;	 function USB_Stardard_Request
                                   1503 ;	-----------------------------------------
      000C49                       1504 _USB_Stardard_Request:
                                   1505 ;	usb.c:326: { switch( Ep0.RxTx[1] )                        // Request Code
      000C49 E5 65            [12] 1506 	mov	a,(_Ep0 + 0x0004)
      000C4B FF               [12] 1507 	mov	r7,a
      000C4C 24 F3            [12] 1508 	add	a,#0xff - 0x0c
      000C4E 50 03            [24] 1509 	jnc	00119$
      000C50 02 0C EA         [24] 1510 	ljmp	00111$
      000C53                       1511 00119$:
      000C53 EF               [12] 1512 	mov	a,r7
      000C54 24 0A            [12] 1513 	add	a,#(00120$-3-.)
      000C56 83               [24] 1514 	movc	a,@a+pc
      000C57 F5 82            [12] 1515 	mov	dpl,a
      000C59 EF               [12] 1516 	mov	a,r7
      000C5A 24 11            [12] 1517 	add	a,#(00121$-3-.)
      000C5C 83               [24] 1518 	movc	a,@a+pc
      000C5D F5 83            [12] 1519 	mov	dph,a
      000C5F E4               [12] 1520 	clr	a
      000C60 73               [24] 1521 	jmp	@a+dptr
      000C61                       1522 00120$:
      000C61 7B                    1523 	.db	00101$
      000C62 84                    1524 	.db	00102$
      000C63 EA                    1525 	.db	00111$
      000C64 90                    1526 	.db	00103$
      000C65 EA                    1527 	.db	00111$
      000C66 9C                    1528 	.db	00104$
      000C67 A9                    1529 	.db	00105$
      000C68 EA                    1530 	.db	00111$
      000C69 B2                    1531 	.db	00106$
      000C6A C2                    1532 	.db	00107$
      000C6B D4                    1533 	.db	00109$
      000C6C CE                    1534 	.db	00108$
      000C6D DD                    1535 	.db	00110$
      000C6E                       1536 00121$:
      000C6E 0C                    1537 	.db	00101$>>8
      000C6F 0C                    1538 	.db	00102$>>8
      000C70 0C                    1539 	.db	00111$>>8
      000C71 0C                    1540 	.db	00103$>>8
      000C72 0C                    1541 	.db	00111$>>8
      000C73 0C                    1542 	.db	00104$>>8
      000C74 0C                    1543 	.db	00105$>>8
      000C75 0C                    1544 	.db	00111$>>8
      000C76 0C                    1545 	.db	00106$>>8
      000C77 0C                    1546 	.db	00107$>>8
      000C78 0C                    1547 	.db	00109$>>8
      000C79 0C                    1548 	.db	00108$>>8
      000C7A 0C                    1549 	.db	00110$>>8
                                   1550 ;	usb.c:327: { case GET_STATUS:        Ep0.Stage = DATASTAGE;
      000C7B                       1551 00101$:
      000C7B 75 63 5A         [24] 1552 	mov	(_Ep0 + 0x0002),#0x5a
                                   1553 ;	usb.c:328: USB_Get_Status();
      000C7E 12 08 FE         [24] 1554 	lcall	_USB_Get_Status
                                   1555 ;	usb.c:329: USB_CtrlRd();
                                   1556 ;	usb.c:330: break;
      000C81 02 0B D7         [24] 1557 	ljmp	_USB_CtrlRd
                                   1558 ;	usb.c:331: case CLEAR_FRATURE:	Ep0.Stage = STATUSSTAGE;  
      000C84                       1559 00102$:
      000C84 75 63 A5         [24] 1560 	mov	(_Ep0 + 0x0002),#0xa5
                                   1561 ;	usb.c:332: USB_Clear_Feature();
      000C87 12 09 5B         [24] 1562 	lcall	_USB_Clear_Feature
                                   1563 ;	usb.c:333: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
      000C8A 90 FF F6         [24] 1564 	mov	dptr,#0xfff6
      000C8D E4               [12] 1565 	clr	a
      000C8E F0               [24] 1566 	movx	@dptr,a
                                   1567 ;	usb.c:334: break;
      000C8F 22               [24] 1568 	ret
                                   1569 ;	usb.c:335: case SET_FEATURE:       Ep0.Stage = STATUSSTAGE;
      000C90                       1570 00103$:
      000C90 75 63 A5         [24] 1571 	mov	(_Ep0 + 0x0002),#0xa5
                                   1572 ;	usb.c:336: USB_Set_Feature();
      000C93 12 09 BD         [24] 1573 	lcall	_USB_Set_Feature
                                   1574 ;	usb.c:337: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
      000C96 90 FF F6         [24] 1575 	mov	dptr,#0xfff6
      000C99 E4               [12] 1576 	clr	a
      000C9A F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	usb.c:338: break;
                                   1579 ;	usb.c:339: case SET_ADDRESS:       Ep0.Stage = SETADDRESS;// Different from other STATUSSTAGE
      000C9B 22               [24] 1580 	ret
      000C9C                       1581 00104$:
      000C9C 75 63 55         [24] 1582 	mov	(_Ep0 + 0x0002),#0x55
                                   1583 ;	usb.c:340: Ep0.Tmp = Ep0.RxTx[2];
      000C9F AF 66            [24] 1584 	mov	r7,(_Ep0 + 0x0005)
      000CA1 8F 73            [24] 1585 	mov	(_Ep0 + 0x0012),r7
                                   1586 ;	usb.c:341: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction  
      000CA3 90 FF F6         [24] 1587 	mov	dptr,#0xfff6
      000CA6 E4               [12] 1588 	clr	a
      000CA7 F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	usb.c:342: break;
                                   1591 ;	usb.c:343: case GET_DESCRIPTOR:    Ep0.Stage = DATASTAGE;
      000CA8 22               [24] 1592 	ret
      000CA9                       1593 00105$:
      000CA9 75 63 5A         [24] 1594 	mov	(_Ep0 + 0x0002),#0x5a
                                   1595 ;	usb.c:344: USB_Get_Descriptor();
      000CAC 12 0A 15         [24] 1596 	lcall	_USB_Get_Descriptor
                                   1597 ;	usb.c:345: USB_CtrlRd();
                                   1598 ;	usb.c:346: break;
                                   1599 ;	usb.c:348: case GET_CONFIGURATION: Ep0.Stage = DATASTAGE;
      000CAF 02 0B D7         [24] 1600 	ljmp	_USB_CtrlRd
      000CB2                       1601 00106$:
      000CB2 75 63 5A         [24] 1602 	mov	(_Ep0 + 0x0002),#0x5a
                                   1603 ;	usb.c:349: Ep0.RxTx[0] = Ep0.Tmp;// This value get from SET_CONFIGURATION transaction
      000CB5 AF 73            [24] 1604 	mov	r7,(_Ep0 + 0x0012)
      000CB7 8F 64            [24] 1605 	mov	(_Ep0 + 0x0003),r7
                                   1606 ;	usb.c:350: Ep0.All = 1;     // Only 1 byte transfer to the host
      000CB9 75 71 01         [24] 1607 	mov	((_Ep0 + 0x0010) + 0),#0x01
      000CBC 75 72 00         [24] 1608 	mov	((_Ep0 + 0x0010) + 1),#0x00
                                   1609 ;	usb.c:351: USB_CtrlRd();
                                   1610 ;	usb.c:352: break;
                                   1611 ;	usb.c:353: case SET_CONFIGURATION: Ep0.Stage = STATUSSTAGE;
      000CBF 02 0B D7         [24] 1612 	ljmp	_USB_CtrlRd
      000CC2                       1613 00107$:
      000CC2 75 63 A5         [24] 1614 	mov	(_Ep0 + 0x0002),#0xa5
                                   1615 ;	usb.c:354: USB_Set_Configuration(); // Will store configuration value to Ep0.Tmp
      000CC5 12 0B 5A         [24] 1616 	lcall	_USB_Set_Configuration
                                   1617 ;	usb.c:355: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
      000CC8 90 FF F6         [24] 1618 	mov	dptr,#0xfff6
      000CCB E4               [12] 1619 	clr	a
      000CCC F0               [24] 1620 	movx	@dptr,a
                                   1621 ;	usb.c:356: break;
                                   1622 ;	usb.c:357: case SET_INTERFACE:     Ep0.Stage = STATUSSTAGE;
      000CCD 22               [24] 1623 	ret
      000CCE                       1624 00108$:
      000CCE 75 63 A5         [24] 1625 	mov	(_Ep0 + 0x0002),#0xa5
                                   1626 ;	usb.c:358: USB_Set_Interface();
                                   1627 ;	usb.c:359: break;
                                   1628 ;	usb.c:360: case GET_INTERFACE:     Ep0.Stage = DATASTAGE;
      000CD1 02 0B A4         [24] 1629 	ljmp	_USB_Set_Interface
      000CD4                       1630 00109$:
      000CD4 75 63 5A         [24] 1631 	mov	(_Ep0 + 0x0002),#0x5a
                                   1632 ;	usb.c:361: USB_Get_Interface();
      000CD7 12 0B C2         [24] 1633 	lcall	_USB_Get_Interface
                                   1634 ;	usb.c:362: USB_CtrlRd();
                                   1635 ;	usb.c:363: break;
                                   1636 ;	usb.c:364: case SYNCH_FRAME:       Ep0.Stage = STATUSSTAGE;
      000CDA 02 0B D7         [24] 1637 	ljmp	_USB_CtrlRd
      000CDD                       1638 00110$:
      000CDD 75 63 A5         [24] 1639 	mov	(_Ep0 + 0x0002),#0xa5
                                   1640 ;	usb.c:365: USB[TXCNT] = 0;  // USB will return ACK immediately when receive IN transaction
      000CE0 90 FF F6         [24] 1641 	mov	dptr,#0xfff6
      000CE3 E4               [12] 1642 	clr	a
      000CE4 F0               [24] 1643 	movx	@dptr,a
                                   1644 ;	usb.c:366: Ep0.All = 0;
      000CE5 F5 71            [12] 1645 	mov	((_Ep0 + 0x0010) + 0),a
      000CE7 F5 72            [12] 1646 	mov	((_Ep0 + 0x0010) + 1),a
                                   1647 ;	usb.c:367: break;
                                   1648 ;	usb.c:368: default:                USB[EPCON] |= ( RXSTL | TXSTL );
      000CE9 22               [24] 1649 	ret
      000CEA                       1650 00111$:
      000CEA 90 FF E1         [24] 1651 	mov	dptr,#0xffe1
      000CED E0               [24] 1652 	movx	a,@dptr
      000CEE 44 C0            [12] 1653 	orl	a,#0xc0
      000CF0 F0               [24] 1654 	movx	@dptr,a
                                   1655 ;	usb.c:370: }
                                   1656 ;	usb.c:371: }
      000CF1 22               [24] 1657 	ret
                                   1658 ;------------------------------------------------------------
                                   1659 ;Allocation info for local variables in function 'USB_Class_Request'
                                   1660 ;------------------------------------------------------------
                                   1661 ;	usb.c:374: void USB_Class_Request( void )
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function USB_Class_Request
                                   1664 ;	-----------------------------------------
      000CF2                       1665 _USB_Class_Request:
                                   1666 ;	usb.c:375: { switch( Ep0.RxTx[1] )                        // Request Code
      000CF2 AF 65            [24] 1667 	mov	r7,(_Ep0 + 0x0004)
      000CF4 BF 01 02         [24] 1668 	cjne	r7,#0x01,00135$
      000CF7 80 37            [24] 1669 	sjmp	00103$
      000CF9                       1670 00135$:
      000CF9 BF 02 02         [24] 1671 	cjne	r7,#0x02,00136$
      000CFC 80 14            [24] 1672 	sjmp	00101$
      000CFE                       1673 00136$:
      000CFE BF 03 02         [24] 1674 	cjne	r7,#0x03,00137$
      000D01 80 1E            [24] 1675 	sjmp	00102$
      000D03                       1676 00137$:
      000D03 BF 09 02         [24] 1677 	cjne	r7,#0x09,00138$
      000D06 80 4F            [24] 1678 	sjmp	00106$
      000D08                       1679 00138$:
      000D08 BF 0A 02         [24] 1680 	cjne	r7,#0x0a,00139$
      000D0B 80 32            [24] 1681 	sjmp	00104$
      000D0D                       1682 00139$:
                                   1683 ;	usb.c:376: { case GET_IDLE:     Ep0.Stage = DATASTAGE;
      000D0D BF 0B 69         [24] 1684 	cjne	r7,#0x0b,00107$
      000D10 80 39            [24] 1685 	sjmp	00105$
      000D12                       1686 00101$:
      000D12 75 63 5A         [24] 1687 	mov	(_Ep0 + 0x0002),#0x5a
                                   1688 ;	usb.c:377: Ep0.RxTx[0] = IdleRate;
      000D15 85 5F 64         [24] 1689 	mov	(_Ep0 + 0x0003),_IdleRate
                                   1690 ;	usb.c:378: Ep0.All = 1;          // Only 1 byte transfer to the host
      000D18 75 71 01         [24] 1691 	mov	((_Ep0 + 0x0010) + 0),#0x01
      000D1B 75 72 00         [24] 1692 	mov	((_Ep0 + 0x0010) + 1),#0x00
                                   1693 ;	usb.c:379: USB_CtrlRd();
                                   1694 ;	usb.c:380: break;
                                   1695 ;	usb.c:381: case GET_PROTOCOL: Ep0.Stage = DATASTAGE;
      000D1E 02 0B D7         [24] 1696 	ljmp	_USB_CtrlRd
      000D21                       1697 00102$:
      000D21 75 63 5A         [24] 1698 	mov	(_Ep0 + 0x0002),#0x5a
                                   1699 ;	usb.c:382: Ep0.RxTx[0] = Protocol;
      000D24 85 60 64         [24] 1700 	mov	(_Ep0 + 0x0003),_Protocol
                                   1701 ;	usb.c:383: Ep0.All = 1;          // Only 1 byte transfer to the host
      000D27 75 71 01         [24] 1702 	mov	((_Ep0 + 0x0010) + 0),#0x01
      000D2A 75 72 00         [24] 1703 	mov	((_Ep0 + 0x0010) + 1),#0x00
                                   1704 ;	usb.c:384: USB_CtrlRd();
                                   1705 ;	usb.c:385: break;
                                   1706 ;	usb.c:386: case GET_REPORT:   Ep0.Stage = DATASTAGE;
      000D2D 02 0B D7         [24] 1707 	ljmp	_USB_CtrlRd
      000D30                       1708 00103$:
      000D30 75 63 5A         [24] 1709 	mov	(_Ep0 + 0x0002),#0x5a
                                   1710 ;	usb.c:387: Ep0.RxTx[0] = LED_STATUS;
      000D33 85 20 64         [24] 1711 	mov	(_Ep0 + 0x0003),_LED_STATUS
                                   1712 ;	usb.c:388: Ep0.All = 1;          // Only 1 byte transfer to the host
      000D36 75 71 01         [24] 1713 	mov	((_Ep0 + 0x0010) + 0),#0x01
      000D39 75 72 00         [24] 1714 	mov	((_Ep0 + 0x0010) + 1),#0x00
                                   1715 ;	usb.c:389: USB_CtrlRd();
                                   1716 ;	usb.c:390: break;
                                   1717 ;	usb.c:391: case SET_IDLE:     Ep0.Stage = STATUSSTAGE;
      000D3C 02 0B D7         [24] 1718 	ljmp	_USB_CtrlRd
      000D3F                       1719 00104$:
      000D3F 75 63 A5         [24] 1720 	mov	(_Ep0 + 0x0002),#0xa5
                                   1721 ;	usb.c:392: IdleRate = Ep0.RxTx[3];
      000D42 85 67 5F         [24] 1722 	mov	_IdleRate,(_Ep0 + 0x0006)
                                   1723 ;	usb.c:393: USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
      000D45 90 FF F6         [24] 1724 	mov	dptr,#0xfff6
      000D48 E4               [12] 1725 	clr	a
      000D49 F0               [24] 1726 	movx	@dptr,a
                                   1727 ;	usb.c:394: break;
                                   1728 ;	usb.c:395: case SET_PROTOCOL: Ep0.Stage = STATUSSTAGE;
      000D4A 22               [24] 1729 	ret
      000D4B                       1730 00105$:
      000D4B 75 63 A5         [24] 1731 	mov	(_Ep0 + 0x0002),#0xa5
                                   1732 ;	usb.c:396: Protocol = Ep0.RxTx[2];
      000D4E 85 66 60         [24] 1733 	mov	_Protocol,(_Ep0 + 0x0005)
                                   1734 ;	usb.c:397: USB[TXCNT] = 0;       // USB will return ACK immediately when receive IN transaction
      000D51 90 FF F6         [24] 1735 	mov	dptr,#0xfff6
      000D54 E4               [12] 1736 	clr	a
      000D55 F0               [24] 1737 	movx	@dptr,a
                                   1738 ;	usb.c:398: break;
                                   1739 ;	usb.c:399: case SET_REPORT:   Ep0.Stage = DFU_STAGE;
      000D56 22               [24] 1740 	ret
      000D57                       1741 00106$:
      000D57 75 63 33         [24] 1742 	mov	(_Ep0 + 0x0002),#0x33
                                   1743 ;	usb.c:400: Ep0.All = Ep0.RxTx[7];
      000D5A AE 6B            [24] 1744 	mov	r6,(_Ep0 + 0x000a)
      000D5C 7F 00            [12] 1745 	mov	r7,#0x00
      000D5E 8E 71            [24] 1746 	mov	((_Ep0 + 0x0010) + 0),r6
      000D60 8F 72            [24] 1747 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1748 ;	usb.c:401: Ep0.All <<= 8;
      000D62 8E 07            [24] 1749 	mov	ar7,r6
      000D64 7E 00            [12] 1750 	mov	r6,#0x00
      000D66 8E 71            [24] 1751 	mov	((_Ep0 + 0x0010) + 0),r6
      000D68 8F 72            [24] 1752 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1753 ;	usb.c:402: Ep0.All += Ep0.RxTx[6];
      000D6A AC 6A            [24] 1754 	mov	r4,(_Ep0 + 0x0009)
      000D6C 7D 00            [12] 1755 	mov	r5,#0x00
      000D6E EC               [12] 1756 	mov	a,r4
      000D6F 2E               [12] 1757 	add	a,r6
      000D70 FE               [12] 1758 	mov	r6,a
      000D71 ED               [12] 1759 	mov	a,r5
      000D72 3F               [12] 1760 	addc	a,r7
      000D73 FF               [12] 1761 	mov	r7,a
      000D74 8E 71            [24] 1762 	mov	((_Ep0 + 0x0010) + 0),r6
      000D76 8F 72            [24] 1763 	mov	((_Ep0 + 0x0010) + 1),r7
                                   1764 ;	usb.c:403: break;
                                   1765 ;	usb.c:404: default:           USB[EPCON] |= ( RXSTL | TXSTL );
      000D78 22               [24] 1766 	ret
      000D79                       1767 00107$:
      000D79 90 FF E1         [24] 1768 	mov	dptr,#0xffe1
      000D7C E0               [24] 1769 	movx	a,@dptr
      000D7D 44 C0            [12] 1770 	orl	a,#0xc0
      000D7F F0               [24] 1771 	movx	@dptr,a
                                   1772 ;	usb.c:406: }
                                   1773 ;	usb.c:407: }
      000D80 22               [24] 1774 	ret
                                   1775 ;------------------------------------------------------------
                                   1776 ;Allocation info for local variables in function 'USB_CtrlWr'
                                   1777 ;------------------------------------------------------------
                                   1778 ;	usb.c:410: void USB_CtrlWr( void )                          // Host Out , USB In ( Only for EPO )
                                   1779 ;	-----------------------------------------
                                   1780 ;	 function USB_CtrlWr
                                   1781 ;	-----------------------------------------
      000D81                       1782 _USB_CtrlWr:
                                   1783 ;	usb.c:411: { Ep0.Buf = Ep0.RxTx;                          // Move Buffer address to RxTx[8] array , Use for USB_CtrlRd();
      000D81 75 6C 64         [24] 1784 	mov	((_Ep0 + 0x000b) + 0),#(_Ep0 + 0x0003)
      000D84 75 6D 00         [24] 1785 	mov	((_Ep0 + 0x000b) + 1),#((_Ep0 + 0x0003) >> 8)
      000D87 75 6E 40         [24] 1786 	mov	((_Ep0 + 0x000b) + 2),#0x40
                                   1787 ;	usb.c:412: USB_Ep0_FIFO();                              // Move Rx Data to RxTxBuf buffer
      000D8A 12 08 42         [24] 1788 	lcall	_USB_Ep0_FIFO
                                   1789 ;	usb.c:413: if ( Ep0.Stage == SETUPSTAGE )               // if Setup Transection will set Ep0.All = 8
      000D8D 74 F0            [12] 1790 	mov	a,#0xf0
      000D8F B5 63 2A         [24] 1791 	cjne	a,(_Ep0 + 0x0002),00107$
                                   1792 ;	usb.c:414: {	Ep0.All = 0;
      000D92 E4               [12] 1793 	clr	a
      000D93 F5 71            [12] 1794 	mov	((_Ep0 + 0x0010) + 0),a
      000D95 F5 72            [12] 1795 	mov	((_Ep0 + 0x0010) + 1),a
                                   1796 ;	usb.c:415: switch( Ep0.RxTx[0] & 0x60 )             // Request Type
      000D97 AE 64            [24] 1797 	mov	r6,(_Ep0 + 0x0003)
      000D99 53 06 60         [24] 1798 	anl	ar6,#0x60
      000D9C 7F 00            [12] 1799 	mov	r7,#0x00
      000D9E BE 00 05         [24] 1800 	cjne	r6,#0x00,00123$
      000DA1 BF 00 02         [24] 1801 	cjne	r7,#0x00,00123$
      000DA4 80 08            [24] 1802 	sjmp	00101$
      000DA6                       1803 00123$:
                                   1804 ;	usb.c:416: { case STANDARD_REQUEST: USB_Stardard_Request();
      000DA6 BE 20 0B         [24] 1805 	cjne	r6,#0x20,00103$
      000DA9 BF 00 08         [24] 1806 	cjne	r7,#0x00,00103$
      000DAC 80 03            [24] 1807 	sjmp	00102$
      000DAE                       1808 00101$:
                                   1809 ;	usb.c:417: break;
                                   1810 ;	usb.c:418: case CLASS_REQUEST:    USB_Class_Request();
      000DAE 02 0C 49         [24] 1811 	ljmp	_USB_Stardard_Request
      000DB1                       1812 00102$:
                                   1813 ;	usb.c:419: break;
                                   1814 ;	usb.c:420: default:               USB[EPCON] |= ( RXSTL | TXSTL );
      000DB1 02 0C F2         [24] 1815 	ljmp	_USB_Class_Request
      000DB4                       1816 00103$:
      000DB4 90 FF E1         [24] 1817 	mov	dptr,#0xffe1
      000DB7 E0               [24] 1818 	movx	a,@dptr
      000DB8 44 C0            [12] 1819 	orl	a,#0xc0
      000DBA FF               [12] 1820 	mov	r7,a
      000DBB F0               [24] 1821 	movx	@dptr,a
                                   1822 ;	usb.c:422: }
      000DBC                       1823 00107$:
                                   1824 ;	usb.c:424: }
      000DBC 22               [24] 1825 	ret
                                   1826 ;------------------------------------------------------------
                                   1827 ;Allocation info for local variables in function 'USB_Set_TxStatus'
                                   1828 ;------------------------------------------------------------
                                   1829 ;Flag                      Allocated to registers r7 
                                   1830 ;Status                    Allocated to registers 
                                   1831 ;------------------------------------------------------------
                                   1832 ;	usb.c:427: void USB_Set_TxStatus( BYTE Flag )
                                   1833 ;	-----------------------------------------
                                   1834 ;	 function USB_Set_TxStatus
                                   1835 ;	-----------------------------------------
      000DBD                       1836 _USB_Set_TxStatus:
      000DBD AF 82            [24] 1837 	mov	r7,dpl
                                   1838 ;	usb.c:431: Status = USB[TXCON];
      000DBF 90 FF F4         [24] 1839 	mov	dptr,#0xfff4
      000DC2 E0               [24] 1840 	movx	a,@dptr
      000DC3 FE               [12] 1841 	mov	r6,a
                                   1842 ;	usb.c:432: Status &= 0x0F;                              // Reserve Low nibble
      000DC4 74 0F            [12] 1843 	mov	a,#0x0f
      000DC6 5E               [12] 1844 	anl	a,r6
                                   1845 ;	usb.c:433: Status |= Flag;
      000DC7 42 07            [12] 1846 	orl	ar7,a
                                   1847 ;	usb.c:434: USB[TXCON] = Status;                         // Clear Tx FIFO
      000DC9 90 FF F4         [24] 1848 	mov	dptr,#0xfff4
      000DCC EF               [12] 1849 	mov	a,r7
      000DCD F0               [24] 1850 	movx	@dptr,a
                                   1851 ;	usb.c:435: }
      000DCE 22               [24] 1852 	ret
                                   1853 ;------------------------------------------------------------
                                   1854 ;Allocation info for local variables in function 'USB_Int'
                                   1855 ;------------------------------------------------------------
                                   1856 ;Status                    Allocated to registers 
                                   1857 ;------------------------------------------------------------
                                   1858 ;	usb.c:439: void USB_Int( void )
                                   1859 ;	-----------------------------------------
                                   1860 ;	 function USB_Int
                                   1861 ;	-----------------------------------------
      000DCF                       1862 _USB_Int:
                                   1863 ;	usb.c:443: Status = USB[UPCON];                         // Status in Power Control Register
      000DCF 90 FF C9         [24] 1864 	mov	dptr,#0xffc9
      000DD2 E0               [24] 1865 	movx	a,@dptr
                                   1866 ;	usb.c:445: if ( Status & 0x0F )                         // Into Power Control mode
      000DD3 FF               [12] 1867 	mov	r7,a
      000DD4 54 0F            [12] 1868 	anl	a,#0x0f
      000DD6 70 03            [24] 1869 	jnz	00200$
      000DD8 02 0E 55         [24] 1870 	ljmp	00131$
      000DDB                       1871 00200$:
                                   1872 ;	usb.c:446: { if ( Status & USUS )                     // Suspend mode
      000DDB EF               [12] 1873 	mov	a,r7
      000DDC 30 E0 55         [24] 1874 	jnb	acc.0,00118$
                                   1875 ;	usb.c:447: { Status &= 0xF0;
      000DDF 74 F0            [12] 1876 	mov	a,#0xf0
      000DE1 5F               [12] 1877 	anl	a,r7
                                   1878 ;	usb.c:448: USB[UPCON] = ( Status | USUS );      // Write "1" to Clear this Flag
      000DE2 44 01            [12] 1879 	orl	a,#0x01
                                   1880 ;	usb.c:450: Status = USB[UPCON];                 // Status in Power Control Register
      000DE4 90 FF C9         [24] 1881 	mov	dptr,#0xffc9
      000DE7 F0               [24] 1882 	movx	@dptr,a
                                   1883 ;	usb.c:451: if (( Status & 0x0F ) == 0x00 )      // Into Power Control mode
      000DE8 54 0F            [12] 1884 	anl	a,#0x0f
      000DEA 60 01            [24] 1885 	jz	00203$
      000DEC 22               [24] 1886 	ret
      000DED                       1887 00203$:
                                   1888 ;	usb.c:452: { KB_LED_Off();                    // Set all LED Off
      000DED 12 03 00         [24] 1889 	lcall	_KB_LED_Off
                                   1890 ;	usb.c:454: if ( Ep0.RWEN == SET )
      000DF0 74 01            [12] 1891 	mov	a,#0x01
      000DF2 B5 61 0C         [24] 1892 	cjne	a,_Ep0,00102$
                                   1893 ;	usb.c:455: { P1 = 0x00;                   // Set scan out line to low
      000DF5 75 90 00         [24] 1894 	mov	_P1,#0x00
                                   1895 ;	usb.c:456: P2 = 0x00;                   // mean for wakeup function
      000DF8 75 A0 00         [24] 1896 	mov	_P2,#0x00
                                   1897 ;	usb.c:457: P3 &= 0xE7;                  // P3.3 / P3.4 ( scan out line )
      000DFB 53 B0 E7         [24] 1898 	anl	_P3,#0xe7
                                   1899 ;	usb.c:459: KBMASK = 0xFF;               // Will Enable KP Interrupt
      000DFE 75 D7 FF         [24] 1900 	mov	_KBMASK,#0xff
      000E01                       1901 00102$:
                                   1902 ;	usb.c:462: PCON |= 0x02;                    // Set CPU(8051) into PowerDown mode
      000E01 43 87 02         [24] 1903 	orl	_PCON,#0x02
                                   1904 ;	usb.c:464: Delay_Xms( 1 );
      000E04 75 82 01         [24] 1905 	mov	dpl,#0x01
      000E07 12 01 18         [24] 1906 	lcall	_Delay_Xms
                                   1907 ;	usb.c:466: if ( Ep0.RWEN == SET )
      000E0A 74 01            [12] 1908 	mov	a,#0x01
      000E0C B5 61 1A         [24] 1909 	cjne	a,_Ep0,00107$
                                   1910 ;	usb.c:467: { if ( KBMASK == 0x00 )        // Clear by KP ISR in " MCU.C "
      000E0F E5 D7            [12] 1911 	mov	a,_KBMASK
      000E11 70 0A            [24] 1912 	jnz	00104$
                                   1913 ;	usb.c:468: USB[UPCON] |= URWU;        // Set USB into Wake-up mode
      000E13 90 FF C9         [24] 1914 	mov	dptr,#0xffc9
      000E16 E0               [24] 1915 	movx	a,@dptr
      000E17 44 20            [12] 1916 	orl	a,#0x20
      000E19 FE               [12] 1917 	mov	r6,a
      000E1A F0               [24] 1918 	movx	@dptr,a
      000E1B 80 03            [24] 1919 	sjmp	00105$
      000E1D                       1920 00104$:
                                   1921 ;	usb.c:470: KBMASK = 0x00;             // Will Disable KP Interrupt
      000E1D 75 D7 00         [24] 1922 	mov	_KBMASK,#0x00
      000E20                       1923 00105$:
                                   1924 ;	usb.c:471: P1 = 0xFF;
      000E20 75 90 FF         [24] 1925 	mov	_P1,#0xff
                                   1926 ;	usb.c:472: P2 = 0xFF;
      000E23 75 A0 FF         [24] 1927 	mov	_P2,#0xff
                                   1928 ;	usb.c:473: P3 |= 0x18;
      000E26 43 B0 18         [24] 1929 	orl	_P3,#0x18
      000E29                       1930 00107$:
                                   1931 ;	usb.c:476: if ( Ep0.EmuOk == SET )          // Set USB LED ON after " SET_CONFIGURATION "
      000E29 74 01            [12] 1932 	mov	a,#0x01
      000E2B B5 62 02         [24] 1933 	cjne	a,(_Ep0 + 0x0001),00209$
      000E2E 80 01            [24] 1934 	sjmp	00210$
      000E30                       1935 00209$:
      000E30 22               [24] 1936 	ret
      000E31                       1937 00210$:
                                   1938 ;	usb.c:477: KB_LED_Status();               // Restore LED status
      000E31 02 03 07         [24] 1939 	ljmp	_KB_LED_Status
      000E34                       1940 00118$:
                                   1941 ;	usb.c:481: { if ( Status & URST )                 // Reset mode
      000E34 EF               [12] 1942 	mov	a,r7
      000E35 30 E2 0F         [24] 1943 	jnb	acc.2,00115$
                                   1944 ;	usb.c:482: {	Status &= 0xF0;
      000E38 74 F0            [12] 1945 	mov	a,#0xf0
      000E3A 5F               [12] 1946 	anl	a,r7
                                   1947 ;	usb.c:483: USB[UPCON] = ( Status | URST );  // Write "1" to Clear this Flag
      000E3B 44 04            [12] 1948 	orl	a,#0x04
      000E3D 90 FF C9         [24] 1949 	mov	dptr,#0xffc9
      000E40 F0               [24] 1950 	movx	@dptr,a
                                   1951 ;	usb.c:484: initKeyboard();
      000E41 12 02 94         [24] 1952 	lcall	_initKeyboard
                                   1953 ;	usb.c:485: Initial_USB();
      000E44 02 07 B3         [24] 1954 	ljmp	_Initial_USB
      000E47                       1955 00115$:
                                   1956 ;	usb.c:487: else if ( Status & URSM )            // Resume mode  
      000E47 EF               [12] 1957 	mov	a,r7
      000E48 30 E1 51         [24] 1958 	jnb	acc.1,00133$
                                   1959 ;	usb.c:488: { Status &= 0xF0;
      000E4B 74 F0            [12] 1960 	mov	a,#0xf0
      000E4D 5F               [12] 1961 	anl	a,r7
                                   1962 ;	usb.c:489: USB[UPCON] = ( Status | URSM );  // Write "1" to Clear this Flag
      000E4E 44 02            [12] 1963 	orl	a,#0x02
      000E50 90 FF C9         [24] 1964 	mov	dptr,#0xffc9
      000E53 F0               [24] 1965 	movx	@dptr,a
      000E54 22               [24] 1966 	ret
      000E55                       1967 00131$:
                                   1968 ;	usb.c:494: { Status = USB[UIFLG];
      000E55 90 FF DB         [24] 1969 	mov	dptr,#0xffdb
      000E58 E0               [24] 1970 	movx	a,@dptr
                                   1971 ;	usb.c:495: if ( Status & UTXD1 )                    // EP1 Transmit
      000E59 FF               [12] 1972 	mov	r7,a
      000E5A 30 E2 1B         [24] 1973 	jnb	acc.2,00128$
                                   1974 ;	usb.c:496: { USB[UIFLG] = UTXD1;                  // Write "1" to Clear this Flag
      000E5D 90 FF DB         [24] 1975 	mov	dptr,#0xffdb
      000E60 74 04            [12] 1976 	mov	a,#0x04
      000E62 F0               [24] 1977 	movx	@dptr,a
                                   1978 ;	usb.c:497: USB[EPINDEX] = EP1;
      000E63 90 FF F1         [24] 1979 	mov	dptr,#0xfff1
      000E66 74 01            [12] 1980 	mov	a,#0x01
      000E68 F0               [24] 1981 	movx	@dptr,a
                                   1982 ;	usb.c:498: USB_Set_TxStatus( TXFFRC );
      000E69 75 82 10         [24] 1983 	mov	dpl,#0x10
      000E6C 12 0D BD         [24] 1984 	lcall	_USB_Set_TxStatus
                                   1985 ;	usb.c:499: if ( TxBusy == SET )
      000E6F 74 01            [12] 1986 	mov	a,#0x01
      000E71 B5 5E 28         [24] 1987 	cjne	a,_TxBusy,00133$
                                   1988 ;	usb.c:500: TxBusy = CLR;
      000E74 75 5E 00         [24] 1989 	mov	_TxBusy,#0x00
      000E77 22               [24] 1990 	ret
      000E78                       1991 00128$:
                                   1992 ;	usb.c:502: else if ( Status & URXD0 )               // EP0 Receive
      000E78 EF               [12] 1993 	mov	a,r7
      000E79 30 E1 0E         [24] 1994 	jnb	acc.1,00125$
                                   1995 ;	usb.c:503: { USB[UIFLG] = URXD0;                  // Write "1" to Clear this Flag
      000E7C 90 FF DB         [24] 1996 	mov	dptr,#0xffdb
      000E7F 74 02            [12] 1997 	mov	a,#0x02
      000E81 F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	usb.c:504: USB[EPINDEX] = EP0;
      000E82 90 FF F1         [24] 2000 	mov	dptr,#0xfff1
      000E85 E4               [12] 2001 	clr	a
      000E86 F0               [24] 2002 	movx	@dptr,a
                                   2003 ;	usb.c:505: USB_CtrlWr();                        // USB Standard Device Request(maybe)
      000E87 02 0D 81         [24] 2004 	ljmp	_USB_CtrlWr
      000E8A                       2005 00125$:
                                   2006 ;	usb.c:507: else if ( Status & UTXD0 )               // EP0 Transmit
      000E8A EF               [12] 2007 	mov	a,r7
      000E8B 30 E0 0E         [24] 2008 	jnb	acc.0,00133$
                                   2009 ;	usb.c:508: { USB[UIFLG] = UTXD0;                  // Write "1" to Clear this Flag
      000E8E 90 FF DB         [24] 2010 	mov	dptr,#0xffdb
      000E91 74 01            [12] 2011 	mov	a,#0x01
      000E93 F0               [24] 2012 	movx	@dptr,a
                                   2013 ;	usb.c:509: USB[EPINDEX] = EP0;
      000E94 90 FF F1         [24] 2014 	mov	dptr,#0xfff1
      000E97 E4               [12] 2015 	clr	a
      000E98 F0               [24] 2016 	movx	@dptr,a
                                   2017 ;	usb.c:510: USB_CtrlRd();
                                   2018 ;	usb.c:513: }
      000E99 02 0B D7         [24] 2019 	ljmp	_USB_CtrlRd
      000E9C                       2020 00133$:
      000E9C 22               [24] 2021 	ret
                                   2022 	.area CSEG    (CODE)
                                   2023 	.area CONST   (CODE)
      001390                       2024 _KB_HID_REPORT:
      001390 05                    2025 	.db #0x05	; 5
      001391 01                    2026 	.db #0x01	; 1
      001392 09                    2027 	.db #0x09	; 9
      001393 06                    2028 	.db #0x06	; 6
      001394 A1                    2029 	.db #0xa1	; 161
      001395 01                    2030 	.db #0x01	; 1
      001396 05                    2031 	.db #0x05	; 5
      001397 07                    2032 	.db #0x07	; 7
      001398 19                    2033 	.db #0x19	; 25
      001399 E0                    2034 	.db #0xe0	; 224
      00139A 29                    2035 	.db #0x29	; 41
      00139B E7                    2036 	.db #0xe7	; 231
      00139C 15                    2037 	.db #0x15	; 21
      00139D 00                    2038 	.db #0x00	; 0
      00139E 25                    2039 	.db #0x25	; 37
      00139F 01                    2040 	.db #0x01	; 1
      0013A0 75                    2041 	.db #0x75	; 117	'u'
      0013A1 01                    2042 	.db #0x01	; 1
      0013A2 95                    2043 	.db #0x95	; 149
      0013A3 08                    2044 	.db #0x08	; 8
      0013A4 81                    2045 	.db #0x81	; 129
      0013A5 02                    2046 	.db #0x02	; 2
      0013A6 95                    2047 	.db #0x95	; 149
      0013A7 01                    2048 	.db #0x01	; 1
      0013A8 75                    2049 	.db #0x75	; 117	'u'
      0013A9 08                    2050 	.db #0x08	; 8
      0013AA 81                    2051 	.db #0x81	; 129
      0013AB 01                    2052 	.db #0x01	; 1
      0013AC 95                    2053 	.db #0x95	; 149
      0013AD 03                    2054 	.db #0x03	; 3
      0013AE 75                    2055 	.db #0x75	; 117	'u'
      0013AF 01                    2056 	.db #0x01	; 1
      0013B0 05                    2057 	.db #0x05	; 5
      0013B1 08                    2058 	.db #0x08	; 8
      0013B2 19                    2059 	.db #0x19	; 25
      0013B3 01                    2060 	.db #0x01	; 1
      0013B4 29                    2061 	.db #0x29	; 41
      0013B5 03                    2062 	.db #0x03	; 3
      0013B6 91                    2063 	.db #0x91	; 145
      0013B7 02                    2064 	.db #0x02	; 2
      0013B8 95                    2065 	.db #0x95	; 149
      0013B9 05                    2066 	.db #0x05	; 5
      0013BA 75                    2067 	.db #0x75	; 117	'u'
      0013BB 01                    2068 	.db #0x01	; 1
      0013BC 91                    2069 	.db #0x91	; 145
      0013BD 01                    2070 	.db #0x01	; 1
      0013BE 95                    2071 	.db #0x95	; 149
      0013BF 06                    2072 	.db #0x06	; 6
      0013C0 75                    2073 	.db #0x75	; 117	'u'
      0013C1 08                    2074 	.db #0x08	; 8
      0013C2 15                    2075 	.db #0x15	; 21
      0013C3 00                    2076 	.db #0x00	; 0
      0013C4 26                    2077 	.db #0x26	; 38
      0013C5 FF                    2078 	.db #0xff	; 255
      0013C6 00                    2079 	.db #0x00	; 0
      0013C7 05                    2080 	.db #0x05	; 5
      0013C8 07                    2081 	.db #0x07	; 7
      0013C9 19                    2082 	.db #0x19	; 25
      0013CA 00                    2083 	.db #0x00	; 0
      0013CB 2A                    2084 	.db #0x2a	; 42
      0013CC FF                    2085 	.db #0xff	; 255
      0013CD 00                    2086 	.db #0x00	; 0
      0013CE 81                    2087 	.db #0x81	; 129
      0013CF 00                    2088 	.db #0x00	; 0
      0013D0 09                    2089 	.db #0x09	; 9
      0013D1 00                    2090 	.db #0x00	; 0
      0013D2 95                    2091 	.db #0x95	; 149
      0013D3 08                    2092 	.db #0x08	; 8
      0013D4 75                    2093 	.db #0x75	; 117	'u'
      0013D5 08                    2094 	.db #0x08	; 8
      0013D6 B1                    2095 	.db #0xb1	; 177
      0013D7 00                    2096 	.db #0x00	; 0
      0013D8 C0                    2097 	.db #0xc0	; 192
      0013D9                       2098 _DEVICE_DESCRIPTOR:
      0013D9 12                    2099 	.db #0x12	; 18
      0013DA 01                    2100 	.db #0x01	; 1
      0013DB 10                    2101 	.db #0x10	; 16
      0013DC 01                    2102 	.db #0x01	; 1
      0013DD 00                    2103 	.db #0x00	; 0
      0013DE 00                    2104 	.db #0x00	; 0
      0013DF 00                    2105 	.db #0x00	; 0
      0013E0 08                    2106 	.db #0x08	; 8
      0013E1 6A                    2107 	.db #0x6a	; 106	'j'
      0013E2 0E                    2108 	.db #0x0e	; 14
      0013E3 0C                    2109 	.db #0x0c	; 12
      0013E4 03                    2110 	.db #0x03	; 3
      0013E5 30                    2111 	.db #0x30	; 48	'0'
      0013E6 01                    2112 	.db #0x01	; 1
      0013E7 01                    2113 	.db #0x01	; 1
      0013E8 02                    2114 	.db #0x02	; 2
      0013E9 00                    2115 	.db #0x00	; 0
      0013EA 01                    2116 	.db #0x01	; 1
      0013EB                       2117 _CONGFIGURATION_DESCRIPTOR:
      0013EB 09                    2118 	.db #0x09	; 9
      0013EC 02                    2119 	.db #0x02	; 2
      0013ED 22                    2120 	.db #0x22	; 34
      0013EE 00                    2121 	.db #0x00	; 0
      0013EF 01                    2122 	.db #0x01	; 1
      0013F0 01                    2123 	.db #0x01	; 1
      0013F1 00                    2124 	.db #0x00	; 0
      0013F2 A0                    2125 	.db #0xa0	; 160
      0013F3 32                    2126 	.db #0x32	; 50	'2'
      0013F4                       2127 _KB_INTERFACE_DESCRIPTOR:
      0013F4 09                    2128 	.db #0x09	; 9
      0013F5 04                    2129 	.db #0x04	; 4
      0013F6 00                    2130 	.db #0x00	; 0
      0013F7 00                    2131 	.db #0x00	; 0
      0013F8 01                    2132 	.db #0x01	; 1
      0013F9 03                    2133 	.db #0x03	; 3
      0013FA 01                    2134 	.db #0x01	; 1
      0013FB 01                    2135 	.db #0x01	; 1
      0013FC 00                    2136 	.db #0x00	; 0
      0013FD                       2137 _KB_HID_DESCRIPTOR:
      0013FD 09                    2138 	.db #0x09	; 9
      0013FE 21                    2139 	.db #0x21	; 33
      0013FF 10                    2140 	.db #0x10	; 16
      001400 01                    2141 	.db #0x01	; 1
      001401 00                    2142 	.db #0x00	; 0
      001402 01                    2143 	.db #0x01	; 1
      001403 22                    2144 	.db #0x22	; 34
      001404 49                    2145 	.db #0x49	; 73	'I'
      001405 00                    2146 	.db #0x00	; 0
      001406                       2147 _KB_INTERRUPT_IN_ENDPOINT_DESCRIPTOR:
      001406 07                    2148 	.db #0x07	; 7
      001407 05                    2149 	.db #0x05	; 5
      001408 81                    2150 	.db #0x81	; 129
      001409 03                    2151 	.db #0x03	; 3
      00140A 08                    2152 	.db #0x08	; 8
      00140B 00                    2153 	.db #0x00	; 0
      00140C 0A                    2154 	.db #0x0a	; 10
      00140D                       2155 _LANGUAGEID_DESCRIPTOR:
      00140D 04                    2156 	.db #0x04	; 4
      00140E 03                    2157 	.db #0x03	; 3
      00140F 09                    2158 	.db #0x09	; 9
      001410 04                    2159 	.db #0x04	; 4
      001411                       2160 _MANUFACTURER_DESCRIPTOR:
      001411 26                    2161 	.db #0x26	; 38
      001412 03                    2162 	.db #0x03	; 3
      001413 54                    2163 	.db #0x54	; 84	'T'
      001414 00                    2164 	.db #0x00	; 0
      001415 72                    2165 	.db #0x72	; 114	'r'
      001416 00                    2166 	.db #0x00	; 0
      001417 75                    2167 	.db #0x75	; 117	'u'
      001418 00                    2168 	.db #0x00	; 0
      001419 6C                    2169 	.db #0x6c	; 108	'l'
      00141A 00                    2170 	.db #0x00	; 0
      00141B 79                    2171 	.db #0x79	; 121	'y'
      00141C 00                    2172 	.db #0x00	; 0
      00141D 45                    2173 	.db #0x45	; 69	'E'
      00141E 00                    2174 	.db #0x00	; 0
      00141F 72                    2175 	.db #0x72	; 114	'r'
      001420 00                    2176 	.db #0x00	; 0
      001421 67                    2177 	.db #0x67	; 103	'g'
      001422 00                    2178 	.db #0x00	; 0
      001423 6F                    2179 	.db #0x6f	; 111	'o'
      001424 00                    2180 	.db #0x00	; 0
      001425 6E                    2181 	.db #0x6e	; 110	'n'
      001426 00                    2182 	.db #0x00	; 0
      001427 6F                    2183 	.db #0x6f	; 111	'o'
      001428 00                    2184 	.db #0x00	; 0
      001429 6D                    2185 	.db #0x6d	; 109	'm'
      00142A 00                    2186 	.db #0x00	; 0
      00142B 69                    2187 	.db #0x69	; 105	'i'
      00142C 00                    2188 	.db #0x00	; 0
      00142D 63                    2189 	.db #0x63	; 99	'c'
      00142E 00                    2190 	.db #0x00	; 0
      00142F 2E                    2191 	.db #0x2e	; 46
      001430 00                    2192 	.db #0x00	; 0
      001431 63                    2193 	.db #0x63	; 99	'c'
      001432 00                    2194 	.db #0x00	; 0
      001433 6F                    2195 	.db #0x6f	; 111	'o'
      001434 00                    2196 	.db #0x00	; 0
      001435 6D                    2197 	.db #0x6d	; 109	'm'
      001436 00                    2198 	.db #0x00	; 0
      001437                       2199 _PRODUCT_DESCRIPTOR:
      001437 44                    2200 	.db #0x44	; 68	'D'
      001438 03                    2201 	.db #0x03	; 3
      001439 54                    2202 	.db #0x54	; 84	'T'
      00143A 00                    2203 	.db #0x00	; 0
      00143B 72                    2204 	.db #0x72	; 114	'r'
      00143C 00                    2205 	.db #0x00	; 0
      00143D 75                    2206 	.db #0x75	; 117	'u'
      00143E 00                    2207 	.db #0x00	; 0
      00143F 6C                    2208 	.db #0x6c	; 108	'l'
      001440 00                    2209 	.db #0x00	; 0
      001441 79                    2210 	.db #0x79	; 121	'y'
      001442 00                    2211 	.db #0x00	; 0
      001443 20                    2212 	.db #0x20	; 32
      001444 00                    2213 	.db #0x00	; 0
      001445 45                    2214 	.db #0x45	; 69	'E'
      001446 00                    2215 	.db #0x00	; 0
      001447 72                    2216 	.db #0x72	; 114	'r'
      001448 00                    2217 	.db #0x00	; 0
      001449 67                    2218 	.db #0x67	; 103	'g'
      00144A 00                    2219 	.db #0x00	; 0
      00144B 6F                    2220 	.db #0x6f	; 111	'o'
      00144C 00                    2221 	.db #0x00	; 0
      00144D 6E                    2222 	.db #0x6e	; 110	'n'
      00144E 00                    2223 	.db #0x00	; 0
      00144F 6F                    2224 	.db #0x6f	; 111	'o'
      001450 00                    2225 	.db #0x00	; 0
      001451 6D                    2226 	.db #0x6d	; 109	'm'
      001452 00                    2227 	.db #0x00	; 0
      001453 69                    2228 	.db #0x69	; 105	'i'
      001454 00                    2229 	.db #0x00	; 0
      001455 63                    2230 	.db #0x63	; 99	'c'
      001456 00                    2231 	.db #0x00	; 0
      001457 20                    2232 	.db #0x20	; 32
      001458 00                    2233 	.db #0x00	; 0
      001459 43                    2234 	.db #0x43	; 67	'C'
      00145A 00                    2235 	.db #0x00	; 0
      00145B 6F                    2236 	.db #0x6f	; 111	'o'
      00145C 00                    2237 	.db #0x00	; 0
      00145D 6D                    2238 	.db #0x6d	; 109	'm'
      00145E 00                    2239 	.db #0x00	; 0
      00145F 70                    2240 	.db #0x70	; 112	'p'
      001460 00                    2241 	.db #0x00	; 0
      001461 75                    2242 	.db #0x75	; 117	'u'
      001462 00                    2243 	.db #0x00	; 0
      001463 74                    2244 	.db #0x74	; 116	't'
      001464 00                    2245 	.db #0x00	; 0
      001465 65                    2246 	.db #0x65	; 101	'e'
      001466 00                    2247 	.db #0x00	; 0
      001467 72                    2248 	.db #0x72	; 114	'r'
      001468 00                    2249 	.db #0x00	; 0
      001469 20                    2250 	.db #0x20	; 32
      00146A 00                    2251 	.db #0x00	; 0
      00146B 4B                    2252 	.db #0x4b	; 75	'K'
      00146C 00                    2253 	.db #0x00	; 0
      00146D 65                    2254 	.db #0x65	; 101	'e'
      00146E 00                    2255 	.db #0x00	; 0
      00146F 79                    2256 	.db #0x79	; 121	'y'
      001470 00                    2257 	.db #0x00	; 0
      001471 62                    2258 	.db #0x62	; 98	'b'
      001472 00                    2259 	.db #0x00	; 0
      001473 6F                    2260 	.db #0x6f	; 111	'o'
      001474 00                    2261 	.db #0x00	; 0
      001475 61                    2262 	.db #0x61	; 97	'a'
      001476 00                    2263 	.db #0x00	; 0
      001477 72                    2264 	.db #0x72	; 114	'r'
      001478 00                    2265 	.db #0x00	; 0
      001479 64                    2266 	.db #0x64	; 100	'd'
      00147A 00                    2267 	.db #0x00	; 0
      00147B                       2268 _SERIALNUMBER_DESCRIPTOR:
      00147B 0E                    2269 	.db #0x0e	; 14
      00147C 03                    2270 	.db #0x03	; 3
      00147D 36                    2271 	.db #0x36	; 54	'6'
      00147E 00                    2272 	.db #0x00	; 0
      00147F 32                    2273 	.db #0x32	; 50	'2'
      001480 00                    2274 	.db #0x00	; 0
      001481 31                    2275 	.db #0x31	; 49	'1'
      001482 00                    2276 	.db #0x00	; 0
      001483 30                    2277 	.db #0x30	; 48	'0'
      001484 00                    2278 	.db #0x00	; 0
      001485 33                    2279 	.db #0x33	; 51	'3'
      001486 00                    2280 	.db #0x00	; 0
      001487 31                    2281 	.db #0x31	; 49	'1'
      001488 00                    2282 	.db #0x00	; 0
                                   2283 	.area XINIT   (CODE)
                                   2284 	.area CABS    (ABS,CODE)
