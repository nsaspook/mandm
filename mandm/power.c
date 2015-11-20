/* External device power control */
#include "power.h"

#define M_DEBUG	FALSE

int16_t my_struct_cmp(const motortype *lhs, const motortype *rhs)
{
	return(int16_t) memcmp((const void*) lhs, (const void*) rhs, sizeof(struct motortype));
}

int motor_control(motortype *motor)
{
	static struct motortype lastmotor;

	if (!motor) return E_MOTOR_NULL_P; // bad pointer error
	if (!motor->active) return E_MOTOR_NONE; // no motor connected error

	emotor_v24(motor->v24);
	if (mode.emo || mode.on_off_only) {
		lastmotor.type = 0x57; // invalid type to force relays to activate when EMO is cleared
	}
	if ((my_struct_cmp(motor, &lastmotor) == 0) && !mode.demos) {
		if (RS232_DEBUG && M_DEBUG) TXREG2 = 'D'; // dupe motor command
		return 0;
	}

	lastmotor = *motor; // set last motor command to this one
	if (mode.emo) {
		lastmotor.type = 0x57; // invalid type
		return E_MOTOR_EMO; // motor power off signal is set error
	}

	switch (motor->axis) {
	case XAXIS:
		if (!motor->run) {
			emotor_power(XM_BIT, FALSE);
		} else {
			if (motor->cw) {
				emotor_cw(XD_BIT, !motor->reversed);
			} else {
				emotor_cw(XD_BIT, motor->reversed);
			}
			if (!mode.on_off_only) { // check for just open closed mode
				emotor_power(XM_BIT, TRUE); // just power up
			} else {
				if ((motor->cw) && (!motor->reversed)) { // only if really cw power up valves
					emotor_power(XM_BIT, TRUE);
				}
			}
		}
		break;
	case YAXIS:
		if (!motor->run) {
			emotor_power(YM_BIT, FALSE);
		} else {
			if (motor->cw) {
				emotor_cw(YD_BIT, !motor->reversed);
			} else {
				emotor_cw(YD_BIT, motor->reversed);
			}
			if (!mode.on_off_only) {
				emotor_power(YM_BIT, TRUE); // just power up
			} else {
				if ((motor->cw) && (!motor->reversed)) { // only if really cw power up
					emotor_power(YM_BIT, TRUE);
				}
			}
		}
		break;
	case ZAXIS:
		if (!motor->run) {
			emotor_power(ZM_BIT, FALSE);
		} else {
			if (motor->cw) {
				emotor_cw(ZD_BIT, !motor->reversed);
			} else {
				emotor_cw(ZD_BIT, motor->reversed);
			}
			if (!mode.on_off_only) {
				emotor_power(ZM_BIT, TRUE); // just power up
			} else {
				if ((motor->cw) && (!motor->reversed)) { // only if really cw power up
					emotor_power(ZM_BIT, TRUE);
				}
			}
		}
		break;
	default:
		return E_MOTOR_AXIS; // axis out of range error
		break;
	}
	return 0;
}

uint8_t emotor_power(uint8_t motor_bit, uint8_t on) // select the motor power by bit position
{
	if (on) {
		if (!ERELAYS & motor_bit) emotor_slow_start(); // limit starting current
		emotor_v24(mode.v24);
		ERELAYS = ERELAYS | motor_bit; //fixed // or the bit high
	} else {
		if (ERELAYS & motor_bit) emotor_slow_stop(); // limit stopping current feedback
		ERELAYS = ERELAYS & (~motor_bit); //fixed // and the bit low inverted
		wdttime(RELAYRUNF); // wait for .5 seconds.
	}

	return ERELAYS;
}

uint8_t emotor_relays(void)
{
	return ERELAYS;
}

void emotor_slow_start(void)
{
	SLOW_STATUS = POWER_S; // save the current relay state
	if (mode.qei) POWER_S = LOW; // turn off fast relay
	slow_timer_start(); //	start the background counter to return POWER_S to the original state
}

void emotor_slow_stop(void)
{
	emotor_slow_start();
}

uint8_t emotor_cw(uint8_t motor_bit, uint8_t cw) // select the motor direction by bit position
{
	if (cw) {
		ERELAYS = ERELAYS & (~motor_bit); //fixed // and the bit low inverted, CW is on the NC contacts
	} else {
		if (mode.on_off_only) {
			emotor_power_off(); // just turn off power
			wdttime(RELAYRUNF); // wait for .5 seconds.
			return ERELAYS; // no reverse on valves
		}
		ERELAYS = ERELAYS | motor_bit; //fixed // or the bit high
	}
	return ERELAYS;
}

uint8_t emotor_is_all_off(void)
{
	if ((ERELAYS & ALL_MOTOR_BITS) == ALL_OFF_BITS) { //fixed
		return TRUE;
	}
	return FALSE;
}

void emotor_switch_ccw(void)
{
	if (mode.on_off_only) return; // no reverse on valves
	ERELAYS |= ALL_CW_BITS; // fixed // switch to CCW
}

void emotor_switch_cw(void)
{
	ERELAYS &= (~ALL_CW_BITS); // fixed // switch to CW
}

void emotor_power_off(void)
{
	ERELAYS &= HIGH_DRIVE_24; // fixed
}

void emotor_power_on(void)
{
	ERELAYS |= ALL_MOTOR_BITS; // fixed
}

uint8_t emotor_v24(uint8_t volts24)
{ // set and return 24vdc on status

	if (volts24 && motordata[0].v24) {
		mode.v24 = TRUE;
		DRIVE_V24 = HIGH; //fixed // 24vdc on
		return TRUE;
	} else {
		mode.v24 = FALSE;
		DRIVE_V24 = LOW; //fixed // 5vdc on
		return FALSE;
	}
	return FALSE;
}

uint8_t relay_v24(void) // status of 5/24 volt relay
{
	if (DRIVE_V24 == HIGH) {
		return TRUE;
	} else {
		return FALSE;
	}
}

void blink_led(uint8_t led, uint8_t start) // blink and store status of 4 leds
{
	if (led > 3u) return;

	if (start) {
		V.blink |= ((LEDS >> led)&0b00000001) << (led + 4); // read the state of the LED on the LATCH and store it on [4..7] of blink
		V.blink |= 0b00000001 << led; // set the blink bit for the LED
	} else {
		V.blink &= ~(0b00000001 << led); // reset the blink bit for the LED
		LEDS &= ~(0b00000001 << led); // reset the LEDS bit for the LED
		LEDS |= (((V.blink >> (led + 4))&0b00000001) << led); // set the LEDS bit
	}
}

uint8_t is_led_blinking(uint8_t led)
{
	return(V.blink >> led)&0b00000001;
}