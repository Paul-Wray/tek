// MG84FL54


// (System)
__sfr __at (0xE0) ACC;//sfr ACC       = 0xE0;
__sfr __at (0xF0) B;//sfr B         = 0xF0;
__sfr __at (0x81) SP;//sfr SP        = 0x81;
__sfr __at (0x82) DPL;//sfr DPL       = 0x82;
__sfr __at (0x83) DPH;//sfr DPH       = 0x83;
__sfr __at (0xD0) PSW;//sfr PSW       = 0xD0;

// (Interrupt)
__sfr __at (0xA8) IE;//sfr IE        = 0xA8;
__sfr __at (0xAD) AUXIE;//sfr AUXIE     = 0xAD;
__sfr __at (0xAE) AUXIP;//sfr AUXIP     = 0xAE;
__sfr __at (0xC0) XICON;//sfr XICON     = 0xC0;
__sfr __at (0xB8) IP;//sfr IP        = 0xB8;

// (I/O Port)
__sfr __at (0x80) P0;//sfr P0        = 0x80;
__sfr __at (0x90) P1;//sfr P1        = 0x90;
__sfr __at (0xA0) P2;//sfr P2        = 0xA0;
__sfr __at (0xB0) P3;//sfr P3        = 0xB0;
__sfr __at (0xE8) P4;//sfr P4        = 0xE8;
__sfr __at (0x93) P0M0;//sfr P0M0      = 0x93;
__sfr __at (0x94) P0M1;//sfr P0M1      = 0x94;
__sfr __at (0x91) P1M0;//sfr P1M0      = 0x91;
__sfr __at (0x92) P1M1;//sfr P1M1      = 0x92;
__sfr __at (0x95) P2M0;//sfr P2M0      = 0x95;
__sfr __at (0x96) P2M1;//sfr P2M1      = 0x96;
__sfr __at (0xB1) P3M0;//sfr P3M0      = 0xB1;
__sfr __at (0xB2) P3M1;//sfr P3M1      = 0xB2;
__sfr __at (0xB3) P4M0;//sfr P4M0      = 0xB3;
__sfr __at (0xB4) P4M1;//sfr P4M1      = 0xB4;

// (Timer)
__sfr __at (0x88) TCON;//sfr TCON      = 0x88;
__sfr __at (0x89) TMOD;//sfr TMOD      = 0x89;
__sfr __at (0xC8) T2CON;//sfr T2CON     = 0xC8;
__sfr __at (0xC9) T2MOD;//sfr T2MOD     = 0xC9;
__sfr __at (0xCA) RCAP2L;//sfr RCAP2L    = 0xCA;
__sfr __at (0xCB) RCAP2H;//sfr RCAP2H    = 0xCB;
__sfr __at (0x8A) TL0;//sfr TL0       = 0x8A;
__sfr __at (0x8C) TH0;//sfr TH0       = 0x8C;
__sfr __at (0x8B) TL1;//sfr TL1       = 0x8B;
__sfr __at (0x8D) TH1;//sfr TH1       = 0x8D;
__sfr __at (0xCC) TL2;//sfr TL2       = 0xCC;
__sfr __at (0xCD) TH2;//sfr TH2       = 0xCD;

// (Serial Port)
__sfr __at (0x98) SCON;//sfr SCON      = 0x98;
__sfr __at (0x99) SBUF;//sfr SBUF      = 0x99;
__sfr __at (0xA9) SADDR;//sfr SADDR     = 0xA9;
__sfr __at (0xB9) SADEN;//sfr SADEN     = 0xB9;

// (Keypad Interrupt)
__sfr __at (0xD6) KBCON;//sfr KBCON     = 0xD6;
__sfr __at (0xD5) KBPATN;//sfr KBPATN    = 0xD5;
__sfr __at (0xD7) KBMASK;//sfr KBMASK    = 0xD7;

// (SPI)
__sfr __at (0x85) SPCTL;//sfr SPCTL     = 0x85;
__sfr __at (0x86) SPDAT;//sfr SPDAT     = 0x86;
__sfr __at (0x84) SPSTAT;//sfr SPSTAT    = 0x84;

// (TWSI)
__sfr __at (0xF8) SICON;//sfr SICON     = 0xF8;
__sfr __at (0xD1) SIADR;//sfr SIADR     = 0xD1;
__sfr __at (0xD2) SIDAT;//sfr SIDAT     = 0xD2;
__sfr __at (0xD3) SISTA;//sfr SISTA     = 0xD3;

// (Others)
__sfr __at (0x87) PCON;//sfr PCON      = 0x87;
__sfr __at (0xC7) CKCON;//sfr CKCON     = 0xC7;
__sfr __at (0xBF) CKCON2;//sfr CKCON2    = 0xBF;
__sfr __at (0x8E) AUXR;//sfr AUXR      = 0x8E;
__sfr __at (0xA6) AUXR2;//sfr AUXR2     = 0xA6;
__sfr __at (0xE1) WDTCR;//sfr WDTCR     = 0xE1;

