#Truly ergonomic firmware
Here is a basic start to firmware for the Truly Ergonomic Keyboard using the SDCC.

This is rather late in the day, but my teck keyboard was gathering dust because I couln't set it up how I wanted, so I thought I would give it another try.

I asked Megawin to provide their EasyPod.lib compiled for the SDCC compiler, and they did!. However they declined to provide the source code for some reason. Most of that library (usb.c, mcu.c) is available in source form in their development kit. That leaves just the device firmware upgrade code (dfu.c) in the library.

I've developed the code to include (what I believe to be) robust debouncing, and dual-function combination keys (eg so you can have left-shift work as a tab when pressed and released alone).

#Building 
Install sdcc. I have included a very basic build script which is just a batch file with several command lines for sdcc. 
Note it does no stop on error, so look back over all lines for errors. Hex file is in the out folder, along with the many other
files generated by sdcc.
for errors! Just type 'build' 

#Layer mapping
Layers.h contains the key mapping for the 3 layers provides so far. It's a simple matter to add more if you wish. I may implement the 
mac/pc layers, or just swap command and control functions for the mac.

#Modifier keys
I began an attempt to add media keys by specifying a report id in the report descriptor. This seemed to work for the
standard keys report, but screwed up the dfu for some reason. (I reduced the number
of keys in the report to 5 to keep the full buffer size at 8 bytes).

#Debouncing issues with TEK
I suspect that a lot of the problems reported as debouncing issues with the teck are caused by dry solder joints on the keys rather than debouncing.
I had a few keys working intermittently, and this was fixed by remelting the joints under the board on those keys. Nevertheless,
the debouncing provided in the Megawin dev kit was primitive, so had to be rewritten.

#Firmware upgrade
I have included the TEK firmware upgrade tool, because Truly Ergonomic seems to have removed all info pertaining to their
previous models from their website, including Yuri Khan's configurator.

#Hardware reset into DFU mode
Luckily, if you screw up the firmware such that the usual firmware upgrade does not work, its still possible to reset the
microcontroller into a state ready for dfu upgrade, because the mcu has recovery code burnt into the upper area of eprom.
Put the dip switch 5 into normal (non-reprogramming) position. Then carefully short pins 1 and 36 with an insulated wire. 
The PCB seems to be coated, so the ends of the wire are ideally sharpened into chisel points. A magnifying glass may also be helpful! 
See the Geekhack discussion page for more details. https://geekhack.org/index.php?topic=38943.0
