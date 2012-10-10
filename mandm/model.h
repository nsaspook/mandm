#ifndef MODEL_H_INCLUDED
#define MODEL_H_INCLUDED
#include <p18cxxx.h>
#include "mandm.h"
#include "mandm_shared.h"
#include <usart.h>
#include <stdio.h>

void model_data(void);
unsigned char model_learn(unsigned char); //

extern  far char bootstr2[MESG_W+1];
extern  const rom char modelheader0[],modelheader1[];

extern  unsigned char ChargeBatt(unsigned char, unsigned char, unsigned char);
extern  void noload_soc(unsigned char);
extern  void update_hist(void);
extern  void term_time(void);

#endif /* MODEL_H_INCLUDED */
