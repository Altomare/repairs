# Disk format

Specs:
* Double sided
* Double density
* Soft sectored, 10 sectors
* 40 tracks per side
* 48 TPI drive

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

Many thanks to the following people for their work in preservation:
* Tom Jennings
* Don Maslin
* Al Kossow

# TO-DO

* List dumped versions of BIOS & CP/M
* How to reconstruct a floppy image to write or use with floppy emulators
* Dumped software list
