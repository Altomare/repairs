# Disk format

Specs:
* Double sided
* Double density
* Soft sectored, 10 sectors
* 40 tracks per side
* 48 TPI drive

Drive models:
* Remex 67-051203
* TEAC 67-051207
* Single TEAC 67-051206
* Canon? See Flickr album

Notes:
* 3 tracks reserved for BIOS and CP/M
* Track 39 on side 1 left blank? Not sure why

# Tools

The `diskdefs` file is for use with `cpmtools`. It is from Idkraemer over on vcfed.
`libdskrc ` comes from the same source, but I have not tested it (yet).
[Original link](https://forum.vcfed.org/index.php?threads/otrona-attache.1240458/)
[Other thread](https://forum.vcfed.org/index.php?threads/otrona-attache-mega-haul.73290/)

The file has been slightly modified and works with all images present here, using CPMTools 2.23.

Some commands:
```bash
dskid -type imd bitsavers/Attache_Boot_2.2.5.IMD
cpmls -D -f otr1 -T tele retroarchive/otr-util.td0
cpmcp -f otr1 -T tele retroarchive/otr-util.td0 "0:*" retroarchive/otr-util/
```

# Software images

The following files in `retroarchive` are from:
http://www.retroarchive.org/maslin/disks/otrona/

```
Name           Size      Format  Description
-------------  --------  ------  -----------------------------------------------------
bios225.zip       72708  ZIP     No description available.
mbasic.com        24960  COM     No description available.
ns-copy1           3021          No description available.
oatt8086.td0     213722  DSDD    Otrona Attache' w/ 8086 add-in board - MSDOS v2.1
oattache.td0     224444  DSDD    Otrona Attache' system disk
otr-asm.zip      108819  ZIP     No description available.
otr-bas.zip      149619  ZIP     No description available.
otr-dos.zip      260513  ZIP     No description available.
otr-mex.zip      105559  ZIP     MEX communications
otr-mp.zip        71225  ZIP     MultiPlan for the Attache'
otr-srce.td0     203336  DSDD    Attache' ASM/BAS/MAC source code
otr-util.td0     204410  DSDD    Attache' Utilities
otr-utl.zip      201166  ZIP     No description available.
otr-ws.zip        88303  ZIP     Wordstar 3.0 for the Attache'
otrnasrc.zip     177761  ZIP     No description available.
```

The files in `bitsavers` are from:
http://www.bitsavers.org/pdf/otrona/firmware/

`wps` files come from Tom Jennings' website:
https://www.wps.com/archives/Otrona-Attache-8-16-diskettes/ (old link)
http://warehouse.sr-ix.com/Project-Archive/Otrona%20Attache%20diskettes/index.html

`dumps` is my own dump of one of the two disks that came with my machine. The other one had a head crash and the first tracks are unreadable.

## Dumping

The two floppies were stored in a humid environment, and they became a bit thicker & warped.
This caused my floppy drive head to scrape the first disk and damage it...

So I checked my drive and found an old Shugart SA-450 drive. Its head is rounded so it was able to glide across the wobbly disk without scraping it.

Dump was done with a Greaseweazle, and the image is fine :)

# BIOS

## Extraction

Technical manual, section 3-19:
> BIOS resides on the first three tracks of a system diskette. BIOS is loaded into memory at power on if the system diskette is properly inserted in Drive A.

I managed to gather 3 BIOS versions:

So far, I have found 3 BIOS versions:
* "CP/M 2.2.3 Otrona ATTACHE <56K>" from my dump
* "CP/M 2.2.5/48 Otrona 8:16 <56K>" from bitsavers & maslin dumps (identical)
* "CP/M 2.2.5 Otrona ATTACHE <56K>" from the `bios225.zip` (missing the CCP and BDOS)

To get these BIOS images, I opened the disk images in HxC and exported them as raw .IMG files.
Then I ran the following commands:
```bash
# .IMG files track order: T0H0 T0H1 T1H0... hence the skip
# Last 2 sectors were unused and had garbage leftover data
dd if=Attache_Boot_2_2_5_IMD.img bs=512 count=10 >> bitsavers.raw
dd if=Attache_Boot_2_2_5_IMD.img bs=512 count=10 skip=20 >> bitsavers.raw
dd if=Attache_Boot_2_2_5_IMD.img bs=512 count=8 skip=40 >> bitsavers.raw
```

As for BIOS25, I did it by converting the .HEX file. It was made by XASM (TDL) so it needed light modifications
I removed the headers and trailing '\r' characters, then ran the following:
```bash
objcopy --input-target=ihex --output-target=binary BIOS25.HEX BIOS25.BIN
```

Note: the .HEX file is in the PHEX format. See https://www.retrotechnology.com/herbs_stuff/zasm.pdf page 63 for more information. The headers present in BIOS25.HEX appeared to be non-important for HEX -> BIN conversion.

## CCP differences

Extraction:
```bash
dd if=maslin.raw of=maslin.raw.ccp bs=512 skip=1 count=4
dd if=mydump.raw of=mydump.raw.ccp bs=512 skip=1 count=4
```

For CCP, there are two differences: serial number and initial command.

Offset 0x7 is where the automatically executed command is stored:
* Mydump:
  * `00 0055 424d 4954 2052 00` = No command and remnants of a "SUBMIT R"
* Maslin:
  * `01 4400 2020 2020 2020 20` = "D"      

Serial is at offset 0x328 in the CCP:
* Mydump: `9116 0100 0001`
* Maslin: `9116 0100 0798`
The first 4 bytes correspond to OEM number 0x196, and CP/M version 2.2. The remaining are the serial number.

## BDOS

Extraction:
```bash
dd if=maslin.raw of=maslin.raw.bdos bs=512 skip=5 count=7
dd if=mydump.raw of=mydump.raw.bdos bs=512 skip=5 count=7
```

Only difference is the serial number at start. Same as CCP
* Mydump: `9116 0100 0001`
* Maslin: `9116 0100 0798`

## Differences between CP/M 2.2 & Otrona BIOS

For reference, I used the following sources: [brouhaha/cpm22](https://github.com/brouhaha/cpm22)
I just changed the offsets in the Makefile to match the Otrona memory layout

To quickly check, I exported XXD output and ran:
`git diff --no-index --word-diff=color --word-diff-regex=. ccp-44k.bin.xxd mydump.raw.ccp.xxd`

CCP:
* Serial number (see above)
* Start command (see above)

For BDOS, there were more changes so I decompiled it and annotated the labels for the code to match, then ran a diff.
See `disassembly/`.


`git diff --no-index -U1 --word-diff=color --word-diff-regex=. ./bdos_d.asm maslin_bdos_d.asm`

BDOS:
* Serial number (see above)
* Some jumps are relative (Otrona) instead or absolute (cpm22)
* More commands in the disk initialization routine on Otrona than in cpm22. TODO: make sense of it
* Value change in `diskwr2`, in code labeled "patch 1 for use of optional blocking/deblocking". See [CPM22PAT.01](http://www.cpm.z80.de/download/cpm22pat.zip)

## Layout

First 3 tracks of side 0 (= 30 sectors):
```
0X0000 - 0x01FF (1 sector, 512)   = BIOS boot sector
0X0200 - 0x09FF (4 sectors, 2k)   = CCP
0X0A00 - 0x17FF (7 sectors, 3.5k) = BDOS
0x1800 - 0x3BFF (18 sectors, 9k)  = Rest of BIOS
```

From BIOS source:
> | BOOT - LOADED INTO FE00H BY PROM |
> Boot code will be saved in sector 1 of track 0 and is set up here to assemble one sector length ahead of the CCP.
> The address offset factor BOFF is added where needed so the boot code will run when loaded at it's starting address of 0FE00H.
> The BIOS CBOOT routine is also run here to save space as the only time this routine is used is directly following a system reset.

# Using a floppy emulator

I managed to get it working with a Gotek using the Flashfloppy firmware.

I had to put a jumper wire between pin 2 and 6 of the Gotek, in order to have a RDY signal on pin 6 as required by the Otrona.

Jumpers: S0

Configuration: see [IMG.CFG](IMG.CFG) & [FLASH.CFG](FLASH.CFG).

Floppy images were converted to raw .img files, and put on the USB key with the .otrona.img extension.

## Adding official support

```C
#define _C(cyls) ((cyls) / 40 - 1)
#define _R(rpm) ((rpm) / 60 - 5)
#define _S(sides) ((sides) - 1)
const static struct raw_type {
    uint8_t nr_secs:6;
    uint8_t nr_sides:1;
    uint8_t has_iam:1;
    uint8_t gap3;
    uint8_t interleave:3;
    uint8_t no:3;
    uint8_t base:1;
    uint8_t _pad:1;
    uint8_t cskew:4;
    uint8_t hskew:2;
    uint8_t cyls:1;
    uint8_t rpm:1;

// Memotech
{ 16, _S(2), _IAM, 57, 3, 1, 1, 0, 0, 0, _C(40), _R(300) }, /* Type 03 */
{ 16, _S(2), _IAM, 57, 3, 1, 1, 0, 0, 0, _C(80), _R(300) }, /* Type 07 */

// Otrona 48 TPI
{ 10, _S(2), _IAM, 20, 5, 2, 1, 0, 0, 0, _C(40), _R(300) },


nr_secs = 10;
nr_sides = _S(2);
has_iam = ?; // Index Address Mark included at the start of each track. Seems like it's present
gap3 = 20; // Sector post-data gap, in bytes. 
interleave = 5; // Sector numbering: 1,6,2,7,3,8,4,9,5,10
no = 2; // 512 bytes per sector it seems
base = 1; // ID of first sector
_pad = 0; // Structure padding
cskew = 0; // No skew
hskew = 0; // No skew
cyls = _C(40); // 40 cylinders
rpm = _R(300); // 300 RPM

        /* Default post-index gap size depends on whether the track format
         * includes IAM or not (see uPD765A/7265 Datasheet). */

```

# System software

List taken from the demonstration disk documentation

Valet files:
* VALET.VAL: "This file contains the extended VALET functions. Either AXIOM.VAL or EPSON.VAL may be copied to this file depending upon
the graphics printer, if any, connected to the system."
* DUMMY.VAL: Temporary file, kinda
* Valet printer routines:
  * AXIOM.VAL: Axiom (Seikosha) printers
  * EPSON.VAL: Epson printers
  * OKI83.VAL: (not sure? no reference) Okidata 83A

Software:
* MBASIC.COM
* TIME.COM: Time & date setup. Rev 1.8 mentioned in diskette.
* BACKUP.COM: Format disk B if needed, do a full copy and verify from A to B (system included)
* FORMAT.COM: Format disk B
* PORTS.BAS: Serial port setup
* GO.COM: Execute last program remaining in memory
* SYSDUP.COM: Copy CP/M from A: to B:


# Making floppies

Some notes about making images...

Line endings should be CR-LF (=\r\n)

For now I will just modify existing images. libdsk can't write teledisk so I'm starting with bitsavers' IMD image.
```bash
# Convert line endings to CP/M CR-LF, replace in image, convert for gotek and copy to usb key
unix2dos ATTACHE.BAS
cpmrm -f otr1 -T imd Attache_Boot_2.2.5.IMD 0:ATTACHE.BAS
cpmcp -f otr1 -T imd Attache_Boot_2.2.5.IMD ATTACHE.BAS 0:ATTACHE.BAS
hxcfe -finput:Attache_Boot_2.2.5.IMD -foutput:test.otrona.img -conv:RAW_LOADER
```

# TO-DO

* How to reconstruct a floppy image
* Dumped software list
