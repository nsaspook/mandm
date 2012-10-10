/*
 * This is the high and low ISR vector interface dependency header
 */
//FIXME there is way too much stuff in globals

#ifndef MANDM_VECTOR_H_INCLUDED
#define MANDM_VECTOR_H_INCLUDED
#include <p18cxxx.h>
#include "mandm.h"
#include "mandm_shared.h"
#include "config.h"
#include "power.h"
#include <usart.h>
#include <timers.h>

void tick_handler(void);
void work_handler(void);
void idle_loop(void);
void P1wait(void);
void P2wait(void);
void Clear_All_Buttons(void);
void buzzer_ticks(unsigned char);
void voice1_ticks(unsigned char);
void voice2_ticks(unsigned char);
void slow_timer_start(void);

/* BEGIN HIGH ISR */

extern volatile unsigned char TIMERFLAG,SYSTEM_STABLE, COOLING,
        almctr, WORKERFLAG, DISPLAY_MODE, dsi, C2RAW, FAILSAFE, SYS_HELP, SYS_DATA,
        HOLD_PROC, RESET_ZEROS, SET_ADC, TWEAK, KEYNUM, SET_BATT, D_UPDATE,SLOW_STATUS;
extern volatile unsigned char GLITCH_CHECK, cdelay, knob_to_pot;
extern volatile long slow_timer;

extern struct C_data C;
extern struct V_data V;
extern volatile struct knobtype knob1, knob2;
extern volatile struct qeitype qei1;
extern volatile struct buttontype button;
extern volatile struct modetype mode;
extern volatile struct QuadEncoderType OldEncoder;

extern volatile enum movement_t {
    CW, STOP, CCW
} movement;

extern volatile enum answer_t {
    WAIT_M, YES_M, NO_M
} YNKEY;

/* BEGIN IDLE_LOOP EXTRAS */
extern volatile unsigned char IDLEFLAG;

/* END IDLE_LOOP EXTRAS */
#endif /* MANDM_VECTOR_H_INCLUDED */

