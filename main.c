/* Amplifier protection and muting */
/* Copyright 2021 Jernej Jakob <jernej.jakob@gmail.com> */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <stdlib.h>

#define	LED_GREEN	PB0
#define	LED_RED		PB1
#define IN_PWRFAIL_MUTE	PB2
#define IN_PROT_TEMP	PB4
#define	RELAY		PB3

#define IN_PWRFAIL_MUTE_ADMUX 1
#define IN_PROT_TEMP_ADMUX 2

/* thresholds and hysteresis are 8-bit ADC values */
#define MUTE_THRESHOLD 210 /* 4.1V */
#define PWRFAIL_THRESHOLD 10 /* 10 = 0.2V */

#define TEMP_THRESHOLD 86 /* 76 (+10) = 65C */
#define PROT_THRESHOLD 10 /* 0.2V */

#define ADC_HYSTERESIS 10 /* 0.2V */

/* produces about 500ms delay */
#define MEDIUM_DELAY 65535 /* 65535 @4.8MHz */

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

	/* main loop must not use blocking delays, so we delay by incrementing this variable */
	uint16_t delayvar = 0;

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

	/* enable watchdog timer with 15ms timeout */
	wdt_enable(WDTO_15MS);

	/* start new conversion */
	ADCSRA |= _BV(ADSC);

	while(1) {
		wdt_reset();

		if(intflags.adc_int){
			intflags.adc_int = 0;

			if((ADMUX & (MUX0|MUX1)) == IN_PWRFAIL_MUTE_ADMUX){
				if(adcval >= MUTE_THRESHOLD && state != STATE_MUTE) {
					state = STATE_MUTE;
					delayvar = 0;
				}
				else if(MUTE_THRESHOLD-ADC_HYSTERESIS > adcval && adcval > PWRFAIL_THRESHOLD+ADC_HYSTERESIS && state != STATE_PWRFAIL) {
					state = STATE_PWRFAIL;
					delayvar = 0;
				}
				else if(adcval <= PWRFAIL_THRESHOLD && (state == STATE_MUTE || state == STATE_PWRFAIL)) {
					state = STATE_NORMAL;
					delayvar = 0;
				}
			}
			else {
				if(adcval >= TEMP_THRESHOLD && (state == STATE_TEMP || state == STATE_PROT)) {
					state = STATE_NORMAL;
					delayvar = 0;
				}
				else if(TEMP_THRESHOLD-ADC_HYSTERESIS > adcval && adcval > PROT_THRESHOLD+ADC_HYSTERESIS && state != STATE_TEMP) {
					state = STATE_TEMP;
					delayvar = 0;
				}
				else if(adcval <= PROT_THRESHOLD && state != STATE_PROT) {
					state = STATE_PROT;
					delayvar = 0;
				}
			}

			/* alternate between the 2 inputs */
			if((ADMUX & (MUX0|MUX1)) == IN_PWRFAIL_MUTE_ADMUX)
				ADMUX = _BV(ADLAR)|IN_PROT_TEMP_ADMUX;
			else {
				ADMUX = _BV(ADLAR)|IN_PWRFAIL_MUTE_ADMUX;
				if(state == STATE_START) {
					/* first pass is done and we've checked both inputs so it's safe to transition to normal */
					state = STATE_NORMAL;
					delayvar = 0;
				}
			}

			/* start new conversion */
			ADCSRA |= _BV(ADSC);
		}

		switch(state) {
			case STATE_START:
				break;
			case STATE_MUTE:
				PORTB &= ~_BV(RELAY);
				/* yellow */
				PORTB |= _BV(LED_RED)|_BV(LED_GREEN);
				break;
			case STATE_PWRFAIL:
				PORTB &= ~_BV(RELAY);
				/* red */
				PORTB |= _BV(LED_RED);
				PORTB &= ~_BV(LED_GREEN);
				break;
			case STATE_TEMP:
				PORTB &= ~_BV(RELAY);
				PORTB &= ~_BV(LED_GREEN);

				/* long blink red */
				if(delayvar == 0)
					PORTB |= _BV(LED_RED);
				else if(delayvar == MEDIUM_DELAY)
					PORTB &= ~_BV(LED_RED);

				if(PORTB & _BV(LED_RED))
					delayvar++;
				else
					delayvar--;

				break;
			case STATE_PROT:
				PORTB &= ~_BV(RELAY);
				PORTB &= ~_BV(LED_GREEN);

				/* short blink red */
				if(delayvar == 0)
					PORTB |= _BV(LED_RED);
				else if(delayvar == MEDIUM_DELAY/2)
					PORTB &= ~_BV(LED_RED);

				if(PORTB & _BV(LED_RED))
					delayvar++;
				else
					delayvar--;

				break;
			case STATE_NORMAL:
				/* delay transitioning into relay on */
				if(delayvar == MEDIUM_DELAY-1) {
					PORTB |= _BV(RELAY);
					/* green */
					PORTB |= _BV(LED_GREEN);
					PORTB &= ~_BV(LED_RED);
					delayvar++;
				}
				else
					delayvar++;
				break;
		}
	}
}
