# Otrona Attaché

On the desk today is an Otrona Attaché, a luggable CP/M computer from the early 80s.
It's the original without the 8086 expansion card the later versions have (Otrona 8-16).

It's completely dead: power switch does nothing, fan does not spin and nothing lights up

Looking at the manuals, this computer should behave like a terminal when no floppy is inserted, and it has an extensive diagnostic menu accessible through a keyboard shorctut.

Serial: 1533

Year: 1982~1983

# Documentation

Main document for repairs:
- [Service Guide](doc/Otrona_Attache_Service_Guide_Mar83.pdf): Teardown instructions, diagnostics, parts list
- [Technical Manual](Otrona_Attache_Technical_Manual_Jul83.pdf): Schematics, theory of operation

Only these 2 files are present here, more are available on Bitsavers:
http://www.bitsavers.org/pdf/otrona/

# Software

See [software](software/README.md) and [rom](rom/README.md).

# Power supply

```
Model: 40-051202 REV A
Serial: 21831009
```

**Usual caution regarding high voltages apply here.**
**Please be safe**

Contrary to most computers from the time period using an Astek PSU, this uses a fully custom PSU.
It supports multiple input voltages:
> Switching style power supply that operates from 95 to 135 volts or 190 to 27b volts, 48 to 440 Hz.

It is documented in the Otrona Attaché Technical Manuel (1983):
- 1-8: Setting input voltage
- 2-57: Theory of operations
- A-8: Schematics

Despite the sandwich construction, everything can be taken apart easily and has connectors you can unplug.

Output voltages:
- 15V for the CRT board
- 12V
- 5V 
- -12V

## Pinouts

### J8: Motherboard connector

Reference: Molex 09507121 (KK 396 Series)
```
1 - HDRV
2 - VSYN
3 - VIDEO
4 - AUDIO GND
5 - AUDIO
6 - POK*
7 - +5V
8 - key ?
9 - GND
10 - GND
11 - +12V
12 - -12V
```

> POK: The power supply provides a Power Okay (POK) signal to the processor to initialize the system only when power is properly stabilized.

### J5: Connector for CRT module

Reference: Molex 26192051 (KK 396 Series). Not an exact match but compatible.
```
1 - VSYN
2 - GND
3 - +15
4 - VIDEO
5 - HDRV
```

### J6: Floppy power connector

Reference: Molex 26192081 (KK 396 Series). Not an exact match but compatible.
```
1 - +12V
2 - +12V
3 - GND
4 - GND
5 - +5V
6 - GND
7 - GND
8 - +5V
```

TO-DO: More pinouts, pictures,

## Troubleshooting:

- No voltage at all on the output connector. -12V, 5V and 12V rails are dead.
- No voltage on the fan either
- When looking at the 2 transformers, the 20V one is works fine but the big one doesn't do anything
- No high voltage at the transformer inputs
- Dead R6 resistor: (2 Ohm, 2 Watt)
- Replaced R6
- After powering it, R7 burned.
- Turns out the bridge rectifier (D1, MDA970-5, 400V 4A) has a shorted diode.
- After replacing it and the 2 resistors, everything is working fine

TO-DO:
- Re-crimp the motherboard connector, some contacts are broken due to corrosion

I'm surprised at how silent the fan is.

# Motherboard

```
Model: 40-051201
Serial: 22314024
ROM version: Rev D
```

Motherboard requires all power rails and the POK signal in order to boot.
For testing on the bench, you can use an ATX PSU to generate -12V, 5V and 12V. You will also need to put 5V on the POK line.

Luckily it uses no custom chips, all the custom logic is implemented with bipolar PROMs. These can be dumped and duplicated, albeit programmers are hard to come by...
So far the only hard to replace part I've seen is the 12.324 MHz crystal for the video clock 

There is a RTC powered by 2 button cells, that tend to leak... On this board, it leaked but luckily the corrosion is minimal.

It's an early revision of the board, and features multiple factory botches that are documented below.

## Troubleshooting

Original symtoms: [stuck screen with random characters](pic/character_garbage.jpg).
After a while it started to show [uneven dots and lines](pic/dots_lines.jpg) without any proper character display.

