/* Amplifier protection and muting */
/* Copyright 2021 Jernej Jakob <jernej.jakob@gmail.com> */

#include <avr/io.h>

#define	LED_RED		PB0
#define	LED_GREEN	PB1
#define IN_PWROK_MUTE	PB2
#define IN_PROT_TEMP	PB3
#define	RELAY		PB4

int main(void) {
	/* set both LEDs on at start for diagnostics */
	/* IN_PWROK_MUTE needs internal pullup */
	PORTB = _BV(LED_RED)|_BV(LED_GREEN)|_BV(IN_PWROK_MUTE);
	DDRB = _BV(LED_RED)|_BV(LED_GREEN)|_BV(RELAY);
}
