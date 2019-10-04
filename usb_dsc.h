#define    KB_HID_REPORT_LENGTH sizeof(KB_HID_REPORT)

#define    USB_VID          0xE6A	// Megawin Technology. TEK reuses this!
#define    USB_PID          0x30C	
#define    USB_DID          0x130	

#define    MF_STRING                             // Supported Manufacture String
#define    PD_STRING                             // Supported Product String
//#define    SN_STRING                             // Supported SerialNumber String


__code BYTE KB_HID_REPORT[]=                       // 
  { 0x05,0x01,                                   // Usage Page (Generic Desktop Control)
    0x09,0x06,                                   // Usage (Keyboard)
    0xA1,0x01,                                   // Collection (Application)
 //0x85, 0x01, 							// Report ID 1
    0x05,0x07,                               // Usage Page (Keyboard/Keypad Keys)
    0x19,0xE0,                               // Usage Minimum (224)
    0x29,0xE7,                               // Usage Maximum (231)
    0x15,0x00,                               // Logical Minimum (0)
    0x25,0x01,                               // Logical Maximum (1)
    0x75,0x01,                               // Report Size (1)
    0x95,0x08,                               // Report Count (8)
    0x81,0x02,                               // Input (Data, Variable, Absolute)
    0x95,0x01,                               // Report Count (1)
    0x75,0x08,                               // Report Size (8)
    0x81,0x01,                               // Input (Constant)
    0x95,0x03,                               // Report Count (3)
    0x75,0x01,                               // Report Size (1)
    0x05,0x08,                               // Usage Page (LED)
    0x19,0x01,                               // Usage Minimum (1)
    0x29,0x03,                               // Usage Maximum (3)
    0x91,0x02,                               // Output (Data, Variable, Absolute)
    0x95,0x05,                               // Report Count (5)
    0x75,0x01,                               // Report Size (1)
    0x91,0x01,                               // Output (Constant)
    0x95,0x06,                               // Report Count (5)
    0x75,0x08,                               // Report Size (8)
    0x15,0x00,                               // Logical Minimum (0)
    0x26,0xFF,0x00,                          // Logical Maximum (255)
    0x05,0x07,                               // Usage Page (Keyboard/Keypad Keys)
    0x19,0x00,                               // Usage Minimum (0)
    0x2A,0xFF,0x00,                          // Usage Maximum (255)
    0x81,0x00,                               // Input (Data, Array, Absolute)
   0x09,0x00,                               // Usage Page (Vendor Defined)
    0x95,0x08,                               // Report Count (8 Bytes)
    0x75,0x08,                               // Report Size (8 Bits)
    0xB1,0x00,                               // Feature (Data, Array, Absolute)
    0xC0,                                        // End Collection
  };


//-----Device Descriptor-----//
__code BYTE DEVICE_DESCRIPTOR[]=
  { 0x12,                                        // 0:  bLength
    0x01,                                        // 1:  bDescriptorType (Device)
    0x10,                                        // 2:  bcdUSB(LSB)
    0x01,                                        //     bcdUSB(MSB)
    0x00,                                        // 4:  bDeviceClass
    0x00,                                        // 5:  bDevice SubClass
    0x00,                                        // 6:  bDeviceProtocol
    EP0_MAX,                                     // 7:  bMaxPacketSize
    LOBYTE( USB_VID ),                           // 8:  idVendor(LSB)
    HIBYTE( USB_VID ),                           //     idVendor(MSB)
    LOBYTE( USB_PID ),                           // 10: idProduct(LSB)
    HIBYTE( USB_PID ),                           //     idProduct(MSB)
    LOBYTE( USB_DID ),                           // 12: bcdDevice(LSB)
    HIBYTE( USB_DID ),                           //     bcdDevice(MSB)
#ifdef MF_STRING
    0x01,                                        // 14: iManufacture (String Index)
#endif
#ifndef MF_STRING
    0x00,                                        // 14: iManufacture (String Index)
#endif
#ifdef PD_STRING
    0x02,                                        // 15: iProduct     (String Index)
#endif
#ifndef PD_STRING
    0x00,                                        // 15: iProduct     (String Index)
#endif
#ifdef SN_STRING    
    0x03,                                        // 16: iSerialNumber(String Index)
#endif
#ifndef SN_STRING    
    0x00,                                        // 16: iSerialNumber(String Index)
#endif
    0x01                                         // 17: bNumConfigurations
  };


//-----Configuration Descriptor-----//
__code BYTE CONGFIGURATION_DESCRIPTOR[]=
  { 0x09,                                        // 0:  bLength
    0x02,                                        // 1:  bDescriptorType
    0x22,                                        // 2:  wTotalLength(LSB)(All Descriptor ,
    0x00,                                        // 3:  wTotalLength(MSB)(Exclude "String")
    0x01,                                        // 4:  bNumInterface
    0x01,                                        // 5:  bConfigurationValue
    0x00,                                        // 6:  iConfiguration (String Index)
    0xA0,                                        // 7:  bmAttributes (Bus power & Remote wakeup)
                                                 //     D7:      Reserved (Set to one)
                                                 //     D6:      Self Powered
                                                 //     D5:      Remote Wakeup
                                                 //     D4..0:   Reserved (Reset to 0)
    0x32                                         // 8:  Power    (100mA)
  };


