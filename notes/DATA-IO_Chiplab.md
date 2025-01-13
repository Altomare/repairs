# Data I/O Chiplab

P/N: 901-0075-003
Serial: 90001410

Power:
* 24V AC, 50-60Hz, 1.7A
* 24V DC, 1.25AZ

## Power board

P/N: 702-2407--02
Date: 1993

Quantity | Capacity | Voltage | Pitch | Diameter | Height
-------- | -------- | ------- | ----- | -------- | ------
3        |   1000µF |     50V | Pitch | Diameter | Height
3        |   2200µF |     10V | Pitch | Diameter | Height
3        |    470µF |     50V | Pitch | Diameter | Height
1        |    100µF |     50V | Pitch | Diameter | Height

As reference in case they explode, tantalums:
* 3.3µF 50V neat the LT1170CT
* 10µF 10V near the mezzanine connector

## Mainboard

P/N: 701-2392-001
Date: 1993

Some factory bodges + 1 diode between -5V and GND

## DIP48-1 Pod

P/N: 715-2163-001
Date: 1993/09/15

PCB P/N: 701-2393-001

Rattling noise, it had 2 broken board holding tabs.

PCB has 14 fancy reed relays: Hasco S1A05. Connector to the main pod seems to have fragile pins. Appears a vertical 68 pin SCSI connector

The Ariel DIP48 socket is directly soldered to the board and has a very stiff mechanism. Maybe keeping it in open position for a few hours might help. I removed the socket top part (only two screws) to clean it nicely. It had a lot of dust trapped inside

# Useful links

http://matthieu.benoit.free.fr/139.htm

Also known as Cypress Impulse3 CY3500: http://matthieu.benoit.free.fr/DATAIO_Cypress_impulse3_programmer_resources.htm

https://www.docentelectronics.com/httpdocs/Chip%20Masters/Data%20I-O/
