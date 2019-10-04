sdcc -c -oout/main.rel main.c
sdcc -c -oout/mcu.rel mcu.c
sdcc -c -oout/usb.rel usb.c
sdcc -c -oout/keyboard.rel keyboard.c
sdcc -c -oout/layers.rel layers.c
cd out

sdcc main.rel keyboard.rel layers.rel usb.rel ../EasyPod.lib
packihx main.ihx >main.hex
cd ..