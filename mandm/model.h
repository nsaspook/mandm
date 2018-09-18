#ifndef MODEL_H_INCLUDED
#define MODEL_H_INCLUDED
#include <p18cxxx.h>
#include "mandm.h"
#include "mandm_shared.h"
#include <usart.h>
#include <stdio.h>

void model_data(void);
uint8_t model_learn(uint8_t); //

extern far int8_t bootstr2[MESG_W + 1];
extern const rom int8_t modelheader0[], modelheader1[];

uint8_t ChargeBatt(uint8_t, uint8_t, uint8_t);
void noload_soc(uint8_t);
void update_hist(void);
void term_time(void);

#endif /* MODEL_H_INCLUDED */
