#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED
#include <p18cxxx.h>
#include <string.h>
#include "mandm.h"
#include "mandm_shared.h"
#include "crit.h"
#include "mandm_defs.h"
#include "power.h"
#include <usart.h>

void init_motordata(BYTE);

extern volatile struct modetype mode;
extern volatile struct motortype motordata[MAX_MOTOR];
extern volatile struct knobtype knob2;
extern volatile struct qeitype qei1;
extern struct V_data V;
extern void term_time(void);
#endif /* CONFIG_H_INCLUDED */