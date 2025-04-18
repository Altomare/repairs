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

## Capacitors

Electrolytic capacitor list for board 40-051202 rev D (1982), taken from Otrona Attaché S S/N 6043

There are tantalums too but I haven't listed them yet. They might need replacing as they can fail short

### List

| Marking | Volt | Cap    | Diameter | Pitch | Height | Section       | Notes |
| ------- | ---- | ------ | -------- | ----- | ------ | ------------- | ----- |
| C2      | 200V | 1000µF | 35mm     | 10mm  | 40mm   | Input         |       |
| C3      | 200V | 1000µF | 35mm     | 10mm  | 40mm   | Input         |       |
| C4      | 400V | 4µF    | 12.5mm   | 40mm  | 38mm   | Input         | Axial |
| C18     | 25V  | 330µF  | 10mm     | 5mm   | 20mm   | Output        |       |
| C19     | 10V  | 6800µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C20     | 25V  | 3300µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C21     | 25V  | 3300µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C22     | 25V  | 330µF  | 10mm     | 5mm   | 20mm   | Output        |       |
| C23     | 10V  | 6800µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C24     | 10V  | 6800µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C25     | 10V  | 6800µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C27     | 25V  | 3300µF | 18mm     | 7.5mm | 40mm   | Output        |       |
| C30     | 25V  | 330µF  | 10mm     | 5mm   | 20mm   | Output        |       |

Notes: All the tall capacitors are glued together with what looks like silicone.

Values on the board all match schematics, except for C4: 400V in schematics, 450V installed.

### Measured values

| Marking | Cap    | ESR (Ohm) | Manufacturer      | Markings      | Notes |
| ------- | ----   | --------- | ----------------- | ------------- | ----- |
| C2      | 1061µF | 0.04      | Nippon Chemi-con  | C E 85°C      |       |
| C3      | 1062µF | 0.04      | Nippon Chemi-con  | C E 85°C      |       |
| C4      | 5.74µF | 1.94      | Sprague           | 500D 4-450DC  |       |
| C18     |        |           |                   |               |       |
| C19     |        |           |                   |               |       |
| C20     |        |           |                   |               |       |
| C22     |        |           |                   |               |       |
| C21     |        |           |                   |               |       |
| C23     |        |           |                   |               |       |
| C24     |        |           |                   |               |       |
| C25     |        |           |                   |               |       |
| C27     |        |           |                   |               |       |
| C30     |        |           |                   |               |       |

### Replacement list

Keep original caps for C2, C3, C4 as they tend to be fine and replacements are very expensive.

| Quantity | Volt | Cap    | Diameter | Pitch | Replaces            | Reference    |
| -------- | ---- | ------ | -------- | ----- | ------------------- | ------------ |
| 4        | 10V  | 6800µF | 18mm     | 7.5mm | C19, C23, C24, C25  | EEU-FR1A682  |
| 3        | 25V  | 3300µF | 18mm     | 7.5mm | C20, C21, C27       | EEU-FR1E332  |
| 3        | 25V  | 330µF  | 10mm     | 5mm   | C18, C22, C30       | EEU-EB1E331B |

## Pinouts

### J8: Motherboard connector

Reference: Molex 09507121 (KK 396 Series)

|    1 |    2 |     3 |         4 |     5 |    6 |   7 |    8 |   9 |  10 |   11 |   12 |
| ---- | ---- | ----- | --------- | ----- | ---- | --- | ---- | --- | --- | ---- | ---- |
| HDRV | VSYN | VIDEO | AUDIO GND | AUDIO | POK* | +5V | key? | GND | GND | +12V | -12V |

> POK: The power supply provides a Power Okay (POK) signal to the processor to initialize the system only when power is properly stabilized.

### J5: Connector for CRT module

Reference: Molex 26192051 (KK 396 Series). Not an exact match but compatible.

|    1 |   2 |   3 |     4 |    5 |
| ---- | --- | --- | ----- | ---- |
| VSYN | GND | +15 | VIDEO | HDRV |

### J6: Floppy power connector

Reference: Molex 26192081 (KK 396 Series). Not an exact match but compatible.

