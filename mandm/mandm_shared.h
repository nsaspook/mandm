/* extern variables used in several modules */
#ifndef MANDM_SHARED_H_INCLUDED
#define MANDM_SHARED_H_INCLUDED

#include "mandm.h"

extern volatile struct ccstype CCS;
extern struct R_data R;
extern volatile struct almbuffertype alarm_buffer[MAXALM];
extern volatile struct almtype alarm_codes;
extern volatile uint8_t B0, B1, B2, B3, B4;

#endif /* MANDM_SHARED_H_INCLUDED */
