#ifndef POWER_H_INCLUDED
#define POWER_H_INCLUDED
#include <p18cxxx.h>
#include <string.h>
#include "mandm.h"
#include "mandm_shared.h"
#include "crit.h"
#include "config.h"

extern volatile struct motortype motordata[MAX_MOTOR];
extern volatile unsigned char RS232_DEBUG,SLOW_STATUS;
extern volatile struct modetype mode;
extern struct V_data V;

extern void wdttime(unsigned long);
extern void slow_timer_start(void);

int motor_control(motortype*);
BYTE emotor_power(BYTE,BYTE);
BYTE emotor_relays(void);
BYTE emotor_cw(BYTE,BYTE);
BYTE emotor_is_all_off(void);
BYTE emotor_v24(BYTE);
BYTE relay_v24(void);
void emotor_power_off(void);
void emotor_power_on(void);
void emotor_switch_ccw(void);
void emotor_slow_start(void);
void emotor_slow_stop(void);
void blink_led(BYTE, BYTE);
BYTE is_led_blinking(BYTE);
int my_struct_cmp(const motortype*, const motortype*);

#endif /* POWER_H_INCLUDED */