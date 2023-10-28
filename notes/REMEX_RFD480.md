# Remex RFD480

These are the drives from the Otrona Attaché

Stickers:
* "PICO | Ex-Cell-O Corporation | REMEX DIVISION"
* "Remex Slimline Products"

PCB: 114761-001
> On drives using Drive Control Card 114761-001, a OV static output can be provided on J1-6 as a Ready signal for those controllers that require this indication.

## Debug

I have 2 drives from the Otrona

### Otrona Drive 0

* Serial 306633
* Jumpers: RDY | DS0 | A | C
* Terminator: Beckman 899-5 R220/330 (leg 3 bent but might have been my fault...)
* Assembly no. 814689-001

Initial state: Unable to get RPM reading from a Greaseweazle. No index pulse?

### Otrona Drive 1

* Jumpers: RDY | DS1 | A | C
* Warranty sticker: 275505
* No terminator

Initial state: Seems to work but head 1 does not write properly

## References

* [Manual](http://bitsavers.org/pdf/remex/Remex_RFD480_RFD960_Product_Reference_Manual.pdf)
* [Schematics](http://bitsavers.org/pdf/otrona/Otrona_Attache_Technical_Manual_Jul83.pdf) See section A-12
