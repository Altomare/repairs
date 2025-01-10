# PROS80 Boot disks

From Voodooween

Original drive: YE Data YD-645-1545. 80 cyl, 2 heads, 300 RPM, 1.0MB unformatted

From the dumped image, I see 80 tracks, 16 sectors, 256 byte sectors, no skew, interleave -3
1 14 11 8 5 2 15 12 9 6 3 16 13 10 7 4

File table at track 2 head 0

PIP.COM
PROM.COM
RX6J.HEX
TESTD.COM
STAT.COM
XDIR.COM
DUMP.COM
RX6J.BAK
WM.HLP
WM.COM
ZSID.COM
DISASM.COM
MAC.COM
MAC.DOC
PROM.OVL
RX6HOTP.HEX
RX6JOTP.HEX
RX6J3OTP.HEX
RX6J1OTP.HEX
PDBAOTP.HEX
RX6TEST.COM
SAISIN.COM
DISKLOAD.COM
RX6KOTP.HEX
M225V12W.COM
PDBA.COM
M2_108.COM
RX6K1OTP.HEX



cpmcp -f pros80 -T raw pros80.raw 0:DISASM.COM extract/DISASM.COM
cpmcp -f pros80 -T raw pros80.raw 0:DISKLOAD.COM extract/DISKLOAD.COM
cpmcp -f pros80 -T raw pros80.raw 0:DUMP.COM extract/DUMP.COM
cpmcp -f pros80 -T raw pros80.raw 0:M225V12W.COM extract/M225V12W.COM
cpmcp -f pros80 -T raw pros80.raw 0:M2_108.COM extract/M2_108.COM
cpmcp -f pros80 -T raw pros80.raw 0:MAC.COM extract/MAC.COM
cpmcp -f pros80 -T raw pros80.raw 0:MAC.DOC extract/MAC.DOC
cpmcp -f pros80 -T raw pros80.raw 0:PDBA.COM extract/PDBA.COM
cpmcp -f pros80 -T raw pros80.raw 0:PDBAOTP.HEX extract/PDBAOTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:PIP.COM extract/PIP.COM
cpmcp -f pros80 -T raw pros80.raw 0:PROM.COM extract/PROM.COM
cpmcp -f pros80 -T raw pros80.raw 0:PROM.OVL extract/PROM.OVL
cpmcp -f pros80 -T raw pros80.raw 0:RX6HOTP.HEX extract/RX6HOTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6J.BAK extract/RX6J.BAK
cpmcp -f pros80 -T raw pros80.raw 0:RX6J.HEX extract/RX6J.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6J1OTP.HEX extract/RX6J1OTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6J3OTP.HEX extract/RX6J3OTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6JOTP.HEX extract/RX6JOTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6K1OTP.HEX extract/RX6K1OTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6KOTP.HEX extract/RX6KOTP.HEX
cpmcp -f pros80 -T raw pros80.raw 0:RX6TEST.COM extract/RX6TEST.COM
cpmcp -f pros80 -T raw pros80.raw 0:SAISIN.COM extract/SAISIN.COM
cpmcp -f pros80 -T raw pros80.raw 0:STAT.COM extract/STAT.COM
cpmcp -f pros80 -T raw pros80.raw 0:TESTD.COM extract/TESTD.COM
cpmcp -f pros80 -T raw pros80.raw 0:WM.COM extract/WM.COM
cpmcp -f pros80 -T raw pros80.raw 0:WM.HLP extract/WM.HLP
cpmcp -f pros80 -T raw pros80.raw 0:XDIR.COM extract/XDIR.COM
cpmcp -f pros80 -T raw pros80.raw 0:ZSID.COM extract/ZSID.COM