|    1 |    2 |   3 |   4 |   5 |   6 |   7 |   8 |
| ---- | ---- | --- | --- | --- | --- | --- | --- |
| +12V | +12V | GND | GND | +5V | GND | GND | +5V |

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
* ROM dumps: boot and character. Both are fine
* Cleaned all the sockets and lightly sanded all socketed chip ICs
* U210 (4116) RAM chip running too hot, replaced.
* U429 (74S163) chip running a bit hotter than the rest, relaced. Replacement does not overheat but no change
* Symptoms are still the same. Composite output shows wobbly lines. Vsync and Hsync on the CRT connector are fine, but video signal does not move
* Cleaned up corrosion. The battery contacts will need to be replaced.
* Checked the following ICs in another computer, confirmed working: CPU, CTC, CRT controller, SIO, PIO, FDC, DMA
* Checked the POK signal. It's working as intended: NMI pin on the Z80 is pulled down until POK is up, which basically halts the Z80 with interruptions.
* VSYN reads 23.6 Hz and HDRV about 6.02 MHz. Value doesn't change when POK is applied which leads me to assume the video chip is not properly configured by the CPU.
* Dumped PROMs after receiving the adapters. Documented in `rom/README.md`
* Checking bus pins on the CPU, it's left floating. When it happens, address bus is stuck on 0x43 or 0x3F...?
* Actually, it was not and I forgot the POK signal. Oops!
* Data bus is floating. Lower address bus just increments from 0 to 127 over and over forever. I assume it's just running NOPs off the floating data bus and the address loops...
  A7 stays low, I assume it should also move.
* Looking at the EPROM chip enable (U252 pin 20), it stays high but should be low.
  /CE is generated by U242 (74LS10) from RD, address lines and /EPROM ENAB. Looked like all of them were low so I removed U242 to test it, it's fine.
* Turns out /EPROM ENAB is not low but floating, stuck at 1.8V. Traced it back to U508 (74LS273). Replaced it and now the display is working again! It shows random static characters (uninitialized memory likely).
* Looks like the address bus is not stuck.
* When probing it, the composite display suddenly went black. No vertical or horizontal sync on the internal video pins.
* Pin 12 of (U401) CRT5207 is stuck, likely a clock issue. Tracing it back to U429, pin 2 should receive a clock but nothing. Replaced transistor Q403 and it's running fine again.
* Removed all 32 RAM chips, put in new sockets.
* 12 of the 32 chips tested bad. :(
* First boot with new RAM, alim went into safety mode after 1 sec. Tried again with a thermal camera, no success. Guess something burned.
* A1 is now stuck high.
  There is a short between 5V and A1 in the RAM section (short not present on the other side of the buffer).
  After unsocketing all chips, same issue.
* Tried reflowing all A1 and 5V pins. No change
* Put a 10 Ohm power resistor betewen A1 and ground. Thermal camera revealed the tiny solder whisker.
* After fixing, no more short but the computer is back to displaying wobbly lines.
* On the oscilloscope, it looks like the lower address bus is incrementing again, so maybe something went wrong with the ROM circuitry.
* Chip Enable signal on the ROM is still good. no NMI either
* Removed U253 (74LS373) as maybe the factory rework near it went bad. Chip tests OK, rework was for a damaged pad. Installed new socket and cleaner rework, no change.
* 2023/08:
  * Got a logic analyzer and a custom made interface board for the Z80 bus
  * All the read instructions are wrong and D5 is stuck low. The first one should be `C3` but ends up being `E3`. Nothing obvious on the logic analyzer capture that matches the D5 high pattern
  * Removed all the chips that communicate with D5: SIO, PIO, CTC, Floppy, Video bus transceivers. Also lifted the D5 pin of the DMA controller. I could not remove it as it's generating signals needed for reading the boot ROM
  * Issue persists when the only thing I have talking on the bus are the CPU and RAM transceivers
  * More probing, turns out there's a tiny solder bridge under a RAM socket, between data out and A6 (under U225). RAM A6 has a pullup resistor, hence the signal being stuck high. As the same transceiver is used for EPROM, that means it was stuck high only the EPROM was read.
  * Verdict: soldering 32 sockets late at night is a veeery bad idea.
  * It now boots properly, I got the "Otrona Attache" text then the terminal mode prompt. :)
* Keyboard debug:
  * Keyboard doesn't work. Signals on the keyboard connector look OK.
  * U504 is fine. Signal on pin 10 of U511 (LM339N) is fine, but nothing on pin 13
  * Put in a socket, replaced U511 and the keyboard work fine.
  * Doesn't work on every boot. Tried swapping the PIO, same result. Turns out it's a flaky single wipe socket. CPU socket is not really good either.
