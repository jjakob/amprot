/* Amplifier protection and muting */
/* Copyright 2021 Jernej Jakob <jernej.jakob@gmail.com> */

#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>

#define	LED_RED		PB0
#define	LED_GREEN	PB1
#define IN_PWROK_MUTE	PB2
#define IN_PROT_TEMP	PB3
#define	RELAY		PB4

#define OSCCAL_STEP 16

int main(void) {
	/* set both LEDs on at start for diagnostics */
	/* IN_PWROK_MUTE needs internal pullup */
	PORTB = _BV(LED_RED)|_BV(LED_GREEN)|_BV(IN_PWROK_MUTE);
	DDRB = _BV(LED_RED)|_BV(LED_GREEN)|_BV(RELAY);

#ifdef PROG_CAL
	/* load osccal, in small steps */
	int8_t osccal_diff = (int8_t)(PROG_CAL - OSCCAL);
	uint8_t i;
	if(osccal_diff > 0) {
		for(i=osccal_diff/OSCCAL_STEP;i>0;i--){
			OSCCAL += OSCCAL_STEP;
			_delay_us(10);
		}
		OSCCAL += osccal_diff%OSCCAL_STEP;
	}
	else if(osccal_diff < 0) {
		for(i=abs(osccal_diff)/OSCCAL_STEP;i>0;i--){
			OSCCAL -= OSCCAL_STEP;
			_delay_us(10);
		}
		OSCCAL -= abs(osccal_diff)%OSCCAL_STEP;
	}
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
