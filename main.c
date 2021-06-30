/* Amplifier protection and muting */
/* Copyright 2021 Jernej Jakob <jernej.jakob@gmail.com> */

#include <avr/io.h>
#include <util/delay.h>

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

#ifdef PROG_CAL
	/* load osccal */
	OSCCAL = PROG_CAL;
#endif

	/* turn off leds */
	_delay_ms(500);
	PORTB &= ~(_BV(LED_RED)|_BV(LED_GREEN));

	while(1) {
		_delay_ms(1000);
		PORTB |= _BV(LED_RED)|_BV(LED_GREEN);
		_delay_ms(1000);
		PORTB &= ~(_BV(LED_RED)|_BV(LED_GREEN));

	}
}
