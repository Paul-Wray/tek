//#define    T0_1MSL         0x60                  // ( 65536 - 4000 )%256 in 48Mhz
//#define    T0_1MSH         0xF0                  // ( 65536 - 4000 )/256 in 48Mhz
//#define    T0_1MSL         0x30                  // ( 65536 - 2000 )%256 in 24Mhz
//#define    T0_1MSH         0xF8                  // ( 65536 - 2000 )/256 in 24Mhz
//#define    T0_1MSL         0xCB                  // ( 65536 - 1845 )%256 in 22.118Mhz
//#define    T0_1MSH         0xF8                  // ( 65536 - 1845 )/256 in 22.118Mhz

#define    T0_1MSL         0x18                  // ( 65536 - 1000 )%256 in 12Mhz
#define    T0_1MSH         0xFC                  // ( 65536 - 1000 )/256 in 12Mhz


//#define    T1_1MSL         0x60                  // ( 65536 - 4000 )%256 in 48Mhz
//#define    T1_1MSH         0xF0                  // ( 65536 - 4000 )/256 in 48Mhz
//#define    T1_1MSL         0x30                  // ( 65536 - 2000 )%256 in 24Mhz
//#define    T1_1MSH         0xF8                  // ( 65536 - 2000 )/256 in 24Mhz


#define    REBOOT_TO_ISP         0x68


//----- AUXIE -----//
#define    EKB         0x20
#define    EUSB        0x80

//----- AUXIP -----//
#define    PKB         0x20
#define    PUSB        0x80

//----- CKCON2 -----//
#define    PLL_RDY     0x02
#define    EN_PLL      0x04
#define    EN_USB      0x08
#define    OSCDR0      0x20