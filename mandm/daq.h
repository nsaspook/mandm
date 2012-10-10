#ifndef DAQ_H_INCLUDED
#define DAQ_H_INCLUDED
#include <adc.h>
#include <delays.h>
#include <usart.h>
#include <stdio.h>
#include "mandm.h"
#include "mandm_shared.h"
#include "crit.h"

void ADC_zero(void);
void ADC_read(void);
void zero_amploc(void); // set sensor ADC zero value
void do_sim(void);
void Reset_Change_Count(void);  // the motor adc change counter
BYTE Change_Count(void);        // check for ADC readings being stable.

extern const rom char adcg0[], adcg1[], adcg2[], adcg3[], adcg4[], zero0[], zero1[], zero2[], zero3[];
extern unsigned long Vin, rawp[MAX_POT], vbatol_t, solar_t;
extern unsigned char adc_cal[];
extern volatile unsigned char C2RAW, PRIPOWEROK, KEYNUM,SYSTEM_STABLE;
extern int a10_x, a10_y, a10_z;
extern struct R_data R;
extern struct C_data C;
extern volatile struct modetype mode;

extern volatile enum answer_t {
    WAIT_M, YES_M, NO_M
} YNKEY;
extern far char bootstr2[MESG_W + 1];
extern volatile struct motortype motordata[MAX_MOTOR], *motor_ptr;

extern long ABSL(long);
extern int ABSI(int);
extern float lp_filter(float, int, int);
extern void do_sim(void);
extern void display_system(void);
extern void wdtdelay(unsigned long);
extern void wdttime(unsigned long);
extern void term_time(void);
extern BYTE checktime_eep(unsigned long, BYTE);


#endif /* DAQ_H_INCLUDED */