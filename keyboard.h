#define NumLock_LED  P35
#define Caps_LED  P36
#define ScrollLock_LED P37

#define    MAX_COLUMN          18
#define    MAX_ROW             8


typedef struct { 
	//BYTE reportId;
	BYTE Modifier;
    BYTE Reserve;
    BYTE Code[6];
} NORMAL;


typedef struct { 
	BYTE reportId;
	BYTE Code[2];
	BYTE Unused[5];
} MEDIA;


typedef union { // allow bit or byte access 
	NORMAL Normal;
	MEDIA Media;
    BYTE Code[8];
} TOHOST;
