
# FD-55BV-54-U

Specs:
- 300 RPM
- 48 TPI
- 2 sided
- 40 tracks per side


## Jumpers

- DS0, DS1, DS2, DS3: Drive select
- IU: enable In-Use signal on pin 4
- U1 / U2: front LED behavior
- RY / XT: Pin 34 behavior. Only set one, never both
  - RY: READY signal on pin 34
  - XT: keep pin 34 open
- FG: Frame grounding
- ML: motor spin condition
  - Open = only spin when motor On signal is received
  - Closed: spin when MOTOR ON or front LED is lit up
- RE: Automatically recalibrate on power on (takes 255ms at most)
- E0 / E2: INDEX/SECTOR and READ DATA pulses behavior
  - E0 open = only send INDEX/SECTOR when drive is ready
  - E0 closed: send INDEX/SECTOR independently of ready state
  - E2 open = only send READ DATA when drive is ready
  - E2 closed: send READ DATA independently of ready state
- HL: Unused, keep open

## Front LED behavior

| IU | U1 | U2 | Condition                        |
| -- | -- | -- | -------------------------------- |
|    |    |    | Drive select                     |
|  X |    |    | Drive select OR in use           |
|  X |  X |    | In use                           |
|    |  X |  X | Drive select & Ready             |
|  X |  X |  X | In use OR (drive select & ready) |

## Resources

https://retrocmp.de/fdd/general/floppy-bus.htm
http://bitsavers.org/pdf/teac/FD-55BV_Specification.pdf
