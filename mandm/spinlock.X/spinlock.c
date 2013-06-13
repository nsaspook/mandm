#include <p18cxxx.h>

volatile long A, B;

void main(void)
{
	while (A != B) A = B;

	INTCONbits.GIE = 0;
	A = B;
	INTCONbits.GIE = 1;

}
