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
extern far int8_t bootstr2[MESG_W + 1];
extern uint32_t rawp[MAX_POT];
void term_time(void);
void viision_m_display(void);
void help_m_display(void);
void viision_ms_display(void);
void v810_ms_display(void);
void varian_v_display(void);
void e220_m_display(void);
void e220_qei_display(void);
void gsd_m_display(void);
void default_display(void);
void ADC_read(void);
#endif /* CONFIG_H_INCLUDED */