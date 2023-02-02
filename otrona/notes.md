
Unsorted notes go here

-------------------------------

## Known good

(tested on 8-16 board and it booted into terminal mode)
U101 Z80A     CPU
U102 D8237A-5 DMA
U252 boot rom ok
U306 Z80-SIO
U315 Z80-CTC
U501 Z80-PIO
U401 CRT5027 CRT controller
U413 BPROM in the video circuitry
U600 D7654AC Floppy controller

## Can boot without

Can remove, no effect:
U501 Z80-PIO

Can remove, slight effect:
U306 Z80-SIO boots, spams letter P
U315 Z80-CTC no floppy/serial detect, only displays "Otrona attaché"
U600 D7654AC (DMA) only garbage characters on screen

no character rom = blocks on screen but still displays stuff. It's just squares
