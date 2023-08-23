# Otrona Attaché ROM dumps

Done with a T48 USB Programmer.

References:
* U110: MMI 6349-1J
* U252: Fujitsu MBM2732A-30
* U413: MMI 6301-1J
* U416: Fujitsu MBM2732A-30
* U603: MMI 6301-1J

Markings:
* U110: nothing
* U252: "Rev D"
* U413: "012 A"
* U416: "CG 500"
* U603: "011 A" + "2" on sticker

BPROMs were read as 2716 using the following adapter:
https://www.pcbway.com/project/shareproject/BPROM_Read_Adapter_v0_2_21in1_efbb783f.html
https://team-europe.blogspot.com/2022/06/bprom-read-adapter-v02-21in1.html

The dumps were then truncated to the right size using `truncate` on Linux.

Because U603 had a leng bent and soldered to another, I could not re-bend the leg as it would likely break.
I removed the solder between the two legs, put heatshrink to isolate the bent leg and then added a temporary leg salvaged from a dead resistor array.

Pictures of this setup are in `../pic`.

# Other dumps from online

Also present are dumps from:
* Bitsavers
* Don Maslin's archive
* Santo, from retrocomputer.ca
* Unknown source, Rev H from a MAME BIOS dump

The one from Don Maslin's are identical to Rev F on bitsavers.

# Dumped versions:

| Marking | Role          | Version | Source             | MD5                              |
| ------- | ------------- | ------- | ------------------ | -------------------------------- |
|   U110  | Addressing    | -       | Bitsavers & Alto   | 96c6dc408701904ad929c7ec9211a7ca |
|   U252  | Boot ROM      | D       | Altomare           | 2db2b51c07f2412b51531a3d4c3c21b1 |
|     ^   | ^             | F       | Bitsavers & Maslin | f9975873e30494aae32c8cb5385156a4 |
|     ^   | ^             | G       | Bitsavers          | fdb4e89990238beabdd423f8868203b9 |
|     ^   | ^             | H       | Santo & MAME       | 29b42cb020ce64b4a7e7accb5bf182db |
|   U413  | Video logic   | 012 A   | Bitsavers & Alto   | 39c7f651cab979a9ec576608675d0c91 |
|   U416  | Character ROM | CG 500  | *                  | 346258b1cc3e3e88fa7e7e0b6a1984e7 |
|   U603  | Floppy logic  | ?       | Bitsavers          | 66bab56ccd7aeaba863f99ed0a2ede0c |
|     ^   | ^             | 011 A 2 | Altomare           | 32fdaa5a4f23d858cf3578df0564e145 |

Not included (yet) are the 8-16 card dumps.

Santo's boot ROM was on a 8KB ROM, but the second half is all zeros
The first half is identical to the MAME dump.
