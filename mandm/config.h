#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED
#include <p18cxxx.h>
#include <string.h>
#include <stdio.h>
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
extern far char bootstr2[MESG_W + 1];
extern unsigned long rawp[MAX_POT];
extern void term_time(void);
extern void viision_m_display(void);
extern void help_m_display(void);
extern void viision_ms_display(void);
extern void v810_ms_display(void);
extern void varian_v_display(void);
extern void e220_m_display(void);
extern void e220_qei_display(void);
extern void gsd_m_display(void);
extern void default_display(void);
extern void ADC_read(void);
#endif /* CONFIG_H_INCLUDED */