Debugging steps:
- ROM dumps: boot and character. Both are fine
- Cleaned all the sockets and lightly sanded all socketed chip ICs
- U210 (4116) RAM chip running too hot, replaced.
- U429 (74S163) chip running a bit hotter than the rest, relaced. Replacement does not overheat but no change
- Symptoms are still the same. Composite output shows wobbly lines. Vsync and Hsync on the CRT connector are fine, but video signal does not move
- Cleaned up corrosion. The battery contacts will need to be replaced.
- Checked the following ICs in another computer, confirmed working: CPU, CTC, CRT controller, SIO, PIO, FDC, DMA
- Checked the POK signal. It's working as intended: NMI pin on the Z80 is pulled down until POK is up, which basically halts the Z80 with interruptions.
- VSYN reads 23.6 Hz and HDRV about 6.02 MHz. Value doesn't change when POK is applied which leads me to assume the video chip is not properly configured by the CPU.
- Dumped PROMs after receiving the adapters. Documented in `rom/README.md`
- Checking bus pins on the CPU, it's left floating. When it happens, address bus is stuck on 0x43 or 0x3F...?
- Actually, it was not and I forgot the POK signal. Oops!
- Data bus is floating. Lower address bus just increments from 0 to 127 over and over forever. I assume it's just running NOPs off the floating data bus and the address loops...
  A7 stays low, I assume it should also move.
- Looking at the EPROM chip enable (U252 pin 20), it stays high but should be low.
  /CE is generated by U242 (74LS10) from RD, address lines and /EPROM ENAB. Looked like all of them were low so I removed U242 to test it, it's fine.
- Turns out /EPROM ENAB is not low but floating, stuck at 1.8V. Traced it back to U508 (74LS273). Replaced it and now the display is working again! It shows random static characters (uninitialized memory likely).
- Looks like the address bus is not stuck.
- When probing it, the composite display suddenly went black. No vertical or horizontal sync on the internal video pins.
- Pin 12 of (U401) CRT5207 is stuck, likely a clock issue. Tracing it back to U429, pin 2 should receive a clock but nothing. Replaced transistor Q403 and it's running fine again.

Dead parts summary:
- U508: 74LS273
- Q403: 2N3906

TO-DO:
- Socket and test RAM chips. Might be overkill but will make maintenance easier for later.
- Reflow solder joins near corrosion area. 
- Make new contacts for the battery holder, using bent wires

## Factory configuration & bodges

Jumpers:
* J303: 1-2
* J304: open
* J305: 1-2 4-5
* J306: open
* J307: 1-2 4-5
* J308: 1-2
* J309: 1-2 5-6
* J310: 1-2 4-5
* J312: 1-2 4-5

Jumpers (wrapped):
* J311: 2-3
* J602: 1-8 2-3
* J603: 1-2
* J604: 2-7 5-6

TO-DO:
* Picture with jumper locations

Bodges:
* U603: Pin 15 lifted, soldered to pin 16
* U605: 4-14
* U506: 16 lifted, connected to U511-1
* U434 pin 2 to via below U401. Via is between U401 pin 38 and U430 pin 3.

Reworked area (probably factory mistakes):
* near U253, broken trace?
* tantalum decoupling caps near RAM
* resistor near CPU

## Compatible parts

| Marking | Role    | Original       | Replacements |
| ------- | ------- | -------------- | ------------ |
| U401    | Display | SMC CRT5027    | TI TMS9927   |
| U102    | DMA     | Intel D8237A-4 | AMD AM9517A  |

U401 might also be compatible with TI TMS9937. Second sources are:
* SMC CRT5037
* Mostek MK3807P-4 
* Solid State Scientific (SSS) SND5037E / SND5037F

**Update**: Tried using a Mostek MK3807 for U401, it does not work but I suspect the chip might be dead...

# CRT

TO-DO

# Floppy

TO-DO

# Keyboard

TO-DO

# Case

Missing / broken parts:
* One of the two feet assemblies
* One of the hinge covers for the handle

@vince120 modeled and printed a new feet assembly, using FreeCAD.
It's not yet on Thingiverse but will be uploaded there once the design is finished. (TO-DO)

# Thanks

Many thanks to all the following people for their work and help
* Fred Stark for providing the computers and ROM reverse-engineering
* Vince for his 3D printing skills, making very accurate replacement parts
* Al Kossow for his preservation work
* Don Maslin for his preservation work
* Tom Jennings for his preservation work
* Gene Buckle for preserving Don Maslin's work
* Barry Rodewald for his work on MAME