* Monitor tests (see manual 3-10):
  * Screen patterns OK
  * Keyboard OK
  * RAM issues, likely related to the upper addresses and a short on them...

Dead parts summary:
- U508: 74LS273
- U511: LM339N
- Q403: 2N3906
- RAM: 4116-15 * 12

TO-DO:
- Check RAM issues, probably a solder bridge
- Reflow solder joins near corrosion area.
- Make new contacts for the battery holder, using bent wires OR add a CR2032 battery holder on wires...

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

Indicators:
* Hand written label: "SN 179534"
* PCB markings: Data RAy Corp 40-051204-A 601-326-002A 
* PCB label: 17954 601-326-007

State:
* Lots of dust
* The tube is lightly marked but it's only lines, so everything's fine :)
* C4 and C8 are leaky. I've read some reports of Otrona displays going bad so that sounds like a culprit.
* Rusty screws, very rusty CRT grounding spring

TO-DO:
- Clean all that dust & rust
- Measure capacitor ESR
- Test & calibrate

## Capacitors

Electrolytic capacitor list:
| Marking | Volt | Cap    | Diameter | Pitch | Notes         |
| ------- | ---- | ------ | -------- | ----- | ------------- |
| C1      | 50V  | 100µF  | 10mm     | 5mm   |               |
| C4      | 16V  | 1000µF | 13mm     | 5mm   |               |
| C8      | 16V  | 1000µF | 13mm     | 5mm   |               |
| C9      | 100V | 47µF   | 10mm     | 5mm   |               |
| C10     | 63V  | 10µF   | 10mm     | 5mm   |               |
| C17     | 25V  | 10µF   | 16.2mm   | 7mm   | **Bipolar**   |
| C18     | 25V  | 10µF   | 16.2mm   | 7mm   | **Bipolar**   |
| C19     | 50V  | 100µF  | 13mm     | 7mm   | 25V in manual |
| C23     | 100V | 47µF   | 10mm     | 5mm   | 63V in manual |
| C24     | 100V | 47µF   | 10mm     | 5mm   | 63V in manual |

Values match the schematics in technical manual, section A-10

Here's a simple Mouser BOM. I have not checked ESR requirements

| Qt | Desc             | Mouser ref        |
| -- | ---------------- | ----------------- |
| 3  | 100V 47µF        | 647-UHE2A470MPD   |
| 2  | 16V 1000µF       | 647-UHE1C102MHD6  |
| 2  | 25V 10µF Bipolar | 667-ECE-A1HN100UB |
| 2  | 50V 100µF        | 647-UPM1H101MPD6  |
| 1  | 63V 10µF         | 647-UCS2C100MPD   |

# Floppy

Pinout from schematic
| Otrona MB    |  # |  # | Remex RFD480   |
| ------------ | -- | -- | -------------- |
| /DSK CHG     |  1 | 34 | Unused (1)     |
| SIDE         |  3 | 32 | Side Select 1  |
| /RD DATA     |  5 | 30 | Read Data      |
| /INDEX       |  7 | 28 | Write Control  |
| /TRK0        |  9 | 26 | Track 00       |
| /WR GATE     | 11 | 24 | Write Gate     |
| /WR DATA     | 13 | 22 | Write Data     |
| /STEP        | 15 | 20 | Step           |
| /DIR         | 17 | 18 | Direction In   |
| /MOTOR ON    | 19 | 16 | Motor on       |
| /DS 3        | 21 | 14 | Drive select 2 |
| /DS 2        | 23 | 12 | Drive select 1 |
| /DS 1        | 25 | 10 | Drive select 0 |
| /INDEX       | 27 | 8  | Index/Sector   |
| /READY       | 29 | 6  | Ready (2)      |
| N/C          | 31 | 4  | Reserved       |
| /HD LD       | 33 | 2  | Reserved       |

Notes:
* (1) Normally "Drive Ready" but this drive PCB doesn't support it
* (2) Normally DS3 but jumpered to RDY

Every other pin is grounded.

# Keyboard

Identifiers:
- Hand-written serials on PCB:
  - Front: 22121004
  - Side: 22412002
- PCB id: 40-051206 REV A "512 KEYBOARD3"

Observations:
- C3 is not populated, matches schematics
- Slider holes have been manually enlarged

Work done:
Cleaned up rusted screws

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
