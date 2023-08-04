# Minitel 5

Initial state: in bag with PSU, doesn't boot and makes a screechy noise
There's some corrosion in the battery compartment

Taking it apart, the noise seems to come from the RL101 relay

Initial components inspection:
* SW101 (for external RAM/ROM?) is corroded and stuck
* F201 near the phone line is covered in white dust, bad plastic
* MA101 has been replaced, ugly solder joints, no radiator and appears to be in the wrong orientation?
* J2 plastic is covered in white dust, but the gold plated pins are fine
* BT1 will need replacing, no corrosion but likely empty
* Some corrosion on Q101(s heatsink)
* Some ground plane corrosion near the RAM/ROM socket

Botches:
* green wire to the left of MN201, same as the one pictures in the repo listed at the end

Parts references:
* SW101: [Omron D2F-FL](https://eu.mouser.com/ProductDetail/Omron-Electronics/D2F-FL?qs=VO24nqdQNUDacKAjsvDd5g%3D%3D)
* RL101: [Siemens V23026-A1001-B201](https://eu.mouser.com/ProductDetail/TE-Connectivity-PB/V23026A1001B201?qs=7QomnyYyMCLLeJuvYnUflQ%3D%3D) 
* Q101: IRF9Z10
* F201: Radial fuse T2.5A 250VAC
* MA101: (not original) L7812CV with a 2012 (!) datecode. Should be a 78M08

## Work done

Replaced the following:
* SW101: corroded, contacts broken inside
* RL101: likely some premature wear
* MA101: wrong part
* F201: damaged plastic

Other repairs:
* Clear plastic thingy used as a stop for the feet. Re-glued with cyanoacrylate
* Battery contact corrosion cleanup. Should be coated with zinc or nickel but it's riveted with melted plastic. Good enough
* Plastic wheel for contrast was not properly held to the potentiometer, due to a broken clip. Used some black hot glue

It now works properly :)

To do:
* Replace coin cell. I think it's only used for the internal phone book/directory

## Resources

-> https://github.com/clxjaguar/minitel5
