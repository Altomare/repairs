# Otrona Attaché

On the desk today is an Otrona Attaché, a luggable CP/M computer from the early 80s.
It doesn't have the 8086 expansion card the later versions have (Otrona 8-16).

It's completely dead: power switch does nothing, fan does not spin and nothing lights up

Looking at the manuals, this computer should behave like a terminal when no floppy is inserted, and it has an extensive diagnostic menu accessible through a keyboard shorctut.

Serial:
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
- 1-8: Setting input the voltage
- 2-57: Power supply theory of operations
- A-8: schematics

Although it has multiple submodules, everything can be taken apart easily and has connectors you can unplug.

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

POK: The power supply provides a Power Okay (POK) signal to the processor' to
initialize the system only when power is properly stabilized.

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

Motherboard requires both 5V and 15V in order to work. -12V is not required for booting.
Luckily it uses no custom chips, all the custom logic is implemented with bipolar PROMs. These can be dumped and duplicated (albeit programmers are hard to come by)

There is a RTC powered by 2 button cells, that tend to leak... On this board, it leaked but luckily the corrosion is minimal.

There are also a few boches. TODO: Document

Original symtoms: stuck screen with random characters, but after a while it started to show uneven dots and lines without any proper character display.



Debugging steps:
- ROM dumps: boot and character. Both are fine
- Cleaned all the sockets and lightly sanded all socketed chip ICs
- RAM chip running too hot, replaced <INSERT REF>
- 74189 chip running a bit hotter than the rest, relaced but to no avail
- Symptoms are still the same. Composite output shows wobbly lines. Vsync and Hsync on the CRT connector are fine, but video signal does not move

TO DO:
- Clean up corrosion
- Check the POK signal
- Socket and test RAM chips. Might be overkill but will make maintenance easier for later.
- Dump PROMs

# CRT

TO DO

# Floppy

TO DO

# Keyboard

TO DO

# Case

The case had one broken feet. @vince120 modeled and printed a new one, using FreeCAD.
The STL can be found here: TODO

TO DO
