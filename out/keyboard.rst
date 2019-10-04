                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module keyboard
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _addActiveKey_PARM_2
                                     12 	.globl _clr_PARM_2
                                     13 	.globl _sendKeys_combineKeyAlternates_65536_54
                                     14 	.globl _sendKeys_key_index_65536_54
                                     15 	.globl _read_column_KeyScan_Table_65536_43
                                     16 	.globl _prtHex_hexTab_65536_28
                                     17 	.globl _scan
                                     18 	.globl _addActiveKey
                                     19 	.globl _updateActiveKeys
                                     20 	.globl _sendKeys
                                     21 	.globl _msg
                                     22 	.globl _read_column
                                     23 	.globl _delayMicroSec
                                     24 	.globl _KB_LED_Status
                                     25 	.globl _KB_LED_Off
                                     26 	.globl _initKeyboard
                                     27 	.globl _prtHex
                                     28 	.globl _clr
                                     29 	.globl _INT2
                                     30 	.globl _INT3
                                     31 	.globl _RXD
                                     32 	.globl _TXD
                                     33 	.globl _INT0
                                     34 	.globl _INT1
                                     35 	.globl _T0
                                     36 	.globl _T1
                                     37 	.globl _WR
                                     38 	.globl _RD
                                     39 	.globl _I2C_SCL
                                     40 	.globl _I2C_SDA
                                     41 	.globl _SPI_SS
                                     42 	.globl _SPI_MOSI
                                     43 	.globl _SPI_MISO
                                     44 	.globl _SPI_CLK
                                     45 	.globl _T2
                                     46 	.globl _T2EX
                                     47 	.globl _P40
                                     48 	.globl _P41
                                     49 	.globl _P42
                                     50 	.globl _P43
                                     51 	.globl _P30
                                     52 	.globl _P31
                                     53 	.globl _P32
                                     54 	.globl _P33
                                     55 	.globl _P34
                                     56 	.globl _P35
                                     57 	.globl _P36
                                     58 	.globl _P37
                                     59 	.globl _P20
                                     60 	.globl _P21
                                     61 	.globl _P22
                                     62 	.globl _P23
                                     63 	.globl _P24
                                     64 	.globl _P25
                                     65 	.globl _P26
                                     66 	.globl _P27
                                     67 	.globl _P10
                                     68 	.globl _P11
                                     69 	.globl _P12
                                     70 	.globl _P13
                                     71 	.globl _P14
                                     72 	.globl _P15
                                     73 	.globl _P16
                                     74 	.globl _P17
                                     75 	.globl _P00
                                     76 	.globl _P01
                                     77 	.globl _P02
                                     78 	.globl _P03
                                     79 	.globl _P04
                                     80 	.globl _P05
                                     81 	.globl _P06
                                     82 	.globl _P07
                                     83 	.globl _CR0
                                     84 	.globl _CR1
                                     85 	.globl _AA
                                     86 	.globl _SI
                                     87 	.globl _STO
                                     88 	.globl _STA
                                     89 	.globl _ENSI
                                     90 	.globl _CR2
                                     91 	.globl _IT2
                                     92 	.globl _IE2
                                     93 	.globl _EX2
                                     94 	.globl _IL2
                                     95 	.globl _IT3
                                     96 	.globl _IE3
                                     97 	.globl _EX3
                                     98 	.globl _IL3
                                     99 	.globl _CP_RL2
                                    100 	.globl _C_T2
                                    101 	.globl _TR2
                                    102 	.globl _EXEN2
                                    103 	.globl _TCLK
                                    104 	.globl _RCLK
                                    105 	.globl _EXF2
                                    106 	.globl _TF2
                                    107 	.globl _IT0
                                    108 	.globl _IE0
                                    109 	.globl _IT1
                                    110 	.globl _IE1
                                    111 	.globl _TR0
                                    112 	.globl _TF0
                                    113 	.globl _TR1
                                    114 	.globl _TF1
                                    115 	.globl _FE
                                    116 	.globl _RI
                                    117 	.globl _TI
                                    118 	.globl _RB8
                                    119 	.globl _TB8
                                    120 	.globl _REN
                                    121 	.globl _SM2
                                    122 	.globl _SM1
                                    123 	.globl _SM0
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PX2
                                    131 	.globl _PX3
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _EA
                                    139 	.globl _P
                                    140 	.globl _OV
                                    141 	.globl _RS0
                                    142 	.globl _RS1
                                    143 	.globl _F0
                                    144 	.globl _AC
                                    145 	.globl _CY
                                    146 	.globl _SCMD
                                    147 	.globl _IFADRL
                                    148 	.globl _IFADRH
                                    149 	.globl _IFD
                                    150 	.globl _ISPTME
                                    151 	.globl _ISPCR
                                    152 	.globl _WDTCR
                                    153 	.globl _AUXR2
                                    154 	.globl _AUXR
                                    155 	.globl _CKCON2
                                    156 	.globl _CKCON
                                    157 	.globl _PCON
                                    158 	.globl _SISTA
                                    159 	.globl _SIDAT
                                    160 	.globl _SIADR
                                    161 	.globl _SICON
                                    162 	.globl _SPSTAT
                                    163 	.globl _SPDAT
                                    164 	.globl _SPCTL
                                    165 	.globl _KBMASK
                                    166 	.globl _KBPATN
                                    167 	.globl _KBCON
                                    168 	.globl _SADEN
                                    169 	.globl _SADDR
                                    170 	.globl _SBUF
                                    171 	.globl _SCON
                                    172 	.globl _TH2
                                    173 	.globl _TL2
                                    174 	.globl _TH1
                                    175 	.globl _TL1
                                    176 	.globl _TH0
                                    177 	.globl _TL0
                                    178 	.globl _RCAP2H
                                    179 	.globl _RCAP2L
                                    180 	.globl _T2MOD
                                    181 	.globl _T2CON
                                    182 	.globl _TMOD
                                    183 	.globl _TCON
                                    184 	.globl _P4M1
                                    185 	.globl _P4M0
                                    186 	.globl _P3M1
                                    187 	.globl _P3M0
                                    188 	.globl _P2M1
                                    189 	.globl _P2M0
                                    190 	.globl _P1M1
                                    191 	.globl _P1M0
                                    192 	.globl _P0M1
                                    193 	.globl _P0M0
                                    194 	.globl _P4
                                    195 	.globl _P3
                                    196 	.globl _P2
                                    197 	.globl _P1
                                    198 	.globl _P0
                                    199 	.globl _IP
                                    200 	.globl _XICON
                                    201 	.globl _AUXIP
                                    202 	.globl _AUXIE
                                    203 	.globl _IE
                                    204 	.globl _PSW
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _B
                                    209 	.globl _ACC
                                    210 	.globl _ScrollLock
                                    211 	.globl _Caps
                                    212 	.globl _NumLock
                                    213 	.globl _allKeys
                                    214 	.globl _ToHost
                                    215 	.globl _downCount
                                    216 	.globl _activeKeys
                                    217 	.globl _LED_STATUS
                                    218 	.globl _sendKeyReport
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           0000E0   224 _ACC	=	0x00e0
                           0000F0   225 _B	=	0x00f0
                           000081   226 _SP	=	0x0081
                           000082   227 _DPL	=	0x0082
                           000083   228 _DPH	=	0x0083
                           0000D0   229 _PSW	=	0x00d0
                           0000A8   230 _IE	=	0x00a8
                           0000AD   231 _AUXIE	=	0x00ad
                           0000AE   232 _AUXIP	=	0x00ae
                           0000C0   233 _XICON	=	0x00c0
                           0000B8   234 _IP	=	0x00b8
                           000080   235 _P0	=	0x0080
                           000090   236 _P1	=	0x0090
                           0000A0   237 _P2	=	0x00a0
                           0000B0   238 _P3	=	0x00b0
                           0000E8   239 _P4	=	0x00e8
                           000093   240 _P0M0	=	0x0093
                           000094   241 _P0M1	=	0x0094
                           000091   242 _P1M0	=	0x0091
                           000092   243 _P1M1	=	0x0092
                           000095   244 _P2M0	=	0x0095
                           000096   245 _P2M1	=	0x0096
                           0000B1   246 _P3M0	=	0x00b1
                           0000B2   247 _P3M1	=	0x00b2
                           0000B3   248 _P4M0	=	0x00b3
                           0000B4   249 _P4M1	=	0x00b4
                           000088   250 _TCON	=	0x0088
                           000089   251 _TMOD	=	0x0089
                           0000C8   252 _T2CON	=	0x00c8
                           0000C9   253 _T2MOD	=	0x00c9
                           0000CA   254 _RCAP2L	=	0x00ca
                           0000CB   255 _RCAP2H	=	0x00cb
                           00008A   256 _TL0	=	0x008a
                           00008C   257 _TH0	=	0x008c
                           00008B   258 _TL1	=	0x008b
                           00008D   259 _TH1	=	0x008d
                           0000CC   260 _TL2	=	0x00cc
                           0000CD   261 _TH2	=	0x00cd
                           000098   262 _SCON	=	0x0098
                           000099   263 _SBUF	=	0x0099
                           0000A9   264 _SADDR	=	0x00a9
                           0000B9   265 _SADEN	=	0x00b9
                           0000D6   266 _KBCON	=	0x00d6
                           0000D5   267 _KBPATN	=	0x00d5
                           0000D7   268 _KBMASK	=	0x00d7
                           000085   269 _SPCTL	=	0x0085
                           000086   270 _SPDAT	=	0x0086
                           000084   271 _SPSTAT	=	0x0084
                           0000F8   272 _SICON	=	0x00f8
                           0000D1   273 _SIADR	=	0x00d1
                           0000D2   274 _SIDAT	=	0x00d2
                           0000D3   275 _SISTA	=	0x00d3
                           000087   276 _PCON	=	0x0087
                           0000C7   277 _CKCON	=	0x00c7
                           0000BF   278 _CKCON2	=	0x00bf
                           00008E   279 _AUXR	=	0x008e
                           0000A6   280 _AUXR2	=	0x00a6
                           0000E1   281 _WDTCR	=	0x00e1
                           0000E7   282 _ISPCR	=	0x00e7
                           0000E5   283 _ISPTME	=	0x00e5
                           0000E2   284 _IFD	=	0x00e2
                           0000E3   285 _IFADRH	=	0x00e3
                           0000E4   286 _IFADRL	=	0x00e4
                           0000E6   287 _SCMD	=	0x00e6
                                    288 ;--------------------------------------------------------
                                    289 ; special function bits
                                    290 ;--------------------------------------------------------
                                    291 	.area RSEG    (ABS,DATA)
      000000                        292 	.org 0x0000
                           0000D7   293 _CY	=	0x00d7
                           0000D6   294 _AC	=	0x00d6
                           0000D5   295 _F0	=	0x00d5
                           0000D4   296 _RS1	=	0x00d4
                           0000D3   297 _RS0	=	0x00d3
                           0000D2   298 _OV	=	0x00d2
                           0000D0   299 _P	=	0x00d0
                           0000AF   300 _EA	=	0x00af
                           0000AD   301 _ET2	=	0x00ad
                           0000AC   302 _ES	=	0x00ac
                           0000AB   303 _ET1	=	0x00ab
                           0000AA   304 _EX1	=	0x00aa
                           0000A9   305 _ET0	=	0x00a9
                           0000A8   306 _EX0	=	0x00a8
                           0000BF   307 _PX3	=	0x00bf
                           0000BE   308 _PX2	=	0x00be
                           0000BD   309 _PT2	=	0x00bd
                           0000BC   310 _PS	=	0x00bc
                           0000BB   311 _PT1	=	0x00bb
                           0000BA   312 _PX1	=	0x00ba
                           0000B9   313 _PT0	=	0x00b9
                           0000B8   314 _PX0	=	0x00b8
                           00009F   315 _SM0	=	0x009f
                           00009E   316 _SM1	=	0x009e
                           00009D   317 _SM2	=	0x009d
                           00009C   318 _REN	=	0x009c
                           00009B   319 _TB8	=	0x009b
                           00009A   320 _RB8	=	0x009a
                           000099   321 _TI	=	0x0099
                           000098   322 _RI	=	0x0098
                           00009F   323 _FE	=	0x009f
                           00008F   324 _TF1	=	0x008f
                           00008E   325 _TR1	=	0x008e
                           00008D   326 _TF0	=	0x008d
                           00008C   327 _TR0	=	0x008c
                           00008B   328 _IE1	=	0x008b
                           00008A   329 _IT1	=	0x008a
                           000089   330 _IE0	=	0x0089
                           000088   331 _IT0	=	0x0088
                           0000CF   332 _TF2	=	0x00cf
                           0000CE   333 _EXF2	=	0x00ce
                           0000CD   334 _RCLK	=	0x00cd
                           0000CC   335 _TCLK	=	0x00cc
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CA   337 _TR2	=	0x00ca
                           0000C9   338 _C_T2	=	0x00c9
                           0000C8   339 _CP_RL2	=	0x00c8
                           0000C7   340 _IL3	=	0x00c7
                           0000C6   341 _EX3	=	0x00c6
                           0000C5   342 _IE3	=	0x00c5
                           0000C4   343 _IT3	=	0x00c4
                           0000C3   344 _IL2	=	0x00c3
                           0000C2   345 _EX2	=	0x00c2
                           0000C1   346 _IE2	=	0x00c1
                           0000C0   347 _IT2	=	0x00c0
                           0000FF   348 _CR2	=	0x00ff
                           0000FE   349 _ENSI	=	0x00fe
                           0000FD   350 _STA	=	0x00fd
                           0000FC   351 _STO	=	0x00fc
                           0000FB   352 _SI	=	0x00fb
                           0000FA   353 _AA	=	0x00fa
                           0000F9   354 _CR1	=	0x00f9
                           0000F8   355 _CR0	=	0x00f8
                           000087   356 _P07	=	0x0087
                           000086   357 _P06	=	0x0086
                           000085   358 _P05	=	0x0085
                           000084   359 _P04	=	0x0084
                           000083   360 _P03	=	0x0083
                           000082   361 _P02	=	0x0082
                           000081   362 _P01	=	0x0081
                           000080   363 _P00	=	0x0080
                           000097   364 _P17	=	0x0097
                           000096   365 _P16	=	0x0096
                           000095   366 _P15	=	0x0095
                           000094   367 _P14	=	0x0094
                           000093   368 _P13	=	0x0093
                           000092   369 _P12	=	0x0092
                           000091   370 _P11	=	0x0091
                           000090   371 _P10	=	0x0090
                           0000A7   372 _P27	=	0x00a7
                           0000A6   373 _P26	=	0x00a6
                           0000A5   374 _P25	=	0x00a5
                           0000A4   375 _P24	=	0x00a4
                           0000A3   376 _P23	=	0x00a3
                           0000A2   377 _P22	=	0x00a2
                           0000A1   378 _P21	=	0x00a1
                           0000A0   379 _P20	=	0x00a0
                           0000B7   380 _P37	=	0x00b7
                           0000B6   381 _P36	=	0x00b6
                           0000B5   382 _P35	=	0x00b5
                           0000B4   383 _P34	=	0x00b4
                           0000B3   384 _P33	=	0x00b3
                           0000B2   385 _P32	=	0x00b2
                           0000B1   386 _P31	=	0x00b1
                           0000B0   387 _P30	=	0x00b0
                           0000EB   388 _P43	=	0x00eb
                           0000EA   389 _P42	=	0x00ea
                           0000E9   390 _P41	=	0x00e9
                           0000E8   391 _P40	=	0x00e8
                           000091   392 _T2EX	=	0x0091
                           000090   393 _T2	=	0x0090
                           0000A7   394 _SPI_CLK	=	0x00a7
                           0000A6   395 _SPI_MISO	=	0x00a6
                           0000A5   396 _SPI_MOSI	=	0x00a5
                           0000A4   397 _SPI_SS	=	0x00a4
                           0000A1   398 _I2C_SDA	=	0x00a1
                           0000A0   399 _I2C_SCL	=	0x00a0
                           0000B7   400 _RD	=	0x00b7
                           0000B6   401 _WR	=	0x00b6
                           0000B5   402 _T1	=	0x00b5
                           0000B4   403 _T0	=	0x00b4
                           0000B3   404 _INT1	=	0x00b3
                           0000B2   405 _INT0	=	0x00b2
                           0000B1   406 _TXD	=	0x00b1
                           0000B0   407 _RXD	=	0x00b0
                           0000B7   408 _INT3	=	0x00b7
                           0000B6   409 _INT2	=	0x00b6
                                    410 ;--------------------------------------------------------
                                    411 ; overlayable register banks
                                    412 ;--------------------------------------------------------
                                    413 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        414 	.ds 8
                                    415 ;--------------------------------------------------------
                                    416 ; internal ram data
                                    417 ;--------------------------------------------------------
                                    418 	.area DSEG    (DATA)
                           000020   419 _LED_STATUS	=	0x0020
      000023                        420 _activeKeys::
      000023                        421 	.ds 24
      00003B                        422 _downCount::
      00003B                        423 	.ds 1
      00003C                        424 _ToHost::
      00003C                        425 	.ds 8
      000044                        426 _prtHex_buf_65536_28:
      000044                        427 	.ds 8
      00004C                        428 _msg_buf_65536_45:
      00004C                        429 	.ds 8
      000054                        430 _sendKeyReport_buf_65536_50:
      000054                        431 	.ds 3
      000057                        432 _sendKeys_prevDownCount_65536_54:
      000057                        433 	.ds 1
      000058                        434 _sendKeys_alternateKeyPending_65536_54:
      000058                        435 	.ds 1
      000059                        436 _sendKeys_mod_65536_54:
      000059                        437 	.ds 1
      00005A                        438 _sendKeys_layer_65536_54:
      00005A                        439 	.ds 2
      00005C                        440 _sendKeys_HostIndex_65536_54:
      00005C                        441 	.ds 1
      00005D                        442 _sendKeys_sloc0_1_0:
      00005D                        443 	.ds 1
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 	.area	OSEG    (OVR,DATA)
      000074                        448 _clr_PARM_2:
      000074                        449 	.ds 1
                                    450 	.area	OSEG    (OVR,DATA)
                                    451 	.area	OSEG    (OVR,DATA)
      000074                        452 _updateActiveKeys_mask_65536_68:
      000074                        453 	.ds 1
      000075                        454 _updateActiveKeys_keyState_65536_68:
      000075                        455 	.ds 1
      000076                        456 _updateActiveKeys_keyChanges_65536_68:
      000076                        457 	.ds 1
      000077                        458 _updateActiveKeys_sloc0_1_0:
      000077                        459 	.ds 3
      00007A                        460 _updateActiveKeys_sloc1_1_0:
      00007A                        461 	.ds 3
                                    462 	.area	OSEG    (OVR,DATA)
      000074                        463 _addActiveKey_PARM_2:
      000074                        464 	.ds 1
      000075                        465 _addActiveKey_kp_65536_79:
      000075                        466 	.ds 3
      000078                        467 _addActiveKey_sloc0_1_0:
      000078                        468 	.ds 3
                                    469 ;--------------------------------------------------------
                                    470 ; indirectly addressable internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area ISEG    (DATA)
      00007D                        473 _allKeys::
      00007D                        474 	.ds 18
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                           000020   484 _NumLock	=	0x0020
                           000021   485 _Caps	=	0x0021
                           000022   486 _ScrollLock	=	0x0022
                                    487 ;--------------------------------------------------------
                                    488 ; paged external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area PSEG    (PAG,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XSEG    (XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; global & static initialisations
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT  (CODE)
                                    518 	.area GSFINAL (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'sendKeys'
                                    522 ;------------------------------------------------------------
                                    523 ;prevDownCount             Allocated with name '_sendKeys_prevDownCount_65536_54'
                                    524 ;alternateKeyPending       Allocated with name '_sendKeys_alternateKeyPending_65536_54'
                                    525 ;offset                    Allocated to registers r7 
                                    526 ;index                     Allocated to registers 
                                    527 ;hidCode                   Allocated to registers r6 
                                    528 ;mod                       Allocated with name '_sendKeys_mod_65536_54'
                                    529 ;layer                     Allocated with name '_sendKeys_layer_65536_54'
                                    530 ;kp                        Allocated to registers 
                                    531 ;HostIndex                 Allocated with name '_sendKeys_HostIndex_65536_54'
                                    532 ;sloc0                     Allocated with name '_sendKeys_sloc0_1_0'
                                    533 ;------------------------------------------------------------
                                    534 ;	keyboard.c:203: static BYTE prevDownCount = 0;
      000108 75 57 00         [24]  535 	mov	_sendKeys_prevDownCount_65536_54,#0x00
                                    536 ;	keyboard.c:205: static BYTE alternateKeyPending = 0;
      00010B 75 58 00         [24]  537 	mov	_sendKeys_alternateKeyPending_65536_54,#0x00
                                    538 ;	keyboard.c:46: char downCount=0;		// number of keys DOWN
      00010E 75 3B 00         [24]  539 	mov	_downCount,#0x00
                                    540 ;--------------------------------------------------------
                                    541 ; Home
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area HOME    (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; code
                                    547 ;--------------------------------------------------------
                                    548 	.area CSEG    (CODE)
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'clr'
                                    551 ;------------------------------------------------------------
                                    552 ;len                       Allocated with name '_clr_PARM_2'
                                    553 ;buf                       Allocated to registers r5 r6 r7 
                                    554 ;cp                        Allocated to registers r5 r6 r7 
                                    555 ;------------------------------------------------------------
                                    556 ;	keyboard.c:49: void clr(BYTE *buf, BYTE len) {
                                    557 ;	-----------------------------------------
                                    558 ;	 function clr
                                    559 ;	-----------------------------------------
      000210                        560 _clr:
                           000007   561 	ar7 = 0x07
                           000006   562 	ar6 = 0x06
                           000005   563 	ar5 = 0x05
                           000004   564 	ar4 = 0x04
                           000003   565 	ar3 = 0x03
                           000002   566 	ar2 = 0x02
                           000001   567 	ar1 = 0x01
                           000000   568 	ar0 = 0x00
      000210 AD 82            [24]  569 	mov	r5,dpl
      000212 AE 83            [24]  570 	mov	r6,dph
      000214 AF F0            [24]  571 	mov	r7,b
                                    572 ;	keyboard.c:52: for(cp = buf; cp < buf+len; cp++) {
      000216 E5 74            [12]  573 	mov	a,_clr_PARM_2
      000218 2D               [12]  574 	add	a,r5
      000219 FA               [12]  575 	mov	r2,a
      00021A E4               [12]  576 	clr	a
      00021B 3E               [12]  577 	addc	a,r6
      00021C FB               [12]  578 	mov	r3,a
      00021D 8F 04            [24]  579 	mov	ar4,r7
      00021F                        580 00103$:
      00021F C0 02            [24]  581 	push	ar2
      000221 C0 03            [24]  582 	push	ar3
      000223 C0 04            [24]  583 	push	ar4
      000225 8D 82            [24]  584 	mov	dpl,r5
      000227 8E 83            [24]  585 	mov	dph,r6
      000229 8F F0            [24]  586 	mov	b,r7
      00022B 12 00 81         [24]  587 	lcall	___gptr_cmp
      00022E 15 81            [12]  588 	dec	sp
      000230 15 81            [12]  589 	dec	sp
      000232 15 81            [12]  590 	dec	sp
      000234 50 11            [24]  591 	jnc	00105$
                                    592 ;	keyboard.c:53: *cp = 0;	
      000236 8D 82            [24]  593 	mov	dpl,r5
      000238 8E 83            [24]  594 	mov	dph,r6
      00023A 8F F0            [24]  595 	mov	b,r7
      00023C E4               [12]  596 	clr	a
      00023D 12 0E 9D         [24]  597 	lcall	__gptrput
      000240 A3               [24]  598 	inc	dptr
      000241 AD 82            [24]  599 	mov	r5,dpl
      000243 AE 83            [24]  600 	mov	r6,dph
                                    601 ;	keyboard.c:52: for(cp = buf; cp < buf+len; cp++) {
      000245 80 D8            [24]  602 	sjmp	00103$
      000247                        603 00105$:
                                    604 ;	keyboard.c:55: }
      000247 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'prtHex'
                                    608 ;------------------------------------------------------------
                                    609 ;n                         Allocated to registers r7 
                                    610 ;hi                        Allocated to registers r6 
                                    611 ;lo                        Allocated to registers r7 
                                    612 ;buf                       Allocated with name '_prtHex_buf_65536_28'
                                    613 ;------------------------------------------------------------
                                    614 ;	keyboard.c:61: void prtHex(BYTE n) {
                                    615 ;	-----------------------------------------
                                    616 ;	 function prtHex
                                    617 ;	-----------------------------------------
      000248                        618 _prtHex:
                                    619 ;	keyboard.c:64: BYTE hi = n >> 4;
      000248 E5 82            [12]  620 	mov	a,dpl
      00024A FF               [12]  621 	mov	r7,a
      00024B C4               [12]  622 	swap	a
      00024C 54 0F            [12]  623 	anl	a,#0x0f
      00024E FE               [12]  624 	mov	r6,a
                                    625 ;	keyboard.c:65: BYTE lo = n & 0xf;
      00024F 53 07 0F         [24]  626 	anl	ar7,#0x0f
                                    627 ;	keyboard.c:67: clr(buf, 8);
      000252 75 74 08         [24]  628 	mov	_clr_PARM_2,#0x08
      000255 90 00 44         [24]  629 	mov	dptr,#_prtHex_buf_65536_28
      000258 75 F0 40         [24]  630 	mov	b,#0x40
      00025B C0 07            [24]  631 	push	ar7
      00025D C0 06            [24]  632 	push	ar6
      00025F 12 02 10         [24]  633 	lcall	_clr
      000262 D0 06            [24]  634 	pop	ar6
      000264 D0 07            [24]  635 	pop	ar7
                                    636 ;	keyboard.c:69: buf[2] = hexTab[hi];
      000266 EE               [12]  637 	mov	a,r6
      000267 90 10 A2         [24]  638 	mov	dptr,#_prtHex_hexTab_65536_28
      00026A 93               [24]  639 	movc	a,@a+dptr
      00026B FE               [12]  640 	mov	r6,a
      00026C 8E 46            [24]  641 	mov	(_prtHex_buf_65536_28 + 0x0002),r6
                                    642 ;	keyboard.c:70: buf[3] = hexTab[lo];
      00026E EF               [12]  643 	mov	a,r7
      00026F 90 10 A2         [24]  644 	mov	dptr,#_prtHex_hexTab_65536_28
      000272 93               [24]  645 	movc	a,@a+dptr
      000273 FF               [12]  646 	mov	r7,a
      000274 8F 47            [24]  647 	mov	(_prtHex_buf_65536_28 + 0x0003),r7
                                    648 ;	keyboard.c:71: sendKeyReport(buf);
      000276 90 00 44         [24]  649 	mov	dptr,#_prtHex_buf_65536_28
      000279 75 F0 40         [24]  650 	mov	b,#0x40
      00027C 12 03 C4         [24]  651 	lcall	_sendKeyReport
                                    652 ;	keyboard.c:72: clr(buf, 8);
      00027F 75 74 08         [24]  653 	mov	_clr_PARM_2,#0x08
      000282 90 00 44         [24]  654 	mov	dptr,#_prtHex_buf_65536_28
      000285 75 F0 40         [24]  655 	mov	b,#0x40
      000288 12 02 10         [24]  656 	lcall	_clr
                                    657 ;	keyboard.c:73: sendKeyReport(buf);
      00028B 90 00 44         [24]  658 	mov	dptr,#_prtHex_buf_65536_28
      00028E 75 F0 40         [24]  659 	mov	b,#0x40
                                    660 ;	keyboard.c:74: }
      000291 02 03 C4         [24]  661 	ljmp	_sendKeyReport
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'initKeyboard'
                                    664 ;------------------------------------------------------------
                                    665 ;kp                        Allocated to registers 
                                    666 ;------------------------------------------------------------
                                    667 ;	keyboard.c:76: void initKeyboard( void ) { 
                                    668 ;	-----------------------------------------
                                    669 ;	 function initKeyboard
                                    670 ;	-----------------------------------------
      000294                        671 _initKeyboard:
                                    672 ;	keyboard.c:77: KBPATN = 0xFF;
      000294 75 D5 FF         [24]  673 	mov	_KBPATN,#0xff
                                    674 ;	keyboard.c:78: KBCON = 0x00;
      000297 75 D6 00         [24]  675 	mov	_KBCON,#0x00
                                    676 ;	keyboard.c:79: KBMASK = 0x00;                               // Will Disable KP Interrupt
      00029A 75 D7 00         [24]  677 	mov	_KBMASK,#0x00
                                    678 ;	keyboard.c:81: LED_STATUS = 0x00;                           // Default LED off
      00029D 75 20 00         [24]  679 	mov	_LED_STATUS,#0x00
                                    680 ;	keyboard.c:82: ScrollLock = 0;
                                    681 ;	assignBit
      0002A0 C2 22            [12]  682 	clr	_ScrollLock
                                    683 ;	keyboard.c:83: Caps = 0;
                                    684 ;	assignBit
      0002A2 C2 21            [12]  685 	clr	_Caps
                                    686 ;	keyboard.c:84: NumLock = 0;
                                    687 ;	assignBit
      0002A4 C2 20            [12]  688 	clr	_NumLock
                                    689 ;	keyboard.c:85: TxBusy = CLR;                           // SET when pass key code to host
      0002A6 75 5E 00         [24]  690 	mov	_TxBusy,#0x00
                                    691 ;	keyboard.c:87: downCount = 0;
      0002A9 75 3B 00         [24]  692 	mov	_downCount,#0x00
                                    693 ;	keyboard.c:90: for(kp = activeKeys; kp < activeKeys+MAX_ROLLOVER; kp++) {
      0002AC 7D 23            [12]  694 	mov	r5,#_activeKeys
      0002AE 7E 00            [12]  695 	mov	r6,#0x00
      0002B0 7F 40            [12]  696 	mov	r7,#0x40
      0002B2                        697 00103$:
      0002B2 74 3B            [12]  698 	mov	a,#(_activeKeys + 0x0018)
      0002B4 C0 E0            [24]  699 	push	acc
      0002B6 74 00            [12]  700 	mov	a,#((_activeKeys + 0x0018) >> 8)
      0002B8 C0 E0            [24]  701 	push	acc
      0002BA 74 40            [12]  702 	mov	a,#0x40
      0002BC C0 E0            [24]  703 	push	acc
      0002BE 8D 82            [24]  704 	mov	dpl,r5
      0002C0 8E 83            [24]  705 	mov	dph,r6
      0002C2 8F F0            [24]  706 	mov	b,r7
      0002C4 12 00 81         [24]  707 	lcall	___gptr_cmp
      0002C7 15 81            [12]  708 	dec	sp
      0002C9 15 81            [12]  709 	dec	sp
      0002CB 15 81            [12]  710 	dec	sp
      0002CD 50 1C            [24]  711 	jnc	00101$
                                    712 ;	keyboard.c:91: kp->state = FREE;
      0002CF 74 02            [12]  713 	mov	a,#0x02
      0002D1 2D               [12]  714 	add	a,r5
      0002D2 FA               [12]  715 	mov	r2,a
      0002D3 E4               [12]  716 	clr	a
      0002D4 3E               [12]  717 	addc	a,r6
      0002D5 FB               [12]  718 	mov	r3,a
      0002D6 8F 04            [24]  719 	mov	ar4,r7
      0002D8 8A 82            [24]  720 	mov	dpl,r2
      0002DA 8B 83            [24]  721 	mov	dph,r3
      0002DC 8C F0            [24]  722 	mov	b,r4
      0002DE E4               [12]  723 	clr	a
      0002DF 12 0E 9D         [24]  724 	lcall	__gptrput
                                    725 ;	keyboard.c:90: for(kp = activeKeys; kp < activeKeys+MAX_ROLLOVER; kp++) {
      0002E2 74 04            [12]  726 	mov	a,#0x04
      0002E4 2D               [12]  727 	add	a,r5
      0002E5 FD               [12]  728 	mov	r5,a
      0002E6 E4               [12]  729 	clr	a
      0002E7 3E               [12]  730 	addc	a,r6
      0002E8 FE               [12]  731 	mov	r6,a
      0002E9 80 C7            [24]  732 	sjmp	00103$
      0002EB                        733 00101$:
                                    734 ;	keyboard.c:93: clr((BYTE *)ToHost, 8);
      0002EB 7D 3C            [12]  735 	mov	r5,#_ToHost
      0002ED 7E 00            [12]  736 	mov	r6,#0x00
      0002EF 7F 40            [12]  737 	mov	r7,#0x40
      0002F1 75 74 08         [24]  738 	mov	_clr_PARM_2,#0x08
      0002F4 8D 82            [24]  739 	mov	dpl,r5
      0002F6 8E 83            [24]  740 	mov	dph,r6
      0002F8 8F F0            [24]  741 	mov	b,r7
      0002FA 12 02 10         [24]  742 	lcall	_clr
                                    743 ;	keyboard.c:94: NumLock_LED = 1;
                                    744 ;	assignBit
      0002FD D2 B5            [12]  745 	setb	_P35
                                    746 ;	keyboard.c:95: }
      0002FF 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'KB_LED_Off'
                                    750 ;------------------------------------------------------------
                                    751 ;	keyboard.c:98: void KB_LED_Off( void ) { 
                                    752 ;	-----------------------------------------
                                    753 ;	 function KB_LED_Off
                                    754 ;	-----------------------------------------
      000300                        755 _KB_LED_Off:
                                    756 ;	keyboard.c:99: NumLock_LED = SET;
                                    757 ;	assignBit
      000300 D2 B5            [12]  758 	setb	_P35
                                    759 ;	keyboard.c:100: Caps_LED = SET;
                                    760 ;	assignBit
      000302 D2 B6            [12]  761 	setb	_P36
                                    762 ;	keyboard.c:101: ScrollLock_LED = SET;
                                    763 ;	assignBit
      000304 D2 B7            [12]  764 	setb	_P37
                                    765 ;	keyboard.c:102: }
      000306 22               [24]  766 	ret
                                    767 ;------------------------------------------------------------
                                    768 ;Allocation info for local variables in function 'KB_LED_Status'
                                    769 ;------------------------------------------------------------
                                    770 ;	keyboard.c:105: void KB_LED_Status( void ) { 
                                    771 ;	-----------------------------------------
                                    772 ;	 function KB_LED_Status
                                    773 ;	-----------------------------------------
      000307                        774 _KB_LED_Status:
                                    775 ;	keyboard.c:106: NumLock_LED = 0;
                                    776 ;	assignBit
      000307 C2 B5            [12]  777 	clr	_P35
                                    778 ;	keyboard.c:107: NumLock_LED = ~NumLock;
                                    779 ;	assignBit
      000309 D2 B5            [12]  780 	setb	_P35
                                    781 ;	keyboard.c:108: Caps_LED = ~Caps;
                                    782 ;	assignBit
      00030B D2 B6            [12]  783 	setb	_P36
                                    784 ;	keyboard.c:109: ScrollLock_LED = ~ScrollLock;
                                    785 ;	assignBit
      00030D D2 B7            [12]  786 	setb	_P37
                                    787 ;	keyboard.c:110: }
      00030F 22               [24]  788 	ret
                                    789 ;------------------------------------------------------------
                                    790 ;Allocation info for local variables in function 'delayMicroSec'
                                    791 ;------------------------------------------------------------
                                    792 ;microSec                  Allocated to registers 
                                    793 ;------------------------------------------------------------
                                    794 ;	keyboard.c:112: void delayMicroSec(BYTE microSec) { 
                                    795 ;	-----------------------------------------
                                    796 ;	 function delayMicroSec
                                    797 ;	-----------------------------------------
      000310                        798 _delayMicroSec:
      000310 AF 82            [24]  799 	mov	r7,dpl
      000312                        800 00103$:
                                    801 ;	keyboard.c:113: for (;microSec != 0; microSec--) { 
      000312 EF               [12]  802 	mov	a,r7
      000313 60 04            [24]  803 	jz	00105$
                                    804 ;	keyboard.c:116: __endasm;
      000315 00               [12]  805 	nop
                                    806 ;	keyboard.c:113: for (;microSec != 0; microSec--) { 
      000316 1F               [12]  807 	dec	r7
      000317 80 F9            [24]  808 	sjmp	00103$
      000319                        809 00105$:
                                    810 ;	keyboard.c:118: }
      000319 22               [24]  811 	ret
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'read_column'
                                    814 ;------------------------------------------------------------
                                    815 ;Scan_index                Allocated to registers r7 
                                    816 ;scanValue                 Allocated to registers 
                                    817 ;------------------------------------------------------------
                                    818 ;	keyboard.c:121: BYTE read_column( BYTE Scan_index ) { 
                                    819 ;	-----------------------------------------
                                    820 ;	 function read_column
                                    821 ;	-----------------------------------------
      00031A                        822 _read_column:
                                    823 ;	keyboard.c:132: P1 = KeyScan_Table[Scan_index][0];
      00031A E5 82            [12]  824 	mov	a,dpl
      00031C 75 F0 03         [24]  825 	mov	b,#0x03
      00031F A4               [48]  826 	mul	ab
      000320 24 B2            [12]  827 	add	a,#_read_column_KeyScan_Table_65536_43
      000322 FE               [12]  828 	mov	r6,a
      000323 74 10            [12]  829 	mov	a,#(_read_column_KeyScan_Table_65536_43 >> 8)
      000325 35 F0            [12]  830 	addc	a,b
      000327 FF               [12]  831 	mov	r7,a
      000328 8E 82            [24]  832 	mov	dpl,r6
      00032A 8F 83            [24]  833 	mov	dph,r7
      00032C E4               [12]  834 	clr	a
      00032D 93               [24]  835 	movc	a,@a+dptr
      00032E F5 90            [12]  836 	mov	_P1,a
                                    837 ;	keyboard.c:133: P2 = KeyScan_Table[Scan_index][1];
      000330 8E 82            [24]  838 	mov	dpl,r6
      000332 8F 83            [24]  839 	mov	dph,r7
      000334 A3               [24]  840 	inc	dptr
      000335 E4               [12]  841 	clr	a
      000336 93               [24]  842 	movc	a,@a+dptr
      000337 F5 A0            [12]  843 	mov	_P2,a
                                    844 ;	keyboard.c:134: P3 = P3&KeyScan_Table[Scan_index][2];
      000339 8E 82            [24]  845 	mov	dpl,r6
      00033B 8F 83            [24]  846 	mov	dph,r7
      00033D A3               [24]  847 	inc	dptr
      00033E A3               [24]  848 	inc	dptr
      00033F E4               [12]  849 	clr	a
      000340 93               [24]  850 	movc	a,@a+dptr
      000341 52 B0            [12]  851 	anl	_P3,a
                                    852 ;	keyboard.c:136: delayMicroSec( 10 );
      000343 75 82 0A         [24]  853 	mov	dpl,#0x0a
      000346 12 03 10         [24]  854 	lcall	_delayMicroSec
                                    855 ;	keyboard.c:138: scanValue = P0;                            // 1101,1111 -> 0 for Key " PRESS "
                                    856 ;	keyboard.c:139: scanValue = ~scanValue;                  // 0010,0000
      000349 E5 80            [12]  857 	mov	a,_P0
      00034B F4               [12]  858 	cpl	a
      00034C F5 82            [12]  859 	mov	dpl,a
                                    860 ;	keyboard.c:141: P1 = 0xFF;
      00034E 75 90 FF         [24]  861 	mov	_P1,#0xff
                                    862 ;	keyboard.c:142: P2 = 0xFF;
      000351 75 A0 FF         [24]  863 	mov	_P2,#0xff
                                    864 ;	keyboard.c:143: P3 = P3|0x18;
      000354 43 B0 18         [24]  865 	orl	_P3,#0x18
                                    866 ;	keyboard.c:145: return scanValue;
                                    867 ;	keyboard.c:146: }
      000357 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'msg'
                                    871 ;------------------------------------------------------------
                                    872 ;m                         Allocated to registers r7 
                                    873 ;buf                       Allocated with name '_msg_buf_65536_45'
                                    874 ;------------------------------------------------------------
                                    875 ;	keyboard.c:149: void msg(BYTE m) {
                                    876 ;	-----------------------------------------
                                    877 ;	 function msg
                                    878 ;	-----------------------------------------
      000358                        879 _msg:
      000358 AF 82            [24]  880 	mov	r7,dpl
                                    881 ;	keyboard.c:152: clr(buf, 8);
      00035A 75 74 08         [24]  882 	mov	_clr_PARM_2,#0x08
      00035D 90 00 4C         [24]  883 	mov	dptr,#_msg_buf_65536_45
      000360 75 F0 40         [24]  884 	mov	b,#0x40
      000363 C0 07            [24]  885 	push	ar7
      000365 12 02 10         [24]  886 	lcall	_clr
      000368 D0 07            [24]  887 	pop	ar7
                                    888 ;	keyboard.c:153: if(m >= 'a' && m <=	'z') {
      00036A BF 61 00         [24]  889 	cjne	r7,#0x61,00145$
      00036D                        890 00145$:
      00036D 40 0E            [24]  891 	jc	00112$
      00036F EF               [12]  892 	mov	a,r7
      000370 24 85            [12]  893 	add	a,#0xff - 0x7a
      000372 40 09            [24]  894 	jc	00112$
                                    895 ;	keyboard.c:154: buf[2] = m-'a'+_A;	
      000374 8F 06            [24]  896 	mov	ar6,r7
      000376 74 A3            [12]  897 	mov	a,#0xa3
      000378 2E               [12]  898 	add	a,r6
      000379 F5 4E            [12]  899 	mov	(_msg_buf_65536_45 + 0x0002),a
      00037B 80 2F            [24]  900 	sjmp	00113$
      00037D                        901 00112$:
                                    902 ;	keyboard.c:155: } else if(m >= 'A' && m <= 'Z') {
      00037D BF 41 00         [24]  903 	cjne	r7,#0x41,00148$
      000380                        904 00148$:
      000380 40 11            [24]  905 	jc	00108$
      000382 EF               [12]  906 	mov	a,r7
      000383 24 A5            [12]  907 	add	a,#0xff - 0x5a
      000385 40 0C            [24]  908 	jc	00108$
                                    909 ;	keyboard.c:156: buf[2] = m-'A'+_A;
      000387 8F 06            [24]  910 	mov	ar6,r7
      000389 74 C3            [12]  911 	mov	a,#0xc3
      00038B 2E               [12]  912 	add	a,r6
      00038C F5 4E            [12]  913 	mov	(_msg_buf_65536_45 + 0x0002),a
                                    914 ;	keyboard.c:157: buf[0] = KEY_MOD_LSHIFT;
      00038E 75 4C 02         [24]  915 	mov	_msg_buf_65536_45,#0x02
      000391 80 19            [24]  916 	sjmp	00113$
      000393                        917 00108$:
                                    918 ;	keyboard.c:158: } else if(m >= '1' && m <= '9') {
      000393 BF 31 00         [24]  919 	cjne	r7,#0x31,00151$
      000396                        920 00151$:
      000396 40 0E            [24]  921 	jc	00104$
      000398 EF               [12]  922 	mov	a,r7
      000399 24 C6            [12]  923 	add	a,#0xff - 0x39
      00039B 40 09            [24]  924 	jc	00104$
                                    925 ;	keyboard.c:159: buf[2] = m - '1' + _1;
      00039D 8F 06            [24]  926 	mov	ar6,r7
      00039F 74 ED            [12]  927 	mov	a,#0xed
      0003A1 2E               [12]  928 	add	a,r6
      0003A2 F5 4E            [12]  929 	mov	(_msg_buf_65536_45 + 0x0002),a
      0003A4 80 06            [24]  930 	sjmp	00113$
      0003A6                        931 00104$:
                                    932 ;	keyboard.c:160: } else if(m == ' ') {
      0003A6 BF 20 03         [24]  933 	cjne	r7,#0x20,00113$
                                    934 ;	keyboard.c:161: buf[2] = _SPACE;	
      0003A9 75 4E 2C         [24]  935 	mov	(_msg_buf_65536_45 + 0x0002),#0x2c
      0003AC                        936 00113$:
                                    937 ;	keyboard.c:164: sendKeyReport(buf);
      0003AC 90 00 4C         [24]  938 	mov	dptr,#_msg_buf_65536_45
      0003AF 75 F0 40         [24]  939 	mov	b,#0x40
      0003B2 12 03 C4         [24]  940 	lcall	_sendKeyReport
                                    941 ;	keyboard.c:165: buf[0] = 0;
      0003B5 75 4C 00         [24]  942 	mov	_msg_buf_65536_45,#0x00
                                    943 ;	keyboard.c:166: buf[2] = 0;
      0003B8 75 4E 00         [24]  944 	mov	(_msg_buf_65536_45 + 0x0002),#0x00
                                    945 ;	keyboard.c:167: sendKeyReport(buf);
      0003BB 90 00 4C         [24]  946 	mov	dptr,#_msg_buf_65536_45
      0003BE 75 F0 40         [24]  947 	mov	b,#0x40
                                    948 ;	keyboard.c:169: }
      0003C1 02 03 C4         [24]  949 	ljmp	_sendKeyReport
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'sendKeyReport'
                                    952 ;------------------------------------------------------------
                                    953 ;buf                       Allocated with name '_sendKeyReport_buf_65536_50'
                                    954 ;i                         Allocated to registers r4 
                                    955 ;------------------------------------------------------------
                                    956 ;	keyboard.c:171: void sendKeyReport(BYTE *buf) { 
                                    957 ;	-----------------------------------------
                                    958 ;	 function sendKeyReport
                                    959 ;	-----------------------------------------
      0003C4                        960 _sendKeyReport:
      0003C4 85 82 54         [24]  961 	mov	_sendKeyReport_buf_65536_50,dpl
      0003C7 85 83 55         [24]  962 	mov	(_sendKeyReport_buf_65536_50 + 1),dph
      0003CA 85 F0 56         [24]  963 	mov	(_sendKeyReport_buf_65536_50 + 2),b
                                    964 ;	keyboard.c:174: if(Ep0.EmuOk == CLR)
      0003CD E5 62            [12]  965 	mov	a,(_Ep0 + 0x0001)
      0003CF 70 01            [24]  966 	jnz	00102$
                                    967 ;	keyboard.c:175: return;
      0003D1 22               [24]  968 	ret
      0003D2                        969 00102$:
                                    970 ;	keyboard.c:180: EA = 0;
                                    971 ;	assignBit
      0003D2 C2 AF            [12]  972 	clr	_EA
                                    973 ;	keyboard.c:181: USB[EPINDEX] = EP1;
      0003D4 90 FF F1         [24]  974 	mov	dptr,#0xfff1
      0003D7 74 01            [12]  975 	mov	a,#0x01
      0003D9 F0               [24]  976 	movx	@dptr,a
                                    977 ;	keyboard.c:183: while(i < 8) { 
      0003DA 7C 00            [12]  978 	mov	r4,#0x00
      0003DC                        979 00103$:
      0003DC BC 08 00         [24]  980 	cjne	r4,#0x08,00133$
      0003DF                        981 00133$:
      0003DF 50 1B            [24]  982 	jnc	00105$
                                    983 ;	keyboard.c:184: USB[TXDAT] = buf[i];
      0003E1 EC               [12]  984 	mov	a,r4
      0003E2 25 54            [12]  985 	add	a,_sendKeyReport_buf_65536_50
      0003E4 FA               [12]  986 	mov	r2,a
      0003E5 E4               [12]  987 	clr	a
      0003E6 35 55            [12]  988 	addc	a,(_sendKeyReport_buf_65536_50 + 1)
      0003E8 FB               [12]  989 	mov	r3,a
      0003E9 AF 56            [24]  990 	mov	r7,(_sendKeyReport_buf_65536_50 + 2)
      0003EB 8A 82            [24]  991 	mov	dpl,r2
      0003ED 8B 83            [24]  992 	mov	dph,r3
      0003EF 8F F0            [24]  993 	mov	b,r7
      0003F1 12 10 82         [24]  994 	lcall	__gptrget
      0003F4 FA               [12]  995 	mov	r2,a
      0003F5 90 FF F3         [24]  996 	mov	dptr,#0xfff3
      0003F8 F0               [24]  997 	movx	@dptr,a
                                    998 ;	keyboard.c:185: i++;
      0003F9 0C               [12]  999 	inc	r4
      0003FA 80 E0            [24] 1000 	sjmp	00103$
      0003FC                       1001 00105$:
                                   1002 ;	keyboard.c:187: TxBusy = SET;
      0003FC 75 5E 01         [24] 1003 	mov	_TxBusy,#0x01
                                   1004 ;	keyboard.c:188: USB[TXCNT] = i;
      0003FF 90 FF F6         [24] 1005 	mov	dptr,#0xfff6
      000402 EC               [12] 1006 	mov	a,r4
      000403 F0               [24] 1007 	movx	@dptr,a
                                   1008 ;	keyboard.c:189: USB[EPINDEX] = EP0;
      000404 90 FF F1         [24] 1009 	mov	dptr,#0xfff1
      000407 E4               [12] 1010 	clr	a
      000408 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	keyboard.c:190: EA = 1; 	
                                   1013 ;	assignBit
      000409 D2 AF            [12] 1014 	setb	_EA
                                   1015 ;	keyboard.c:191: while(TxBusy)
      00040B                       1016 00106$:
      00040B E5 5E            [12] 1017 	mov	a,_TxBusy
      00040D 70 FC            [24] 1018 	jnz	00106$
                                   1019 ;	keyboard.c:194: clr((BYTE *)buf, 8);
      00040F 75 74 08         [24] 1020 	mov	_clr_PARM_2,#0x08
      000412 85 54 82         [24] 1021 	mov	dpl,_sendKeyReport_buf_65536_50
      000415 85 55 83         [24] 1022 	mov	dph,(_sendKeyReport_buf_65536_50 + 1)
      000418 85 56 F0         [24] 1023 	mov	b,(_sendKeyReport_buf_65536_50 + 2)
                                   1024 ;	keyboard.c:195: }
      00041B 02 02 10         [24] 1025 	ljmp	_clr
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'sendKeys'
                                   1028 ;------------------------------------------------------------
                                   1029 ;prevDownCount             Allocated with name '_sendKeys_prevDownCount_65536_54'
                                   1030 ;alternateKeyPending       Allocated with name '_sendKeys_alternateKeyPending_65536_54'
                                   1031 ;offset                    Allocated to registers r7 
                                   1032 ;index                     Allocated to registers 
                                   1033 ;hidCode                   Allocated to registers r6 
                                   1034 ;mod                       Allocated with name '_sendKeys_mod_65536_54'
                                   1035 ;layer                     Allocated with name '_sendKeys_layer_65536_54'
                                   1036 ;kp                        Allocated to registers 
                                   1037 ;HostIndex                 Allocated with name '_sendKeys_HostIndex_65536_54'
                                   1038 ;sloc0                     Allocated with name '_sendKeys_sloc0_1_0'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	keyboard.c:197: void sendKeys()  { 
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function sendKeys
                                   1043 ;	-----------------------------------------
      00041E                       1044 _sendKeys:
                                   1045 ;	keyboard.c:233: CBYTE *layer = topLayer;
      00041E 75 5A 80         [24] 1046 	mov	_sendKeys_layer_65536_54,#_topLayer
      000421 75 5B 11         [24] 1047 	mov	(_sendKeys_layer_65536_54 + 1),#(_topLayer >> 8)
                                   1048 ;	keyboard.c:239: if(alternateKeyPending && (downCount == 0)) {
      000424 E5 58            [12] 1049 	mov	a,_sendKeys_alternateKeyPending_65536_54
      000426 60 1B            [24] 1050 	jz	00102$
      000428 E5 3B            [12] 1051 	mov	a,_downCount
                                   1052 ;	keyboard.c:240: ToHost.Normal.Code[HostIndex++] = alternateKeyPending;
                                   1053 ;	keyboard.c:241: alternateKeyPending = 0;
      00042A 70 17            [24] 1054 	jnz	00102$
      00042C 85 58 3E         [24] 1055 	mov	(_ToHost + 0x0002),_sendKeys_alternateKeyPending_65536_54
      00042F F5 58            [12] 1056 	mov	_sendKeys_alternateKeyPending_65536_54,a
                                   1057 ;	keyboard.c:243: sendKeyReport((BYTE *)&ToHost);
      000431 90 00 3C         [24] 1058 	mov	dptr,#_ToHost
      000434 75 F0 40         [24] 1059 	mov	b,#0x40
      000437 12 03 C4         [24] 1060 	lcall	_sendKeyReport
                                   1061 ;	keyboard.c:245: sendKeyReport((BYTE *)&ToHost);
      00043A 90 00 3C         [24] 1062 	mov	dptr,#_ToHost
      00043D 75 F0 40         [24] 1063 	mov	b,#0x40
                                   1064 ;	keyboard.c:246: return;
      000440 02 03 C4         [24] 1065 	ljmp	_sendKeyReport
      000443                       1066 00102$:
                                   1067 ;	keyboard.c:249: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      000443 7B 23            [12] 1068 	mov	r3,#_activeKeys
      000445 7C 00            [12] 1069 	mov	r4,#0x00
      000447 7D 40            [12] 1070 	mov	r5,#0x40
                                   1071 ;	1-genFromRTrack replaced	mov	_sendKeys_HostIndex_65536_54,#0x00
      000449 8C 5C            [24] 1072 	mov	_sendKeys_HostIndex_65536_54,r4
      00044B                       1073 00127$:
      00044B 74 3B            [12] 1074 	mov	a,#(_activeKeys + 0x0018)
      00044D C0 E0            [24] 1075 	push	acc
      00044F 74 00            [12] 1076 	mov	a,#((_activeKeys + 0x0018) >> 8)
      000451 C0 E0            [24] 1077 	push	acc
      000453 74 40            [12] 1078 	mov	a,#0x40
      000455 C0 E0            [24] 1079 	push	acc
      000457 8B 82            [24] 1080 	mov	dpl,r3
      000459 8C 83            [24] 1081 	mov	dph,r4
      00045B 8D F0            [24] 1082 	mov	b,r5
      00045D 12 00 81         [24] 1083 	lcall	___gptr_cmp
      000460 15 81            [12] 1084 	dec	sp
      000462 15 81            [12] 1085 	dec	sp
      000464 15 81            [12] 1086 	dec	sp
      000466 40 03            [24] 1087 	jc	00198$
      000468 02 05 4C         [24] 1088 	ljmp	00125$
      00046B                       1089 00198$:
                                   1090 ;	keyboard.c:250: if(kp->state == DOWN) {
      00046B 74 02            [12] 1091 	mov	a,#0x02
      00046D 2B               [12] 1092 	add	a,r3
      00046E FA               [12] 1093 	mov	r2,a
      00046F E4               [12] 1094 	clr	a
      000470 3C               [12] 1095 	addc	a,r4
      000471 FE               [12] 1096 	mov	r6,a
      000472 8D 07            [24] 1097 	mov	ar7,r5
      000474 8A 82            [24] 1098 	mov	dpl,r2
      000476 8E 83            [24] 1099 	mov	dph,r6
      000478 8F F0            [24] 1100 	mov	b,r7
      00047A 12 10 82         [24] 1101 	lcall	__gptrget
      00047D FA               [12] 1102 	mov	r2,a
      00047E BA 01 02         [24] 1103 	cjne	r2,#0x01,00199$
      000481 80 03            [24] 1104 	sjmp	00200$
      000483                       1105 00199$:
      000483 02 05 42         [24] 1106 	ljmp	00128$
      000486                       1107 00200$:
                                   1108 ;	keyboard.c:251: index = (kp->col << 3) + kp->row;
      000486 8B 82            [24] 1109 	mov	dpl,r3
      000488 8C 83            [24] 1110 	mov	dph,r4
      00048A 8D F0            [24] 1111 	mov	b,r5
      00048C 12 10 82         [24] 1112 	lcall	__gptrget
      00048F C4               [12] 1113 	swap	a
      000490 03               [12] 1114 	rr	a
      000491 54 F8            [12] 1115 	anl	a,#0xf8
      000493 F5 5D            [12] 1116 	mov	_sendKeys_sloc0_1_0,a
      000495 74 01            [12] 1117 	mov	a,#0x01
      000497 2B               [12] 1118 	add	a,r3
      000498 FA               [12] 1119 	mov	r2,a
      000499 E4               [12] 1120 	clr	a
      00049A 3C               [12] 1121 	addc	a,r4
      00049B FE               [12] 1122 	mov	r6,a
      00049C 8D 07            [24] 1123 	mov	ar7,r5
      00049E 8A 82            [24] 1124 	mov	dpl,r2
      0004A0 8E 83            [24] 1125 	mov	dph,r6
      0004A2 8F F0            [24] 1126 	mov	b,r7
      0004A4 12 10 82         [24] 1127 	lcall	__gptrget
      0004A7 25 5D            [12] 1128 	add	a,_sendKeys_sloc0_1_0
                                   1129 ;	keyboard.c:252: offset = key_index[index];
      0004A9 90 10 EB         [24] 1130 	mov	dptr,#_sendKeys_key_index_65536_54
      0004AC 93               [24] 1131 	movc	a,@a+dptr
                                   1132 ;	keyboard.c:253: if(offset == 0) {
      0004AD FF               [12] 1133 	mov	r7,a
      0004AE 70 01            [24] 1134 	jnz	00105$
                                   1135 ;	keyboard.c:254: return;	
      0004B0 22               [24] 1136 	ret
      0004B1                       1137 00105$:
                                   1138 ;	keyboard.c:257: offset = (--offset) << 1;
      0004B1 1F               [12] 1139 	dec	r7
      0004B2 EF               [12] 1140 	mov	a,r7
      0004B3 2F               [12] 1141 	add	a,r7
                                   1142 ;	keyboard.c:258: hidCode = layer[offset];
      0004B4 FF               [12] 1143 	mov	r7,a
      0004B5 25 5A            [12] 1144 	add	a,_sendKeys_layer_65536_54
      0004B7 F5 82            [12] 1145 	mov	dpl,a
      0004B9 E4               [12] 1146 	clr	a
      0004BA 35 5B            [12] 1147 	addc	a,(_sendKeys_layer_65536_54 + 1)
      0004BC F5 83            [12] 1148 	mov	dph,a
      0004BE E4               [12] 1149 	clr	a
      0004BF 93               [24] 1150 	movc	a,@a+dptr
      0004C0 FE               [12] 1151 	mov	r6,a
                                   1152 ;	keyboard.c:259: mod = layer[offset+1];
      0004C1 7A 00            [12] 1153 	mov	r2,#0x00
      0004C3 0F               [12] 1154 	inc	r7
      0004C4 BF 00 01         [24] 1155 	cjne	r7,#0x00,00202$
      0004C7 0A               [12] 1156 	inc	r2
      0004C8                       1157 00202$:
      0004C8 EF               [12] 1158 	mov	a,r7
      0004C9 25 5A            [12] 1159 	add	a,_sendKeys_layer_65536_54
      0004CB F5 82            [12] 1160 	mov	dpl,a
      0004CD EA               [12] 1161 	mov	a,r2
      0004CE 35 5B            [12] 1162 	addc	a,(_sendKeys_layer_65536_54 + 1)
      0004D0 F5 83            [12] 1163 	mov	dph,a
      0004D2 E4               [12] 1164 	clr	a
      0004D3 93               [24] 1165 	movc	a,@a+dptr
                                   1166 ;	keyboard.c:260: if(mod & COMBINATION_KEY) {
      0004D4 F5 59            [12] 1167 	mov	_sendKeys_mod_65536_54,a
      0004D6 30 E7 53         [24] 1168 	jnb	acc.7,00121$
                                   1169 ;	keyboard.c:261: if(hidCode > 0xf) {
      0004D9 EE               [12] 1170 	mov	a,r6
      0004DA 24 F0            [12] 1171 	add	a,#0xff - 0x0f
      0004DC 50 16            [24] 1172 	jnc	00112$
                                   1173 ;	keyboard.c:262: ToHost.Normal.Modifier = 1 << (hidCode - 0xe0);
      0004DE 8E 02            [24] 1174 	mov	ar2,r6
      0004E0 EA               [12] 1175 	mov	a,r2
      0004E1 24 20            [12] 1176 	add	a,#0x20
      0004E3 F5 F0            [12] 1177 	mov	b,a
      0004E5 05 F0            [12] 1178 	inc	b
      0004E7 74 01            [12] 1179 	mov	a,#0x01
      0004E9 80 02            [24] 1180 	sjmp	00207$
      0004EB                       1181 00205$:
      0004EB 25 E0            [12] 1182 	add	a,acc
      0004ED                       1183 00207$:
      0004ED D5 F0 FB         [24] 1184 	djnz	b,00205$
      0004F0 F5 3C            [12] 1185 	mov	_ToHost,a
      0004F2 80 14            [24] 1186 	sjmp	00113$
      0004F4                       1187 00112$:
                                   1188 ;	keyboard.c:263: } else if(hidCode == 0x1) {
      0004F4 BE 01 08         [24] 1189 	cjne	r6,#0x01,00109$
                                   1190 ;	keyboard.c:264: layer = fnLayer;
      0004F7 75 5A 30         [24] 1191 	mov	_sendKeys_layer_65536_54,#_fnLayer
      0004FA 75 5B 12         [24] 1192 	mov	(_sendKeys_layer_65536_54 + 1),#(_fnLayer >> 8)
      0004FD 80 09            [24] 1193 	sjmp	00113$
      0004FF                       1194 00109$:
                                   1195 ;	keyboard.c:265: } else if(hidCode == 0x2) {
      0004FF BE 02 06         [24] 1196 	cjne	r6,#0x02,00113$
                                   1197 ;	keyboard.c:266: layer = numLayer;
      000502 75 5A E0         [24] 1198 	mov	_sendKeys_layer_65536_54,#_numLayer
      000505 75 5B 12         [24] 1199 	mov	(_sendKeys_layer_65536_54 + 1),#(_numLayer >> 8)
      000508                       1200 00113$:
                                   1201 ;	keyboard.c:268: if(downCount == 1 && prevDownCount == 0) {
      000508 74 01            [12] 1202 	mov	a,#0x01
      00050A B5 3B 1A         [24] 1203 	cjne	a,_downCount,00115$
      00050D E5 57            [12] 1204 	mov	a,_sendKeys_prevDownCount_65536_54
                                   1205 ;	keyboard.c:269: alternateKeyPending = combineKeyAlternates[mod & 0xf];
      00050F 70 16            [24] 1206 	jnz	00115$
      000511 AA 59            [24] 1207 	mov	r2,_sendKeys_mod_65536_54
      000513 53 02 0F         [24] 1208 	anl	ar2,#0x0f
      000516 7F 00            [12] 1209 	mov	r7,#0x00
      000518 EA               [12] 1210 	mov	a,r2
      000519 24 7B            [12] 1211 	add	a,#_sendKeys_combineKeyAlternates_65536_54
      00051B F5 82            [12] 1212 	mov	dpl,a
      00051D EF               [12] 1213 	mov	a,r7
      00051E 34 11            [12] 1214 	addc	a,#(_sendKeys_combineKeyAlternates_65536_54 >> 8)
      000520 F5 83            [12] 1215 	mov	dph,a
      000522 E4               [12] 1216 	clr	a
      000523 93               [24] 1217 	movc	a,@a+dptr
      000524 F5 58            [12] 1218 	mov	_sendKeys_alternateKeyPending_65536_54,a
                                   1219 ;	keyboard.c:270: return;
      000526 22               [24] 1220 	ret
      000527                       1221 00115$:
                                   1222 ;	keyboard.c:272: alternateKeyPending = 0;	
      000527 75 58 00         [24] 1223 	mov	_sendKeys_alternateKeyPending_65536_54,#0x00
      00052A 80 16            [24] 1224 	sjmp	00128$
      00052C                       1225 00121$:
                                   1226 ;	keyboard.c:276: if(mod & 0x0f) {
      00052C E5 59            [12] 1227 	mov	a,_sendKeys_mod_65536_54
      00052E 54 0F            [12] 1228 	anl	a,#0x0f
      000530 60 06            [24] 1229 	jz	00119$
                                   1230 ;	keyboard.c:277: ToHost.Normal.Modifier = mod & 0x0f; 
      000532 74 0F            [12] 1231 	mov	a,#0x0f
      000534 55 59            [12] 1232 	anl	a,_sendKeys_mod_65536_54
      000536 F5 3C            [12] 1233 	mov	_ToHost,a
      000538                       1234 00119$:
                                   1235 ;	keyboard.c:279: ToHost.Normal.Code[HostIndex++] = hidCode;
      000538 AF 5C            [24] 1236 	mov	r7,_sendKeys_HostIndex_65536_54
      00053A 05 5C            [12] 1237 	inc	_sendKeys_HostIndex_65536_54
      00053C EF               [12] 1238 	mov	a,r7
      00053D 24 3E            [12] 1239 	add	a,#(_ToHost + 0x0002)
      00053F F8               [12] 1240 	mov	r0,a
      000540 A6 06            [24] 1241 	mov	@r0,ar6
      000542                       1242 00128$:
                                   1243 ;	keyboard.c:249: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      000542 74 04            [12] 1244 	mov	a,#0x04
      000544 2B               [12] 1245 	add	a,r3
      000545 FB               [12] 1246 	mov	r3,a
      000546 E4               [12] 1247 	clr	a
      000547 3C               [12] 1248 	addc	a,r4
      000548 FC               [12] 1249 	mov	r4,a
      000549 02 04 4B         [24] 1250 	ljmp	00127$
      00054C                       1251 00125$:
                                   1252 ;	keyboard.c:285: prevDownCount = downCount;
      00054C 85 3B 57         [24] 1253 	mov	_sendKeys_prevDownCount_65536_54,_downCount
                                   1254 ;	keyboard.c:286: } 
      00054F 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'updateActiveKeys'
                                   1258 ;------------------------------------------------------------
                                   1259 ;mask                      Allocated with name '_updateActiveKeys_mask_65536_68'
                                   1260 ;kp                        Allocated to registers 
                                   1261 ;keyState                  Allocated with name '_updateActiveKeys_keyState_65536_68'
                                   1262 ;keyChanges                Allocated with name '_updateActiveKeys_keyChanges_65536_68'
                                   1263 ;sloc0                     Allocated with name '_updateActiveKeys_sloc0_1_0'
                                   1264 ;sloc1                     Allocated with name '_updateActiveKeys_sloc1_1_0'
                                   1265 ;------------------------------------------------------------
                                   1266 ;	keyboard.c:298: BYTE updateActiveKeys() {
                                   1267 ;	-----------------------------------------
                                   1268 ;	 function updateActiveKeys
                                   1269 ;	-----------------------------------------
      000550                       1270 _updateActiveKeys:
                                   1271 ;	keyboard.c:303: BYTE keyChanges = 0;
      000550 75 76 00         [24] 1272 	mov	_updateActiveKeys_keyChanges_65536_68,#0x00
                                   1273 ;	keyboard.c:305: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      000553 7C 23            [12] 1274 	mov	r4,#_activeKeys
      000555 7D 00            [12] 1275 	mov	r5,#0x00
      000557 7E 40            [12] 1276 	mov	r6,#0x40
      000559                       1277 00117$:
      000559 74 3B            [12] 1278 	mov	a,#(_activeKeys + 0x0018)
      00055B C0 E0            [24] 1279 	push	acc
      00055D 74 00            [12] 1280 	mov	a,#((_activeKeys + 0x0018) >> 8)
      00055F C0 E0            [24] 1281 	push	acc
      000561 74 40            [12] 1282 	mov	a,#0x40
      000563 C0 E0            [24] 1283 	push	acc
      000565 8C 82            [24] 1284 	mov	dpl,r4
      000567 8D 83            [24] 1285 	mov	dph,r5
      000569 8E F0            [24] 1286 	mov	b,r6
      00056B 12 00 81         [24] 1287 	lcall	___gptr_cmp
      00056E 15 81            [12] 1288 	dec	sp
      000570 15 81            [12] 1289 	dec	sp
      000572 15 81            [12] 1290 	dec	sp
      000574 40 03            [24] 1291 	jc	00153$
      000576 02 06 A3         [24] 1292 	ljmp	00115$
      000579                       1293 00153$:
                                   1294 ;	keyboard.c:307: if (kp->state == FREE) {
      000579 74 02            [12] 1295 	mov	a,#0x02
      00057B 2C               [12] 1296 	add	a,r4
      00057C F5 77            [12] 1297 	mov	_updateActiveKeys_sloc0_1_0,a
      00057E E4               [12] 1298 	clr	a
      00057F 3D               [12] 1299 	addc	a,r5
      000580 F5 78            [12] 1300 	mov	(_updateActiveKeys_sloc0_1_0 + 1),a
      000582 8E 79            [24] 1301 	mov	(_updateActiveKeys_sloc0_1_0 + 2),r6
      000584 85 77 82         [24] 1302 	mov	dpl,_updateActiveKeys_sloc0_1_0
      000587 85 78 83         [24] 1303 	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
      00058A 85 79 F0         [24] 1304 	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
      00058D 12 10 82         [24] 1305 	lcall	__gptrget
      000590 70 03            [24] 1306 	jnz	00154$
      000592 02 06 99         [24] 1307 	ljmp	00114$
      000595                       1308 00154$:
                                   1309 ;	keyboard.c:311: keyState = allKeys[kp->col];
      000595 8C 82            [24] 1310 	mov	dpl,r4
      000597 8D 83            [24] 1311 	mov	dph,r5
      000599 8E F0            [24] 1312 	mov	b,r6
      00059B 12 10 82         [24] 1313 	lcall	__gptrget
      00059E 24 7D            [12] 1314 	add	a,#_allKeys
      0005A0 F9               [12] 1315 	mov	r1,a
      0005A1 87 75            [24] 1316 	mov	_updateActiveKeys_keyState_65536_68,@r1
                                   1317 ;	keyboard.c:312: mask = 1 << kp->row;
      0005A3 74 01            [12] 1318 	mov	a,#0x01
      0005A5 2C               [12] 1319 	add	a,r4
      0005A6 FA               [12] 1320 	mov	r2,a
      0005A7 E4               [12] 1321 	clr	a
      0005A8 3D               [12] 1322 	addc	a,r5
      0005A9 FB               [12] 1323 	mov	r3,a
      0005AA 8E 07            [24] 1324 	mov	ar7,r6
      0005AC 8A 82            [24] 1325 	mov	dpl,r2
      0005AE 8B 83            [24] 1326 	mov	dph,r3
      0005B0 8F F0            [24] 1327 	mov	b,r7
      0005B2 12 10 82         [24] 1328 	lcall	__gptrget
      0005B5 FA               [12] 1329 	mov	r2,a
      0005B6 8A F0            [24] 1330 	mov	b,r2
      0005B8 05 F0            [12] 1331 	inc	b
      0005BA 74 01            [12] 1332 	mov	a,#0x01
      0005BC 80 02            [24] 1333 	sjmp	00157$
      0005BE                       1334 00155$:
      0005BE 25 E0            [12] 1335 	add	a,acc
      0005C0                       1336 00157$:
      0005C0 D5 F0 FB         [24] 1337 	djnz	b,00155$
      0005C3 F5 74            [12] 1338 	mov	_updateActiveKeys_mask_65536_68,a
                                   1339 ;	keyboard.c:313: if(mask & keyState) {
      0005C5 E5 75            [12] 1340 	mov	a,_updateActiveKeys_keyState_65536_68
      0005C7 55 74            [12] 1341 	anl	a,_updateActiveKeys_mask_65536_68
      0005C9 60 62            [24] 1342 	jz	00112$
                                   1343 ;	keyboard.c:314: kp->count++;
      0005CB 74 03            [12] 1344 	mov	a,#0x03
      0005CD 2C               [12] 1345 	add	a,r4
      0005CE F5 7A            [12] 1346 	mov	_updateActiveKeys_sloc1_1_0,a
      0005D0 E4               [12] 1347 	clr	a
      0005D1 3D               [12] 1348 	addc	a,r5
      0005D2 F5 7B            [12] 1349 	mov	(_updateActiveKeys_sloc1_1_0 + 1),a
      0005D4 8E 7C            [24] 1350 	mov	(_updateActiveKeys_sloc1_1_0 + 2),r6
      0005D6 85 7A 82         [24] 1351 	mov	dpl,_updateActiveKeys_sloc1_1_0
      0005D9 85 7B 83         [24] 1352 	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
      0005DC 85 7C F0         [24] 1353 	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
      0005DF 12 10 82         [24] 1354 	lcall	__gptrget
      0005E2 FB               [12] 1355 	mov	r3,a
      0005E3 0B               [12] 1356 	inc	r3
      0005E4 85 7A 82         [24] 1357 	mov	dpl,_updateActiveKeys_sloc1_1_0
      0005E7 85 7B 83         [24] 1358 	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
      0005EA 85 7C F0         [24] 1359 	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
      0005ED EB               [12] 1360 	mov	a,r3
      0005EE 12 0E 9D         [24] 1361 	lcall	__gptrput
                                   1362 ;	keyboard.c:315: if(kp->count >= DOWN_COUNT) {
      0005F1 BB 14 00         [24] 1363 	cjne	r3,#0x14,00159$
      0005F4                       1364 00159$:
      0005F4 50 03            [24] 1365 	jnc	00160$
      0005F6 02 06 85         [24] 1366 	ljmp	00113$
      0005F9                       1367 00160$:
                                   1368 ;	keyboard.c:316: kp->count = DOWN_COUNT;
      0005F9 85 7A 82         [24] 1369 	mov	dpl,_updateActiveKeys_sloc1_1_0
      0005FC 85 7B 83         [24] 1370 	mov	dph,(_updateActiveKeys_sloc1_1_0 + 1)
      0005FF 85 7C F0         [24] 1371 	mov	b,(_updateActiveKeys_sloc1_1_0 + 2)
      000602 74 14            [12] 1372 	mov	a,#0x14
      000604 12 0E 9D         [24] 1373 	lcall	__gptrput
                                   1374 ;	keyboard.c:317: if(kp->state != DOWN) {
      000607 85 77 82         [24] 1375 	mov	dpl,_updateActiveKeys_sloc0_1_0
      00060A 85 78 83         [24] 1376 	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
      00060D 85 79 F0         [24] 1377 	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
      000610 12 10 82         [24] 1378 	lcall	__gptrget
      000613 FB               [12] 1379 	mov	r3,a
      000614 BB 01 02         [24] 1380 	cjne	r3,#0x01,00161$
      000617 80 6C            [24] 1381 	sjmp	00113$
      000619                       1382 00161$:
                                   1383 ;	keyboard.c:318: kp->state = DOWN;
      000619 85 77 82         [24] 1384 	mov	dpl,_updateActiveKeys_sloc0_1_0
      00061C 85 78 83         [24] 1385 	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
      00061F 85 79 F0         [24] 1386 	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
      000622 74 01            [12] 1387 	mov	a,#0x01
      000624 12 0E 9D         [24] 1388 	lcall	__gptrput
                                   1389 ;	keyboard.c:319: keyChanges = 1;
                                   1390 ;	1-genFromRTrack replaced	mov	_updateActiveKeys_keyChanges_65536_68,#0x01
      000627 F5 76            [12] 1391 	mov	_updateActiveKeys_keyChanges_65536_68,a
                                   1392 ;	keyboard.c:320: downCount++;
      000629 05 3B            [12] 1393 	inc	_downCount
      00062B 80 58            [24] 1394 	sjmp	00113$
      00062D                       1395 00112$:
                                   1396 ;	keyboard.c:324: kp->count--;
      00062D 74 03            [12] 1397 	mov	a,#0x03
      00062F 2C               [12] 1398 	add	a,r4
      000630 FA               [12] 1399 	mov	r2,a
      000631 E4               [12] 1400 	clr	a
      000632 3D               [12] 1401 	addc	a,r5
      000633 FB               [12] 1402 	mov	r3,a
      000634 8E 07            [24] 1403 	mov	ar7,r6
      000636 C0 04            [24] 1404 	push	ar4
      000638 C0 05            [24] 1405 	push	ar5
      00063A C0 06            [24] 1406 	push	ar6
      00063C 8A 82            [24] 1407 	mov	dpl,r2
      00063E 8B 83            [24] 1408 	mov	dph,r3
      000640 8F F0            [24] 1409 	mov	b,r7
      000642 12 10 82         [24] 1410 	lcall	__gptrget
      000645 FE               [12] 1411 	mov	r6,a
      000646 1E               [12] 1412 	dec	r6
      000647 8A 82            [24] 1413 	mov	dpl,r2
      000649 8B 83            [24] 1414 	mov	dph,r3
      00064B 8F F0            [24] 1415 	mov	b,r7
      00064D EE               [12] 1416 	mov	a,r6
      00064E 12 0E 9D         [24] 1417 	lcall	__gptrput
                                   1418 ;	keyboard.c:325: if(kp->count <= 1) {
      000651 C3               [12] 1419 	clr	c
      000652 74 01            [12] 1420 	mov	a,#0x01
      000654 9E               [12] 1421 	subb	a,r6
      000655 D0 06            [24] 1422 	pop	ar6
      000657 D0 05            [24] 1423 	pop	ar5
      000659 D0 04            [24] 1424 	pop	ar4
      00065B 40 28            [24] 1425 	jc	00113$
                                   1426 ;	keyboard.c:326: if(kp->state == DOWN) {
      00065D 85 77 82         [24] 1427 	mov	dpl,_updateActiveKeys_sloc0_1_0
      000660 85 78 83         [24] 1428 	mov	dph,(_updateActiveKeys_sloc0_1_0 + 1)
      000663 85 79 F0         [24] 1429 	mov	b,(_updateActiveKeys_sloc0_1_0 + 2)
      000666 12 10 82         [24] 1430 	lcall	__gptrget
      000669 FF               [12] 1431 	mov	r7,a
      00066A BF 01 05         [24] 1432 	cjne	r7,#0x01,00108$
                                   1433 ;	keyboard.c:327: downCount--;
      00066D 15 3B            [12] 1434 	dec	_downCount
                                   1435 ;	keyboard.c:328: keyChanges = 1;
      00066F 75 76 01         [24] 1436 	mov	_updateActiveKeys_keyChanges_65536_68,#0x01
      000672                       1437 00108$:
                                   1438 ;	keyboard.c:330: kp->state = FREE;
      000672 74 02            [12] 1439 	mov	a,#0x02
      000674 2C               [12] 1440 	add	a,r4
      000675 FA               [12] 1441 	mov	r2,a
      000676 E4               [12] 1442 	clr	a
      000677 3D               [12] 1443 	addc	a,r5
      000678 FB               [12] 1444 	mov	r3,a
      000679 8E 07            [24] 1445 	mov	ar7,r6
      00067B 8A 82            [24] 1446 	mov	dpl,r2
      00067D 8B 83            [24] 1447 	mov	dph,r3
      00067F 8F F0            [24] 1448 	mov	b,r7
      000681 E4               [12] 1449 	clr	a
      000682 12 0E 9D         [24] 1450 	lcall	__gptrput
      000685                       1451 00113$:
                                   1452 ;	keyboard.c:335: allKeys[kp->col] &= ~mask;
      000685 8C 82            [24] 1453 	mov	dpl,r4
      000687 8D 83            [24] 1454 	mov	dph,r5
      000689 8E F0            [24] 1455 	mov	b,r6
      00068B 12 10 82         [24] 1456 	lcall	__gptrget
      00068E 24 7D            [12] 1457 	add	a,#_allKeys
      000690 F9               [12] 1458 	mov	r1,a
      000691 87 07            [24] 1459 	mov	ar7,@r1
      000693 E5 74            [12] 1460 	mov	a,_updateActiveKeys_mask_65536_68
      000695 F4               [12] 1461 	cpl	a
      000696 FB               [12] 1462 	mov	r3,a
      000697 5F               [12] 1463 	anl	a,r7
      000698 F7               [12] 1464 	mov	@r1,a
      000699                       1465 00114$:
                                   1466 ;	keyboard.c:305: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      000699 74 04            [12] 1467 	mov	a,#0x04
      00069B 2C               [12] 1468 	add	a,r4
      00069C FC               [12] 1469 	mov	r4,a
      00069D E4               [12] 1470 	clr	a
      00069E 3D               [12] 1471 	addc	a,r5
      00069F FD               [12] 1472 	mov	r5,a
      0006A0 02 05 59         [24] 1473 	ljmp	00117$
      0006A3                       1474 00115$:
                                   1475 ;	keyboard.c:337: return keyChanges;
      0006A3 85 76 82         [24] 1476 	mov	dpl,_updateActiveKeys_keyChanges_65536_68
                                   1477 ;	keyboard.c:338: }
      0006A6 22               [24] 1478 	ret
                                   1479 ;------------------------------------------------------------
                                   1480 ;Allocation info for local variables in function 'addActiveKey'
                                   1481 ;------------------------------------------------------------
                                   1482 ;keyState                  Allocated with name '_addActiveKey_PARM_2'
                                   1483 ;col                       Allocated to registers r7 
                                   1484 ;row                       Allocated to registers r6 
                                   1485 ;mask                      Allocated to registers r6 
                                   1486 ;kp                        Allocated with name '_addActiveKey_kp_65536_79'
                                   1487 ;sloc0                     Allocated with name '_addActiveKey_sloc0_1_0'
                                   1488 ;------------------------------------------------------------
                                   1489 ;	keyboard.c:345: void addActiveKey(BYTE col, BYTE keyState) {
                                   1490 ;	-----------------------------------------
                                   1491 ;	 function addActiveKey
                                   1492 ;	-----------------------------------------
      0006A7                       1493 _addActiveKey:
      0006A7 AF 82            [24] 1494 	mov	r7,dpl
                                   1495 ;	keyboard.c:353: if(keyState == 0) {
      0006A9 E5 74            [12] 1496 	mov	a,_addActiveKey_PARM_2
      0006AB 70 01            [24] 1497 	jnz	00102$
                                   1498 ;	keyboard.c:354: return;	
      0006AD 22               [24] 1499 	ret
      0006AE                       1500 00102$:
                                   1501 ;	keyboard.c:356: mask = 1;
      0006AE 7E 01            [12] 1502 	mov	r6,#0x01
                                   1503 ;	keyboard.c:357: for(row=0; row < 8; row++) {
      0006B0 7D 00            [12] 1504 	mov	r5,#0x00
      0006B2                       1505 00109$:
                                   1506 ;	keyboard.c:358: if(mask & keyState) {
      0006B2 E5 74            [12] 1507 	mov	a,_addActiveKey_PARM_2
      0006B4 5E               [12] 1508 	anl	a,r6
      0006B5 70 0B            [24] 1509 	jnz	00122$
                                   1510 ;	keyboard.c:361: mask <<= 1;
      0006B7 8E 04            [24] 1511 	mov	ar4,r6
      0006B9 EC               [12] 1512 	mov	a,r4
      0006BA 2C               [12] 1513 	add	a,r4
      0006BB FE               [12] 1514 	mov	r6,a
                                   1515 ;	keyboard.c:357: for(row=0; row < 8; row++) {
      0006BC 0D               [12] 1516 	inc	r5
      0006BD BD 08 00         [24] 1517 	cjne	r5,#0x08,00143$
      0006C0                       1518 00143$:
      0006C0 40 F0            [24] 1519 	jc	00109$
      0006C2                       1520 00122$:
      0006C2 8D 06            [24] 1521 	mov	ar6,r5
                                   1522 ;	keyboard.c:366: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      0006C4 75 75 23         [24] 1523 	mov	_addActiveKey_kp_65536_79,#_activeKeys
      0006C7 75 76 00         [24] 1524 	mov	(_addActiveKey_kp_65536_79 + 1),#0x00
      0006CA 75 77 40         [24] 1525 	mov	(_addActiveKey_kp_65536_79 + 2),#0x40
      0006CD A8 75            [24] 1526 	mov	r0,_addActiveKey_kp_65536_79
      0006CF A9 76            [24] 1527 	mov	r1,(_addActiveKey_kp_65536_79 + 1)
      0006D1 AA 77            [24] 1528 	mov	r2,(_addActiveKey_kp_65536_79 + 2)
      0006D3                       1529 00112$:
      0006D3 74 3B            [12] 1530 	mov	a,#(_activeKeys + 0x0018)
      0006D5 C0 E0            [24] 1531 	push	acc
      0006D7 74 00            [12] 1532 	mov	a,#((_activeKeys + 0x0018) >> 8)
      0006D9 C0 E0            [24] 1533 	push	acc
      0006DB 74 40            [12] 1534 	mov	a,#0x40
      0006DD C0 E0            [24] 1535 	push	acc
      0006DF 88 82            [24] 1536 	mov	dpl,r0
      0006E1 89 83            [24] 1537 	mov	dph,r1
      0006E3 8A F0            [24] 1538 	mov	b,r2
      0006E5 12 00 81         [24] 1539 	lcall	___gptr_cmp
      0006E8 15 81            [12] 1540 	dec	sp
      0006EA 15 81            [12] 1541 	dec	sp
      0006EC 15 81            [12] 1542 	dec	sp
      0006EE 50 6F            [24] 1543 	jnc	00114$
                                   1544 ;	keyboard.c:367: if(kp->state == FREE) {
      0006F0 74 02            [12] 1545 	mov	a,#0x02
      0006F2 28               [12] 1546 	add	a,r0
      0006F3 F5 78            [12] 1547 	mov	_addActiveKey_sloc0_1_0,a
      0006F5 E4               [12] 1548 	clr	a
      0006F6 39               [12] 1549 	addc	a,r1
      0006F7 F5 79            [12] 1550 	mov	(_addActiveKey_sloc0_1_0 + 1),a
      0006F9 8A 7A            [24] 1551 	mov	(_addActiveKey_sloc0_1_0 + 2),r2
      0006FB 85 78 82         [24] 1552 	mov	dpl,_addActiveKey_sloc0_1_0
      0006FE 85 79 83         [24] 1553 	mov	dph,(_addActiveKey_sloc0_1_0 + 1)
      000701 85 7A F0         [24] 1554 	mov	b,(_addActiveKey_sloc0_1_0 + 2)
      000704 12 10 82         [24] 1555 	lcall	__gptrget
      000707 70 46            [24] 1556 	jnz	00113$
                                   1557 ;	keyboard.c:368: kp->col = col;
      000709 85 75 82         [24] 1558 	mov	dpl,_addActiveKey_kp_65536_79
      00070C 85 76 83         [24] 1559 	mov	dph,(_addActiveKey_kp_65536_79 + 1)
      00070F 85 77 F0         [24] 1560 	mov	b,(_addActiveKey_kp_65536_79 + 2)
      000712 EF               [12] 1561 	mov	a,r7
      000713 12 0E 9D         [24] 1562 	lcall	__gptrput
                                   1563 ;	keyboard.c:369: kp->row = row;
      000716 74 01            [12] 1564 	mov	a,#0x01
      000718 25 75            [12] 1565 	add	a,_addActiveKey_kp_65536_79
      00071A FB               [12] 1566 	mov	r3,a
      00071B E4               [12] 1567 	clr	a
      00071C 35 76            [12] 1568 	addc	a,(_addActiveKey_kp_65536_79 + 1)
      00071E FC               [12] 1569 	mov	r4,a
      00071F AD 77            [24] 1570 	mov	r5,(_addActiveKey_kp_65536_79 + 2)
      000721 8B 82            [24] 1571 	mov	dpl,r3
      000723 8C 83            [24] 1572 	mov	dph,r4
      000725 8D F0            [24] 1573 	mov	b,r5
      000727 EE               [12] 1574 	mov	a,r6
      000728 12 0E 9D         [24] 1575 	lcall	__gptrput
                                   1576 ;	keyboard.c:370: kp->count = DEBOUNCE_COUNT;
      00072B 74 03            [12] 1577 	mov	a,#0x03
      00072D 25 75            [12] 1578 	add	a,_addActiveKey_kp_65536_79
      00072F FB               [12] 1579 	mov	r3,a
      000730 E4               [12] 1580 	clr	a
      000731 35 76            [12] 1581 	addc	a,(_addActiveKey_kp_65536_79 + 1)
      000733 FC               [12] 1582 	mov	r4,a
      000734 AD 77            [24] 1583 	mov	r5,(_addActiveKey_kp_65536_79 + 2)
      000736 8B 82            [24] 1584 	mov	dpl,r3
      000738 8C 83            [24] 1585 	mov	dph,r4
      00073A 8D F0            [24] 1586 	mov	b,r5
      00073C 74 0A            [12] 1587 	mov	a,#0x0a
      00073E 12 0E 9D         [24] 1588 	lcall	__gptrput
                                   1589 ;	keyboard.c:371: kp->state = UP;
      000741 85 78 82         [24] 1590 	mov	dpl,_addActiveKey_sloc0_1_0
      000744 85 79 83         [24] 1591 	mov	dph,(_addActiveKey_sloc0_1_0 + 1)
      000747 85 7A F0         [24] 1592 	mov	b,(_addActiveKey_sloc0_1_0 + 2)
      00074A 74 02            [12] 1593 	mov	a,#0x02
                                   1594 ;	keyboard.c:372: break;
      00074C 02 0E 9D         [24] 1595 	ljmp	__gptrput
      00074F                       1596 00113$:
                                   1597 ;	keyboard.c:366: for(kp = activeKeys; kp < activeKeys + MAX_ROLLOVER; kp++) {
      00074F 74 04            [12] 1598 	mov	a,#0x04
      000751 28               [12] 1599 	add	a,r0
      000752 F8               [12] 1600 	mov	r0,a
      000753 E4               [12] 1601 	clr	a
      000754 39               [12] 1602 	addc	a,r1
      000755 F9               [12] 1603 	mov	r1,a
      000756 88 75            [24] 1604 	mov	_addActiveKey_kp_65536_79,r0
      000758 89 76            [24] 1605 	mov	(_addActiveKey_kp_65536_79 + 1),r1
      00075A 8A 77            [24] 1606 	mov	(_addActiveKey_kp_65536_79 + 2),r2
      00075C 02 06 D3         [24] 1607 	ljmp	00112$
      00075F                       1608 00114$:
                                   1609 ;	keyboard.c:375: }
      00075F 22               [24] 1610 	ret
                                   1611 ;------------------------------------------------------------
                                   1612 ;Allocation info for local variables in function 'scan'
                                   1613 ;------------------------------------------------------------
                                   1614 ;col                       Allocated to registers r7 
                                   1615 ;------------------------------------------------------------
                                   1616 ;	keyboard.c:382: void scan(void) {
                                   1617 ;	-----------------------------------------
                                   1618 ;	 function scan
                                   1619 ;	-----------------------------------------
      000760                       1620 _scan:
                                   1621 ;	keyboard.c:384: WDTCR = Wdt;
      000760 85 22 E1         [24] 1622 	mov	_WDTCR,_Wdt
                                   1623 ;	keyboard.c:385: if (Ep0.EmuOk == CLR)
      000763 E5 62            [12] 1624 	mov	a,(_Ep0 + 0x0001)
      000765 70 01            [24] 1625 	jnz	00116$
                                   1626 ;	keyboard.c:386: return;
                                   1627 ;	keyboard.c:390: for(col = 0; col < MAX_COLUMN; col++) {
      000767 22               [24] 1628 	ret
      000768                       1629 00116$:
      000768 7F 00            [12] 1630 	mov	r7,#0x00
      00076A                       1631 00109$:
                                   1632 ;	keyboard.c:391: allKeys[col] = read_column(col);
      00076A EF               [12] 1633 	mov	a,r7
      00076B 24 7D            [12] 1634 	add	a,#_allKeys
      00076D F9               [12] 1635 	mov	r1,a
      00076E 8F 82            [24] 1636 	mov	dpl,r7
      000770 C0 07            [24] 1637 	push	ar7
      000772 C0 01            [24] 1638 	push	ar1
      000774 12 03 1A         [24] 1639 	lcall	_read_column
      000777 E5 82            [12] 1640 	mov	a,dpl
      000779 D0 01            [24] 1641 	pop	ar1
      00077B D0 07            [24] 1642 	pop	ar7
      00077D F7               [12] 1643 	mov	@r1,a
                                   1644 ;	keyboard.c:390: for(col = 0; col < MAX_COLUMN; col++) {
      00077E 0F               [12] 1645 	inc	r7
      00077F BF 12 00         [24] 1646 	cjne	r7,#0x12,00142$
      000782                       1647 00142$:
      000782 40 E6            [24] 1648 	jc	00109$
                                   1649 ;	keyboard.c:395: if(updateActiveKeys()) {
      000784 12 05 50         [24] 1650 	lcall	_updateActiveKeys
      000787 E5 82            [12] 1651 	mov	a,dpl
      000789 60 0C            [24] 1652 	jz	00120$
                                   1653 ;	keyboard.c:396: sendKeys();
      00078B 12 04 1E         [24] 1654 	lcall	_sendKeys
                                   1655 ;	keyboard.c:397: sendKeyReport((BYTE *)&ToHost);
      00078E 90 00 3C         [24] 1656 	mov	dptr,#_ToHost
      000791 75 F0 40         [24] 1657 	mov	b,#0x40
      000794 12 03 C4         [24] 1658 	lcall	_sendKeyReport
                                   1659 ;	keyboard.c:400: for(col = 0; col < MAX_COLUMN; col++) {
      000797                       1660 00120$:
      000797 7F 00            [12] 1661 	mov	r7,#0x00
      000799                       1662 00111$:
                                   1663 ;	keyboard.c:401: if(allKeys[col]) {
      000799 EF               [12] 1664 	mov	a,r7
      00079A 24 7D            [12] 1665 	add	a,#_allKeys
      00079C F9               [12] 1666 	mov	r1,a
      00079D E7               [12] 1667 	mov	a,@r1
      00079E FE               [12] 1668 	mov	r6,a
      00079F 60 0B            [24] 1669 	jz	00112$
                                   1670 ;	keyboard.c:402: addActiveKey(col, allKeys[col]);
      0007A1 8E 74            [24] 1671 	mov	_addActiveKey_PARM_2,r6
      0007A3 8F 82            [24] 1672 	mov	dpl,r7
      0007A5 C0 07            [24] 1673 	push	ar7
      0007A7 12 06 A7         [24] 1674 	lcall	_addActiveKey
      0007AA D0 07            [24] 1675 	pop	ar7
      0007AC                       1676 00112$:
                                   1677 ;	keyboard.c:400: for(col = 0; col < MAX_COLUMN; col++) {
      0007AC 0F               [12] 1678 	inc	r7
      0007AD BF 12 00         [24] 1679 	cjne	r7,#0x12,00146$
      0007B0                       1680 00146$:
      0007B0 40 E7            [24] 1681 	jc	00111$
                                   1682 ;	keyboard.c:406: }
      0007B2 22               [24] 1683 	ret
                                   1684 	.area CSEG    (CODE)
                                   1685 	.area CONST   (CODE)
      0010A2                       1686 _prtHex_hexTab_65536_28:
      0010A2 27                    1687 	.db #0x27	; 39
      0010A3 1E                    1688 	.db #0x1e	; 30
      0010A4 1F                    1689 	.db #0x1f	; 31
      0010A5 20                    1690 	.db #0x20	; 32
      0010A6 21                    1691 	.db #0x21	; 33
      0010A7 22                    1692 	.db #0x22	; 34
      0010A8 23                    1693 	.db #0x23	; 35
      0010A9 24                    1694 	.db #0x24	; 36
      0010AA 25                    1695 	.db #0x25	; 37
      0010AB 26                    1696 	.db #0x26	; 38
      0010AC 04                    1697 	.db #0x04	; 4
      0010AD 05                    1698 	.db #0x05	; 5
      0010AE 06                    1699 	.db #0x06	; 6
      0010AF 07                    1700 	.db #0x07	; 7
      0010B0 08                    1701 	.db #0x08	; 8
      0010B1 09                    1702 	.db #0x09	; 9
      0010B2                       1703 _read_column_KeyScan_Table_65536_43:
      0010B2 FE                    1704 	.db #0xfe	; 254
      0010B3 FF                    1705 	.db #0xff	; 255
      0010B4 FF                    1706 	.db #0xff	; 255
      0010B5 FD                    1707 	.db #0xfd	; 253
      0010B6 FF                    1708 	.db #0xff	; 255
      0010B7 FF                    1709 	.db #0xff	; 255
      0010B8 FB                    1710 	.db #0xfb	; 251
      0010B9 FF                    1711 	.db #0xff	; 255
      0010BA FF                    1712 	.db #0xff	; 255
      0010BB F7                    1713 	.db #0xf7	; 247
      0010BC FF                    1714 	.db #0xff	; 255
      0010BD FF                    1715 	.db #0xff	; 255
      0010BE EF                    1716 	.db #0xef	; 239
      0010BF FF                    1717 	.db #0xff	; 255
      0010C0 FF                    1718 	.db #0xff	; 255
      0010C1 DF                    1719 	.db #0xdf	; 223
      0010C2 FF                    1720 	.db #0xff	; 255
      0010C3 FF                    1721 	.db #0xff	; 255
      0010C4 BF                    1722 	.db #0xbf	; 191
      0010C5 FF                    1723 	.db #0xff	; 255
      0010C6 FF                    1724 	.db #0xff	; 255
      0010C7 7F                    1725 	.db #0x7f	; 127
      0010C8 FF                    1726 	.db #0xff	; 255
      0010C9 FF                    1727 	.db #0xff	; 255
      0010CA FF                    1728 	.db #0xff	; 255
      0010CB FE                    1729 	.db #0xfe	; 254
      0010CC FF                    1730 	.db #0xff	; 255
      0010CD FF                    1731 	.db #0xff	; 255
      0010CE FD                    1732 	.db #0xfd	; 253
      0010CF FF                    1733 	.db #0xff	; 255
      0010D0 FF                    1734 	.db #0xff	; 255
      0010D1 FB                    1735 	.db #0xfb	; 251
      0010D2 FF                    1736 	.db #0xff	; 255
      0010D3 FF                    1737 	.db #0xff	; 255
      0010D4 F7                    1738 	.db #0xf7	; 247
      0010D5 FF                    1739 	.db #0xff	; 255
      0010D6 FF                    1740 	.db #0xff	; 255
      0010D7 EF                    1741 	.db #0xef	; 239
      0010D8 FF                    1742 	.db #0xff	; 255
      0010D9 FF                    1743 	.db #0xff	; 255
      0010DA DF                    1744 	.db #0xdf	; 223
      0010DB FF                    1745 	.db #0xff	; 255
      0010DC FF                    1746 	.db #0xff	; 255
      0010DD BF                    1747 	.db #0xbf	; 191
      0010DE FF                    1748 	.db #0xff	; 255
      0010DF FF                    1749 	.db #0xff	; 255
      0010E0 7F                    1750 	.db #0x7f	; 127
      0010E1 FF                    1751 	.db #0xff	; 255
      0010E2 FF                    1752 	.db #0xff	; 255
      0010E3 FF                    1753 	.db #0xff	; 255
      0010E4 F7                    1754 	.db #0xf7	; 247
      0010E5 FF                    1755 	.db #0xff	; 255
      0010E6 FF                    1756 	.db #0xff	; 255
      0010E7 EF                    1757 	.db #0xef	; 239
      0010E8 00                    1758 	.db #0x00	; 0
      0010E9 00                    1759 	.db #0x00	; 0
      0010EA E7                    1760 	.db #0xe7	; 231
      0010EB                       1761 _sendKeys_key_index_65536_54:
      0010EB 00                    1762 	.db #0x00	; 0
      0010EC 00                    1763 	.db #0x00	; 0
      0010ED 28                    1764 	.db #0x28	; 40
      0010EE 00                    1765 	.db #0x00	; 0
      0010EF 00                    1766 	.db #0x00	; 0
      0010F0 12                    1767 	.db #0x12	; 18
      0010F1 13                    1768 	.db #0x13	; 19
      0010F2 00                    1769 	.db #0x00	; 0
      0010F3 00                    1770 	.db #0x00	; 0
      0010F4 00                    1771 	.db #0x00	; 0
      0010F5 00                    1772 	.db #0x00	; 0
      0010F6 00                    1773 	.db #0x00	; 0
      0010F7 00                    1774 	.db #0x00	; 0
      0010F8 00                    1775 	.db #0x00	; 0
      0010F9 00                    1776 	.db #0x00	; 0
      0010FA 00                    1777 	.db #0x00	; 0
      0010FB 31                    1778 	.db #0x31	; 49	'1'
      0010FC 15                    1779 	.db #0x15	; 21
      0010FD 36                    1780 	.db #0x36	; 54	'6'
      0010FE 19                    1781 	.db #0x19	; 25
      0010FF 14                    1782 	.db #0x14	; 20
      001100 23                    1783 	.db #0x23	; 35
      001101 3E                    1784 	.db #0x3e	; 62
      001102 00                    1785 	.db #0x00	; 0
      001103 58                    1786 	.db #0x58	; 88	'X'
      001104 00                    1787 	.db #0x00	; 0
      001105 0F                    1788 	.db #0x0f	; 15
      001106 52                    1789 	.db #0x52	; 82	'R'
      001107 00                    1790 	.db #0x00	; 0
      001108 3D                    1791 	.db #0x3d	; 61
      001109 49                    1792 	.db #0x49	; 73	'I'
      00110A 00                    1793 	.db #0x00	; 0
      00110B 00                    1794 	.db #0x00	; 0
      00110C 56                    1795 	.db #0x56	; 86	'V'
      00110D 00                    1796 	.db #0x00	; 0
      00110E 50                    1797 	.db #0x50	; 80	'P'
      00110F 54                    1798 	.db #0x54	; 84	'T'
      001110 00                    1799 	.db #0x00	; 0
      001111 00                    1800 	.db #0x00	; 0
      001112 00                    1801 	.db #0x00	; 0
      001113 4B                    1802 	.db #0x4b	; 75	'K'
      001114 00                    1803 	.db #0x00	; 0
      001115 00                    1804 	.db #0x00	; 0
      001116 11                    1805 	.db #0x11	; 17
      001117 00                    1806 	.db #0x00	; 0
      001118 00                    1807 	.db #0x00	; 0
      001119 00                    1808 	.db #0x00	; 0
      00111A 57                    1809 	.db #0x57	; 87	'W'
      00111B 00                    1810 	.db #0x00	; 0
      00111C 00                    1811 	.db #0x00	; 0
      00111D 00                    1812 	.db #0x00	; 0
      00111E 00                    1813 	.db #0x00	; 0
      00111F 00                    1814 	.db #0x00	; 0
      001120 30                    1815 	.db #0x30	; 48	'0'
      001121 3C                    1816 	.db #0x3c	; 60
      001122 00                    1817 	.db #0x00	; 0
      001123 00                    1818 	.db #0x00	; 0
      001124 00                    1819 	.db #0x00	; 0
      001125 00                    1820 	.db #0x00	; 0
      001126 00                    1821 	.db #0x00	; 0
      001127 10                    1822 	.db #0x10	; 16
      001128 4A                    1823 	.db #0x4a	; 74	'J'
      001129 00                    1824 	.db #0x00	; 0
      00112A 00                    1825 	.db #0x00	; 0
      00112B 00                    1826 	.db #0x00	; 0
      00112C 00                    1827 	.db #0x00	; 0
      00112D 00                    1828 	.db #0x00	; 0
      00112E 00                    1829 	.db #0x00	; 0
      00112F 00                    1830 	.db #0x00	; 0
      001130 00                    1831 	.db #0x00	; 0
      001131 00                    1832 	.db #0x00	; 0
      001132 00                    1833 	.db #0x00	; 0
      001133 24                    1834 	.db #0x24	; 36
      001134 02                    1835 	.db #0x02	; 2
      001135 4E                    1836 	.db #0x4e	; 78	'N'
      001136 03                    1837 	.db #0x03	; 3
      001137 4D                    1838 	.db #0x4d	; 77	'M'
      001138 01                    1839 	.db #0x01	; 1
      001139 3F                    1840 	.db #0x3f	; 63
      00113A 32                    1841 	.db #0x32	; 50	'2'
      00113B 00                    1842 	.db #0x00	; 0
      00113C 04                    1843 	.db #0x04	; 4
      00113D 0E                    1844 	.db #0x0e	; 14
      00113E 05                    1845 	.db #0x05	; 5
      00113F 00                    1846 	.db #0x00	; 0
      001140 00                    1847 	.db #0x00	; 0
      001141 00                    1848 	.db #0x00	; 0
      001142 00                    1849 	.db #0x00	; 0
      001143 33                    1850 	.db #0x33	; 51	'3'
      001144 16                    1851 	.db #0x16	; 22
      001145 25                    1852 	.db #0x25	; 37
      001146 1C                    1853 	.db #0x1c	; 28
      001147 2B                    1854 	.db #0x2b	; 43
      001148 39                    1855 	.db #0x39	; 57	'9'
      001149 46                    1856 	.db #0x46	; 70	'F'
      00114A 40                    1857 	.db #0x40	; 64
      00114B 35                    1858 	.db #0x35	; 53	'5'
      00114C 17                    1859 	.db #0x17	; 23
      00114D 27                    1860 	.db #0x27	; 39
      00114E 18                    1861 	.db #0x18	; 24
      00114F 26                    1862 	.db #0x26	; 38
      001150 34                    1863 	.db #0x34	; 52	'4'
      001151 42                    1864 	.db #0x42	; 66	'B'
      001152 41                    1865 	.db #0x41	; 65	'A'
      001153 38                    1866 	.db #0x38	; 56	'8'
      001154 1A                    1867 	.db #0x1a	; 26
      001155 2A                    1868 	.db #0x2a	; 42
      001156 1B                    1869 	.db #0x1b	; 27
      001157 29                    1870 	.db #0x29	; 41
      001158 37                    1871 	.db #0x37	; 55	'7'
      001159 45                    1872 	.db #0x45	; 69	'E'
      00115A 44                    1873 	.db #0x44	; 68	'D'
      00115B 21                    1874 	.db #0x21	; 33
      00115C 06                    1875 	.db #0x06	; 6
      00115D 51                    1876 	.db #0x51	; 81	'Q'
      00115E 07                    1877 	.db #0x07	; 7
      00115F 20                    1878 	.db #0x20	; 32
      001160 2F                    1879 	.db #0x2f	; 47
      001161 43                    1880 	.db #0x43	; 67	'C'
      001162 53                    1881 	.db #0x53	; 83	'S'
      001163 2E                    1882 	.db #0x2e	; 46
      001164 08                    1883 	.db #0x08	; 8
      001165 1F                    1884 	.db #0x1f	; 31
      001166 09                    1885 	.db #0x09	; 9
      001167 1D                    1886 	.db #0x1d	; 29
      001168 2C                    1887 	.db #0x2c	; 44
      001169 47                    1888 	.db #0x47	; 71	'G'
      00116A 3A                    1889 	.db #0x3a	; 58
      00116B 48                    1890 	.db #0x48	; 72	'H'
      00116C 0A                    1891 	.db #0x0a	; 10
      00116D 55                    1892 	.db #0x55	; 85	'U'
      00116E 0B                    1893 	.db #0x0b	; 11
      00116F 1E                    1894 	.db #0x1e	; 30
      001170 3B                    1895 	.db #0x3b	; 59
      001171 2D                    1896 	.db #0x2d	; 45
      001172 22                    1897 	.db #0x22	; 34
      001173 00                    1898 	.db #0x00	; 0
      001174 0C                    1899 	.db #0x0c	; 12
      001175 4F                    1900 	.db #0x4f	; 79	'O'
      001176 0D                    1901 	.db #0x0d	; 13
      001177 4C                    1902 	.db #0x4c	; 76	'L'
      001178 00                    1903 	.db #0x00	; 0
      001179 00                    1904 	.db #0x00	; 0
      00117A 00                    1905 	.db #0x00	; 0
      00117B                       1906 _sendKeys_combineKeyAlternates_65536_54:
      00117B 00                    1907 	.db #0x00	; 0
      00117C 2C                    1908 	.db #0x2c	; 44
      00117D 28                    1909 	.db #0x28	; 40
      00117E 2B                    1910 	.db #0x2b	; 43
      00117F 2A                    1911 	.db #0x2a	; 42
                                   1912 	.area XINIT   (CODE)
                                   1913 	.area CABS    (ABS,CODE)
