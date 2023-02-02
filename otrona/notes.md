
Unsorted notes go here

-------------------------------

Known good:
U101 Z80A     CPU
U102 D8237A-5
U306 Z80-SIO
U315 Z80-CTC
U501 Z80-PIO
U401 CRT5027 CRT controller
U600 D7654AC Floppy controller
U252 boot rom ok


Can remove, no effect:
U501 Z80-PIO

Can remove, slight effect:
U306 Z80-SIO boots, spams letter P
U315 Z80-CTC no floppy/serial detect, only displays "Otrona attaché"
U600 D7654AC only garbage on screen

no character rom = blocks on screen but still displays stuff. It's just squares



Will NOT proprely boot without -12V or POK