// (ISP)
__sfr __at (0xE7) ISPCR;//sfr ISPCR     = 0xE7;
__sfr __at (0xE5) ISPTME;//sfr ISPTME    = 0xE5;
__sfr __at (0xE2) IFD;//sfr IFD       = 0xE2;
__sfr __at (0xE3) IFADRH;//sfr IFADRH    = 0xE3;
__sfr __at (0xE4) IFADRL;//sfr IFADRL    = 0xE4;
__sfr __at (0xE6) SCMD;//sfr SCMD      = 0xE6;

// (bits in PSW)
__sbit __at (0xD7) CY;//sbit CY       = PSW^7;
__sbit __at (0xD6) AC;//sbit AC       = PSW^6;
__sbit __at (0xD5) F0;//sbit F0       = PSW^5;
__sbit __at (0xD4) RS1;//sbit RS1      = PSW^4;
__sbit __at (0xD3) RS0;//sbit RS0      = PSW^3;
__sbit __at (0xD2) OV;//sbit OV       = PSW^2;
__sbit __at (0xD0) P;//sbit P        = PSW^0;

// (bits in IE)
__sbit __at (0xAF) EA;//sbit EA       = IE^7;
__sbit __at (0xAD) ET2;//sbit ET2      = IE^5;
__sbit __at (0xAC) ES;//sbit ES       = IE^4;
__sbit __at (0xAB) ET1;//sbit ET1      = IE^3;
__sbit __at (0xAA) EX1;//sbit EX1      = IE^2;
__sbit __at (0xA9) ET0;//sbit ET0      = IE^1;
__sbit __at (0xA8) EX0;//sbit EX0      = IE^0;

// (bits in IP)
__sbit __at (0xBF) PX3;//sbit PX3      = IP^7;
__sbit __at (0xBE) PX2;//sbit PX2      = IP^6;
__sbit __at (0xBD) PT2;//sbit PT2      = IP^5;
__sbit __at (0xBC) PS;//sbit PS       = IP^4;
__sbit __at (0xBB) PT1;//sbit PT1      = IP^3;
__sbit __at (0xBA) PX1;//sbit PX1      = IP^2;
__sbit __at (0xB9) PT0;//sbit PT0      = IP^1;
__sbit __at (0xB8) PX0;//sbit PX0      = IP^0;

// (bits in SCON)
__sbit __at (0x9F) SM0;//sbit SM0      = SCON^7;
__sbit __at (0x9E) SM1;//sbit SM1      = SCON^6;
__sbit __at (0x9D) SM2;//sbit SM2      = SCON^5;
__sbit __at (0x9C) REN;//sbit REN      = SCON^4;
__sbit __at (0x9B) TB8;//sbit TB8      = SCON^3;
__sbit __at (0x9A) RB8;//sbit RB8      = SCON^2;
__sbit __at (0x99) TI;//sbit TI       = SCON^1;
__sbit __at (0x98) RI;//sbit RI       = SCON^0;
__sbit __at (0x9F) FE;//sbit FE       = SCON^7;

// (bits in TCON)
__sbit __at (0x8F) TF1;//sbit TF1      = TCON^7;
__sbit __at (0x8E) TR1;//sbit TR1      = TCON^6;
__sbit __at (0x8D) TF0;//sbit TF0      = TCON^5;
__sbit __at (0x8C) TR0;//sbit TR0      = TCON^4;
__sbit __at (0x8B) IE1;//sbit IE1      = TCON^3;
__sbit __at (0x8A) IT1;//sbit IT1      = TCON^2;
__sbit __at (0x89) IE0;//sbit IE0      = TCON^1;
__sbit __at (0x88) IT0;//sbit IT0      = TCON^0;

// (bits in T2CON)
__sbit __at (0xCF) TF2;//sbit TF2      = T2CON^7;
__sbit __at (0xCE) EXF2;//sbit EXF2     = T2CON^6;
__sbit __at (0xCD) RCLK;//sbit RCLK     = T2CON^5;
__sbit __at (0xCC) TCLK;//sbit TCLK     = T2CON^4;
__sbit __at (0xCB) EXEN2;//sbit EXEN2    = T2CON^3;
__sbit __at (0xCA) TR2;//sbit TR2      = T2CON^2;
__sbit __at (0xC9) C_T2;//sbit C_T2     = T2CON^1;
__sbit __at (0xC8) CP_RL2;//sbit CP_RL2   = T2CON^0;

// (bits in XICON)
__sbit __at (0xC7) IL3;//sbit IL3      = XICON^7;
__sbit __at (0xC6) EX3;//sbit EX3      = XICON^6;
__sbit __at (0xC5) IE3;//sbit IE3      = XICON^5;
__sbit __at (0xC4) IT3;//sbit IT3      = XICON^4;
__sbit __at (0xC3) IL2;//sbit IL2      = XICON^3;
__sbit __at (0xC2) EX2;//sbit EX2      = XICON^2;
__sbit __at (0xC1) IE2;//sbit IE2      = XICON^1;
__sbit __at (0xC0) IT2;//sbit IT2      = XICON^0;

