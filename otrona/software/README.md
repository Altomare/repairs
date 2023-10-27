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

# TO-DO

* How to reconstruct a floppy image to write or use with floppy emulators
* Dumped software list
