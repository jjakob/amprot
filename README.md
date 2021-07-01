## AmProt amplifier protection and muting

A useful addition to any solid-state audio amplifier.

- power-on muting (silences the pop at power on)
- output DC offset detection (protects speakers from damage caused by a malfunctioning amplifier)
- overtemperature protection (disconnects the speaker before the output stage gets too hot)
- power failure detection (disconnects the speaker when the amp supply voltage falls too low, senses both +/- rails)
- manual muting (switch to manually disable the output)
- dual color status LED

### Performance
| --------------------	| ---------- |
| Fault detection time	| max. 0.6ms |
| Power-on delay	| ~ 1s |
| Fault recovery delay	| ~ 0.5s |
| Supply voltage	| must be same as relay coil voltage, 8-35V (limited by 78L05) |
| Maximum relay current	| 100mA (can be increased by substituting the driver transistor) |
| DC offset detection	| max. 500mV |
| Temperature trip point | ~ 65 deg C, resets at ~ 60 deg C (adjustable in software) |

### LED

| yellow | manual mute or power-on selftest |
| green | Normal operation, output on |
| red (steady) | Power failure / undervoltage |
| red (fast blinking 2 Hz) | DC offset (amplifier fault) |
| red (slow blinking 1 Hz) | Overtemperature |

Both LEDs are activated (red+green=yellow) for 0.5s after power on as a self-test.

Since the red LED is typically more sensitive than the green one, the yellow is really more orange when using the same resistor values for both, this can be tweaked by increasing/decreasing one of the resistors.

It's possible to accomodate both common-cathode and common-anode LEDs by changing the software (TODO) and the jumper. Auto-detection may be possible (TODO). Default is common-cathode.

### Schematic

TODO

### Compiling the firmware

A firmware binary is available pre-compiled. If you wish to modify the program, you need:
- GNU make, awk
- avr-gcc, avr-libc (on Gentoo you can install both using [crossdev](https://wiki.gentoo.org/wiki/Crossdev), `crossdev -t avr`)

### Flashing the firmware

To flash, you'll need a working compilation environment as above, plus avrdude and a supported programmer. The program is made for an ATtiny13A, using other ATtiny's is possible (you may have to modify the code).

Edit the Makefile and change the `AVRDUDE_` parameters to your specific needs. Run `make readcal` and `make program`. In addition to writing the firmware, this will read the 4.8MHz calibration OSCCAL value from the device signature and set it in the code. This is required as the ATtiny13A only automatically loads the 9.6MHz OSCCAL, but not the 4.8MHz one.

You can alternatively use avrdude directly or another programmer, but you'll need to set the fuse bits correctly: lfuse = 0x79 (Disable CLKDIV8, 4.8MHz clock). The clock will be uncalibrated so delays will be inaccurate (slower), but the circuit will still function.

### Credits

This is an original design by me, not copying any existing circuit. Inspired by <https://sound-au.com/project111.htm> and <https://sound-au.com/project33.htm>.

### License

CC BY-NC-SA v4.0