//-----Interface Descriptor-----//
__code BYTE KB_INTERFACE_DESCRIPTOR[]=
  { 0x09,                                        // 0:  bLength
    0x04,                                        // 1:  bDescriptorType
    0x00,                                        // 2:  bInterfaceNumber
    0x00,                                        // 3:  bAlternateSetting
    0x01,                                        // 4:  bNumEndpoints
    0x03,                                        // 5:  bInterfaceClass
    0x01,                                        // 6:  bInterfaceSubClass
    0x01,                                        // 7:  bInterfaceProtocol
    0x00                                         // 8:  iInterface         (String Index)
  };
  

//-----HID Descriptor-----//
__code BYTE KB_HID_DESCRIPTOR[]=
  { 0x09,                                        // 0:  bLength
    0x21,                                        // 1:  bDescriptorType
    0x10,                                        // 2:  bcdHIDClassL
    0x01,                                        // 3:  bcdHIDClassH
    0x00,                                        // 4:  Hardware Target Country
    0x01,                                        // 5:  Number of HID class descriptor to follow
    0x22,                                        // 6:  Report descriptor type
    KB_HID_REPORT_LENGTH,                        // 7:  Total length of Report descriptor L
    0x00                                         // 8:  Total length of Report descriptor H
  };


__code BYTE KB_INTERRUPT_IN_ENDPOINT_DESCRIPTOR[]=
  { 0x07,           				 // 0:  bLength
    0x05,       				 // 1:  bDescriptorType
    0x81,       				 // 2:  bEndpointerAddress
               					 //      D7:     Direction(0:OUT, 1:IN)
               					 //      D6..4:  Reserved (reset to 0)
                				 //      D3..0:  Endpoint Number(0000-1111)
    0x03,       				 // 3:  bmAttributes
                				 //      D7..2:  Reserved (reset to 0)
                				 //      D1..0:  Transfer Type(00:Control,01:Bulk,02:Iso,03:Int)
//****************************
    0x08,       				 // 4:  wPacketSize(LSB)
    0x00,       				 //     wPacketSize(MSB)
    0x0A        				 // 6:  bInterval (Unit 1ms)
                				 //      Isochronous Endpoint: 01
                				 //      Interrupt Endpoint: 01-ff
  };
          

__code BYTE LANGUAGEID_DESCRIPTOR[]=
  { 0x04,					 // Computed by subtraction two from the value of the first byte of the descriptor
    0x03, 					 // Descriptor Type
    0x09,
    0x04
  };


#define MFS_LEN sizeof("TrulyErgonomic.com")*2
//-----MANUFACTURER(UNICODE) in String Descriptor-----//
__code BYTE MANUFACTURER_DESCRIPTOR[]=
  { MFS_LEN,
    0x03,                                        // Descriptor Type
    'T',0x00,
    'r',0x00,
    'u',0x00,
    'l',0x00,
    'y',0x00,
    'E',0x00,
    'r',0x00,
    'g',0x00,
    'o',0x00,
    'n',0x00,
    'o',0x00,
    'm',0x00,
    'i',0x00,
    'c',0x00,
    '.',0x00,
    'c',0x00,
    'o',0x00,
    'm',0x00
  };


#define PDS_LEN sizeof("Truly Ergonomic Computer Keyboard")*2
//-----PRODUCT(UNICODE) in String Descriptor-----//
__code BYTE PRODUCT_DESCRIPTOR[]=
  { PDS_LEN,
    0x03,                                        // Descriptor Type
    'T',0x00,
    'r',0x00,
    'u',0x00,
    'l',0x00,
    'y',0x00,
    ' ',0x00,
    'E',0x00,
    'r',0x00,
    'g',0x00,
    'o',0x00,
    'n',0x00,
    'o',0x00,
    'm',0x00,
    'i',0x00,
    'c',0x00,
    ' ',0x00,
    'C',0x00,
    'o',0x00,
    'm',0x00,
    'p',0x00,
    'u',0x00,
    't',0x00,
    'e',0x00,
    'r',0x00,
    ' ',0x00,
    'K',0x00,
    'e',0x00,
    'y',0x00,
    'b',0x00,
    'o',0x00,
    'a',0x00,
    'r',0x00,
    'd',0x00
  };


#define SNS_LEN sizeof("621031")*2
//-----Serial Number in String Descriptor-----//
__code BYTE SERIALNUMBER_DESCRIPTOR[]=
  { SNS_LEN,
    0x03,                                        // Descriptor Type
    '6',0x00,
    '2',0x00,
    '1',0x00,
    '0',0x00,
    '3',0x00,
    '1',0x00
  };


