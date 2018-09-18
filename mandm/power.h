#ifndef POWER_H_INCLUDED
#define POWER_H_INCLUDED
#include <p18cxxx.h>
#include <string.h>
#include "mandm.h"
#include "mandm_shared.h"
#include "crit.h"
#include "config.h"

extern volatile struct motortype motordata[MAX_MOTOR];
extern volatile uint8_t RS232_DEBUG, SLOW_STATUS;
extern volatile struct modetype mode;
extern struct V_data V;

void wdttime(uint32_t);
void slow_timer_start(void);

int motor_control(motortype*);
uint8_t emotor_power(uint8_t, uint8_t);
uint8_t emotor_relays(void);
uint8_t emotor_cw(uint8_t, uint8_t);
uint8_t emotor_is_all_off(void);
uint8_t emotor_v24(uint8_t);
uint8_t relay_v24(void);
void emotor_power_off(void);
void emotor_power_on(void);
void emotor_switch_ccw(void);
void emotor_switch_cw(void);
void emotor_slow_start(void);
void emotor_slow_stop(void);
void blink_led(uint8_t, uint8_t);
uint8_t is_led_blinking(uint8_t);
int my_struct_cmp(const motortype*, const motortype*);

#endif /* POWER_H_INCLUDED */