#ifndef HWCONF_H_INCLUDED
#define HWCONF_H_INCLUDED
#include <p18cxxx.h>
#include "mandm.h"
#include <usart.h>
#include <timers.h>
#include <adc.h>
#include <pwm.h>

void config_pic(unsigned int);
void start_pic(unsigned int);
void start_workerthread(void);

extern	volatile unsigned char WDT_TO,EEP_ER;

extern	void ansidraw(int);
#endif /* HWCONF_H_INCLUDED */

