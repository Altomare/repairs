# Otrona Attaché

On the desk today is an Otrona Attaché, a luggable CP/M computer from the early 80s.
It doesn't have the 8086 expansion card the later versions have (Otrona 8-16).

It's completely dead: power switch does nothing, fan does not spin and nothing lights up

Looking at the manuals, this computer should behave like a terminal when no floppy is inserted, and it has an extensive diagnostic menu accessible through a keyboard shorctut.

Serial: 1533
Year:

# Documentation

Main document for repairs:
- [Service Guide](doc/Otrona_Attache_Service_Guide_Mar83.pdf): Teardown instructions, diagnostics, parts list
- [Technical Manual](Otrona_Attache_Technical_Manual_Jul83.pdf): Schematics, theory of operation

Only these 2 files are present here, more are available on Bitsavers:
http://www.bitsavers.org/pdf/otrona/

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

TO DO: More pinouts, pictures,

## Troubleshooting:

- No voltage at all on the output connector. -12V, 5V and 12V rails are dead.
- No voltage on the fan either
- When looking at the 2 transformers, the 20V one is fine but the big one is not
- Dead R6 resistor: (2 Ohm, 2 Watt)
- Replaced R6
- After powering it, R7 burned.
- Turns out the bridge rectifier (D1, MDA970-5, 400V 4A) has a shorted diode.
- After replacing it and the 2 resistors, everything is working fine

TO DO:
- re-crimp the motherboard connector, some contacts are broken due to corrosion

I'm surprised at how silent the fan is.

# Motherboard

```
Model: 40-051201
Serial: 22314024
ROM version: Rev D
```

Motherboard requires all power rails and the POK signal in order to boot.
For testing on the bench, you can use an ATX PSU to generate -12V, 5V and 12V. You will also need to put 5V on the POK line.

Luckily it uses no custom chips, all the custom logic is implemented with bipolar PROMs. These can be dumped and duplicated (albeit programmers are hard to come by)

There is a RTC powered by 2 button cells, that tend to leak... On this board, it leaked but luckily the corrosion is minimal.

There are also a few botches. TODO: Document

Original symtoms: stuck screen with random characters, but after a while it started to show uneven dots and lines without any proper character display.

Debugging steps:
- ROM dumps: boot and character. Both are fine
- Cleaned all the sockets and lightly sanded all socketed chip ICs
- U210 (4116) RAM chip running too hot, replaced.
- U429 (74S163) chip running a bit hotter than the rest, relaced. Replacement does not overheat but no change
- Symptoms are still the same. Composite output shows wobbly lines. Vsync and Hsync on the CRT connector are fine, but video signal does not move
- Cleaned up corrosion. The battery contacts will need to be replaced.
- Checked the following ICs in another computer, confirmed working: CPU, CTC, CRT controller, SIO, PIO, FDC, DMA
- Checked the POK signal. It's working as intended: NMI pin on the Z80 is pulled down until POK is up, which basically halts the Z80 with interruptions.

TO DO:
- Use logic analyzer to see what the CPU is doing
- Socket and test RAM chips. Might be overkill but will make maintenance easier for later.
- Dump PROMs
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
* J603: 
* J604: 2-7 5-6

TO DO: Check jumper orientation for wrapped ones
TO DO: Picture with jumper locations
TO DO: Document jumper purposes

Bodges:
* U605: 4-14
* U506: 16 lifted, connected to U511-1
* U454 2 to some via (TODO)

Reworked area (probably factory mistakes):
* near U253, broken trace?
* tantalum decoupling caps near RAM

## Compatible parts

CRT controller: SMC CRT5027. Compatible with TI TMS9927. Might also be compatible with the TI TMS9937 (= SMC CRT5037 = TODO other ref)

# CRT

TO DO

# Floppy

TO DO

# Keyboard

TO DO

# Case

Missing / broken parts:
* One of the two feet asesmblies
* One of the hinge covers for the handle

@vince120 modeled and printed a new feet assembly, using FreeCAD.
It's not yet on Thingiverse but will be uploaded there once the design is finished.

TO DO
