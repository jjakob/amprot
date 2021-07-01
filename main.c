/* Amplifier protection and muting */
/* Copyright 2021 Jernej Jakob <jernej.jakob@gmail.com> */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdlib.h>

#define	LED_GREEN	PB0
#define	LED_RED		PB1
#define IN_PWRFAIL_MUTE	PB2
#define IN_PROT_TEMP	PB4
#define	RELAY		PB3

#define IN_PWRFAIL_MUTE_ADMUX 1
#define IN_PROT_TEMP_ADMUX 2

#define OSCCAL_STEP 16

volatile struct {
	uint8_t adc_int: 1;
} intflags;

volatile uint8_t adcval;

ISR(ADC_vect){
	/* 8-bit value is left-adjusted in ADCH when ADLAR is set */
	adcval = ADCH;
	intflags.adc_int = 1;
}

int main(void) {
	enum {
		STATE_START,
		STATE_MUTE,
		STATE_PWRFAIL,
		STATE_TEMP,
		STATE_PROT,
		STATE_NORMAL,
	} __attribute__((packed)) state = STATE_START;

	/* set both LEDs on at start for diagnostics */
	/* IN_PWRFAIL_MUTE needs internal pullup */
	PORTB = _BV(LED_RED)|_BV(LED_GREEN)|_BV(IN_PWRFAIL_MUTE);
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

	/* ADC init */
	/* ADLAR: left-align top 8 bits in ADCH for 8-bit precision */
	/* select initial input */
	ADMUX = _BV(ADLAR)|IN_PWRFAIL_MUTE_ADMUX;
	/* enable ADC, enable interrupt, set prescaler to 64 */
	ADCSRA = _BV(ADEN)|_BV(ADIE)|_BV(ADPS2)|_BV(ADPS1);

	/* enable interrupts */
	sei();

	/* turn off leds */
	_delay_ms(500);
	PORTB &= ~(_BV(LED_RED)|_BV(LED_GREEN));

	/* start new conversion */
	ADCSRA |= _BV(ADSC);

	while(1) {
		if(intflags.adc_int){
			intflags.adc_int = 0;

			if((ADMUX & (MUX0|MUX1)) == IN_PWRFAIL_MUTE_ADMUX){
				if(adcval > 127)
					state = STATE_MUTE;
				if((128 > adcval) && (adcval > 10))
					state = STATE_PWRFAIL;
				if((adcval < 11) && ((state == STATE_MUTE)||(state == STATE_PWRFAIL)))
					state = STATE_NORMAL;
			}
			else {
				if((adcval > 127) && ((state == STATE_TEMP)||(state == STATE_PROT)))
					state = STATE_NORMAL;
				if((128 > adcval) && (adcval > 10))
					state = STATE_TEMP;
				if(adcval < 11)
					state = STATE_PROT;
			}

			/* alternate between the 2 inputs */
			if((ADMUX & (MUX0|MUX1)) == IN_PWRFAIL_MUTE_ADMUX)
				ADMUX = _BV(ADLAR)|IN_PROT_TEMP_ADMUX;
			else {
				ADMUX = _BV(ADLAR)|IN_PWRFAIL_MUTE_ADMUX;
				if(state == STATE_START)
					state = STATE_NORMAL;
			}

			/* start new conversion */
			ADCSRA |= _BV(ADSC);
		}

		switch(state) {
			case STATE_START:
				break;
			case STATE_MUTE:
				/* yellow */
				PORTB |= _BV(LED_RED)|_BV(LED_GREEN);
				break;
			case STATE_PWRFAIL:
				/* red */
				PORTB |= _BV(LED_RED);
				PORTB &= ~_BV(LED_GREEN);
				break;
			case STATE_TEMP:
				/* TODO long blink red */
				PORTB |= _BV(LED_RED);
				PORTB &= ~_BV(LED_GREEN);
				break;
			case STATE_PROT:
				/* TODO short blink red */
				PORTB |= _BV(LED_RED);
				PORTB &= ~_BV(LED_GREEN);
				break;
			case STATE_NORMAL:
				/* green */
				PORTB |= _BV(LED_GREEN);
				PORTB &= ~_BV(LED_RED);
				break;
		}
	}
}