// (bits in SICON)
__sbit __at (0xFF) CR2;//sbit CR2      = SICON^7;
__sbit __at (0xFE) ENSI;//sbit ENSI     = SICON^6;
__sbit __at (0xFD) STA;//sbit STA      = SICON^5;
__sbit __at (0xFC) STO;//sbit STO      = SICON^4;
__sbit __at (0xFB) SI;//sbit SI       = SICON^3;
__sbit __at (0xFA) AA;//sbit AA       = SICON^2;
__sbit __at (0xF9) CR1;//sbit CR1      = SICON^1;
__sbit __at (0xF8) CR0;//sbit CR0      = SICON^0;

// (bits in P0)
__sbit __at (0x87) P07;//sbit P07      = P0^7;
__sbit __at (0x86) P06;//sbit P06      = P0^6;
__sbit __at (0x85) P05;//sbit P05      = P0^5;
__sbit __at (0x84) P04;//sbit P04      = P0^4;
__sbit __at (0x83) P03;//sbit P03      = P0^3;
__sbit __at (0x82) P02;//sbit P02      = P0^2;
__sbit __at (0x81) P01;//sbit P01      = P0^1;
__sbit __at (0x80) P00;//sbit P00      = P0^0;

// (bits in P1)
__sbit __at (0x97) P17;//sbit P17      = P1^7;
__sbit __at (0x96) P16;//sbit P16      = P1^6;
__sbit __at (0x95) P15;//sbit P15      = P1^5;
__sbit __at (0x94) P14;//sbit P14      = P1^4;
__sbit __at (0x93) P13;//sbit P13      = P1^3;
__sbit __at (0x92) P12;//sbit P12      = P1^2;
__sbit __at (0x91) P11;//sbit P11      = P1^1;
__sbit __at (0x90) P10;//sbit P10      = P1^0;

// (bits in P2)
__sbit __at (0xA7) P27;//sbit P27      = P2^7;
__sbit __at (0xA6) P26;//sbit P26      = P2^6;
__sbit __at (0xA5) P25;//sbit P25      = P2^5;
__sbit __at (0xA4) P24;//sbit P24      = P2^4;
__sbit __at (0xA3) P23;//sbit P23      = P2^3;
__sbit __at (0xA2) P22;//sbit P22      = P2^2;
__sbit __at (0xA1) P21;//sbit P21      = P2^1;
__sbit __at (0xA0) P20;//sbit P20      = P2^0;

// (bits in P3)
__sbit __at (0xB7) P37;//sbit P37      = P3^7;
__sbit __at (0xB6) P36;//sbit P36      = P3^6;
__sbit __at (0xB5) P35;//sbit P35      = P3^5;
__sbit __at (0xB4) P34;//sbit P34      = P3^4;
__sbit __at (0xB3) P33;//sbit P33      = P3^3;
__sbit __at (0xB2) P32;//sbit P32      = P3^2;
__sbit __at (0xB1) P31;//sbit P31      = P3^1;
__sbit __at (0xB0) P30;//sbit P30      = P3^0;

// (bits in P4)
__sbit __at (0xEB) P43;//sbit P43      = P4^3;
__sbit __at (0xEA) P42;//sbit P42      = P4^2;
__sbit __at (0xE9) P41;//sbit P41      = P4^1;
__sbit __at (0xE8) P40;//sbit P40      = P4^0;

// (bits in P1, alternate)
__sbit __at (0x91) T2EX;//sbit T2EX     = P1^1;
__sbit __at (0x90) T2;//sbit T2       = P1^0;

// (bits in P2, alternate)
__sbit __at (0xA7) SPI_CLK;//sbit SPI_CLK  = P2^7;
__sbit __at (0xA6) SPI_MISO;//sbit SPI_MISO = P2^6;
__sbit __at (0xA5) SPI_MOSI;//sbit SPI_MOSI = P2^5;
__sbit __at (0xA4) SPI_SS;//sbit SPI_SS   = P2^4;
__sbit __at (0xA1) I2C_SDA;//sbit I2C_SDA  = P2^1;
__sbit __at (0xA0) I2C_SCL;//sbit I2C_SCL  = P2^0;

// (bits in P3, alternate)
__sbit __at (0xB7) RD;//sbit RD       = P3^7;
__sbit __at (0xB6) WR;//sbit WR       = P3^6;
__sbit __at (0xB5) T1;//sbit T1       = P3^5;
__sbit __at (0xB4) T0;//sbit T0       = P3^4;
__sbit __at (0xB3) INT1;//sbit INT1     = P3^3;
__sbit __at (0xB2) INT0;//sbit INT0     = P3^2;
__sbit __at (0xB1) TXD;//sbit TXD      = P3^1;
__sbit __at (0xB0) RXD;//sbit RXD      = P3^0;
__sbit __at (0xB7) INT3;//sbit INT3     = P3^7;
__sbit __at (0xB6) INT2;//sbit INT2     = P3^6;

