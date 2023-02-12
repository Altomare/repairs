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
