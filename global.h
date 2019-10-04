#include "REG_MG84FL54.H"

#define    SET         1
#define    CLR         0

#define  BIT   __bit
#define  BYTE  unsigned char
#define  WORD  unsigned int
#define  DWORD unsigned long

#define IBYTE unsigned char __idata
#define XBYTE unsigned char __xdata
#define CBYTE const __code unsigned char
#define CWORD const __code unsigned short

#define    HIBYTE( V1 )     ((BYTE)((V1) >> 8))
#define    LOBYTE( V1 )     ((BYTE)((V1) & 0xFF))



#define    XTAL_12Mhz

union WTYPE
  { BYTE B[2];
    WORD W;
  };
  
union DWTYPE
  { BYTE B[4];
    WORD W[2];
    DWORD DW;
  };


typedef struct
   { BYTE Suspend : 1;
     BYTE Reset : 1;
     BYTE WakeUp : 1;
     BYTE EmuOK : 1;
     BYTE Res4 : 1;
     BYTE Res5 : 1;
     BYTE Res6 : 1;
     BYTE Res7 : 1;
   } USBEVENT;