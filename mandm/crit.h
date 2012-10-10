#ifndef CRIT_H_INCLUDED
#define CRIT_H_INCLUDED
#include <p18cxxx.h>
#include "mandm_defs.h"
#include <timers.h>
#include <EEP.h>

volatile void s_crit(unsigned char);
volatile void e_crit(void);
volatile void clear_crit(void);
void write_data_eeprom(unsigned char, unsigned char, unsigned int, unsigned int);
unsigned char read_data_eeprom(unsigned int, unsigned int);

extern unsigned char CRITC, HCRIT[CRIT_8], LCRIT[CRIT_8];
extern volatile unsigned long critc_count;
extern volatile unsigned char critc_level;
extern volatile unsigned char IDLEFLAG;

extern void idle_loop(void);

#endif /* CRIT_H_INCLUDED */

