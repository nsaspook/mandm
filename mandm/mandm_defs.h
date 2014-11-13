#ifndef MANDM_DEFS_H_INCLUDED
#define MANDM_DEFS_H_INCLUDED

//#define HOUSE_DEMO
/* Program operation parameters */
#define MANDM_VERSION 	"    MANDM  03.4B FB  "                 // version text header
#define	MAGIC			0x0034  			// data version checkmark
#define	START1			"MCHP, F. Brooks 2014   "	// first LCD message
#define SIMULA			" \x1b[7m RUNNING IN SIMULATION MODE \x1b[0m "
#define	PIC_8722		8722
#define CHECKMARK		0x59		// EEPROM checkmark
#define CHECKMARK_CRC	0x59595959ul		// 32 bit crc checkmark

#define	TIMEROFFSET		26474           // timer0 16bit counter value for 1 second to overflow
#define	TIMER3REG		3048            // timer3 value for 20Hz clock
#define LOW		(unsigned char)0        // digital output state levels, sink
#define	HIGH            (unsigned char)1        // digital output state levels, source
#define	ON		LOW       		//
#define OFF		HIGH			//
#define	S_ON            LOW       		// low select/on for chip/led
#define S_OFF           HIGH			// high deselect/off chip/led
#define	R_ON            HIGH       		// control relay states, relay is on when output gate is high, uln2803,omron relays need the CPU at 5.5vdc to drive 
#define R_OFF           LOW			// control relay states
#define R_ALL_OFF       0x00
#define R_ALL_ON	0xff
#define NO		LOW
#define YES		HIGH
#define MOK             0
#define MERR_ERR        1
#define MERR_INT        2
#define MERR_INV        3
#define MERR_STOP       4
#if defined(__18CXX)
#define NULL0           (unsigned char)0
#endif
#define SHIFT1          1
#define SHIFT2          2
#define SHIFT4          4
#define SHIFT6          5
#define SHIFT7          7
#define SHIFT8          8
#define SHIFT9          9
#define SHIFT16         16
#define SHIFT24         24
#define SHIFT30         30
#define	ERR1		1
#define	ERR2		2
#define	XON		0x11
#define	XOFF            0x13
#define	H		1
#define	L		2
#define	HL		3

/* LCD defines */
#define LCD_L           4                       // lines
#define LCD_W           20			// chars per line
#define LCD_STR         22                 // char string for LCD messages
#define MESG_W          250			// message string buffer
#define	LL1		0x00                    // LCD line addresses
#define	LL2		0x40
#define LL3		0x14
#define	LL4		0x54
#define	VC_MAX		3u
#define VS_SLOTS	12u                      // storage array size
#define	VC0		0u			// LCD Virtual Screens
#define	VC1		4u
#define	VC2		8u
#define VS0		0u			// Virtual screen select
#define VS1		1u
#define VS2		2u
#define	DS0		0u			// LCD line index
#define	DS1		1u
#define	DS2		2u
#define	DS3		3u
#define	DS4		4u
#define	DS5		5u
/* DIO defines */

#define LOW_VECTOR      0x18                // ISR low address
#define HIGH_VECTOR     0x8                 // ISR high address

#define LEDS            LATC
#define	LED_0		LATCbits.LATC0      // HIGH is ON
#define	MENU_LED	0                   // for BLINK function
#define	LED_1		LATCbits.LATC1
#define	TEST_LED	1
#define LED_2 		LATCbits.LATC2
#define MOTOR_LED 	2
#define LED_3 		LATCbits.LATC3
#define EMO_LED 	3
#define	LED_4		LATCbits.LATC4
#define	LED_5		LATCbits.LATC5
#define LED_6 		LATCbits.LATC6
#define LED_7 		LATCbits.LATC7

#define QFORWARD        PORTFbits.RF4
#define FINPUT_4        PORTFbits.RF4
#define QHOME           PORTFbits.RF5
#define FINPUT_5        PORTFbits.RF5
#define QBACK           PORTFbits.RF6
#define FINPUT_6        PORTFbits.RF6
#define QEI1_B        	PORTFbits.RF7       // channel B from the QEI encoder
#define FINPUT_7        PORTFbits.RF7

#define	DLED_0		LATJbits.LATJ0      // LOW is ON
#define	DLED_1		LATJbits.LATJ1
#define DLED_2 		LATJbits.LATJ2
#define DLED_3 		LATJbits.LATJ3      // motor QEI is moving
#define DLED_4		LATJbits.LATJ4      // knob 1 moving
#define DLED_5		LATJbits.LATJ5      // knob 2 moving
#define DLED_6		LATJbits.LATJ6
#define DLED_7 		LATJbits.LATJ7

#define ERELAYS		LATE                // HIGH is on
#define POWER_X		LATEbits.LATE0
#define POWER_Y		LATEbits.LATE1
#define POWER_Z		LATEbits.LATE2
#define POWER_S		LATEbits.LATE3
#define	DIR_X		LATEbits.LATE4
#define	DIR_Y		LATEbits.LATE5
#define	DIR_Z		LATEbits.LATE6
#define	DRIVE_V24	LATEbits.LATE7

#define MPULED		LATHbits.LATH0
#define VOICE1     	LATGbits.LATG3
#define VOICE1_TRIS	TRISGbits.TRISG3
#define VOICE2     	LATGbits.LATG4
#define VOICE2_TRIS	TRISGbits.TRISG4
#define ALARMOUT	LATGbits.LATG0

#define DIPSW		PORTD
#define	DIPSW1		PORTDbits.RD0
#define	DIPSW2		PORTDbits.RD1
#define	DIPSW3		PORTDbits.RD2
#define	DIPSW4		PORTDbits.RD3
#define	DIPSW5		PORTDbits.RD4
#define	DIPSW6		PORTDbits.RD5
#define	DIPSW7		PORTDbits.RD6
#define	DIPSW8		PORTDbits.RD7

#define PB0        	PORTBbits.RB0	// switch1
#define PB1        	PORTBbits.RB1	// switch2
#define PB2        	PORTBbits.RB2	// switch3
#define QEI1_A		PORTBbits.RB3	// motor QEI A channel input
#define	ENC_A1		PORTBbits.RB4	// quad encoder input 1 a,b
#define	ENC_B1		PORTBbits.RB5
#define	ENC_A2		PORTBbits.RB6	// quad encoder input 2 a,b
#define	ENC_B2		PORTBbits.RB7

#define QENC1BITS	0b00110000	// PORTB 4..5
#define QENC2BITS	0b11000000	// PORTB 6..7
#define VIISION_M       0u               // VIISION man motors
#define E220E500_M      1u               // E220/E500 man motors
#define GSD_M           2u               // ACCELLIS man motors
#define VIISION_MS	3u		// Viision Mass-slit
#define E220E500_E	4u		// E220 QEI encoder
#define V810_MS		5u		// vista 810 mass-slit
#define VARIAN_V	6u		// Varian Vacuum Valves
#define HELP_M          7u		// default disconnect code
#define EVIISION_M      8u               // VIISION man motors
#define EE220E500_M     9u               // E220/E500 man motors
#define EGSD_M          10u              // ACCELLIS man motors
#define VISTA4  	11u		// Viision Mass-slit
#define VISTA5  	12u		//
#define EV810_MS  	13u		//
#define V810_M  	14u		//
#define EHELP_M         15u		// default disconnect code
#define XAXIS           0
#define YAXIS           1
#define ZAXIS           2
#define TAXIS           3
#define XM_BIT          0b00000001
#define YM_BIT          0b00000010
#define ZM_BIT          0b00000100
#define XD_BIT          0b00010000
#define YD_BIT          0b00100000
#define ZD_BIT          0b01000000
#define ALL_OFF_BITS    0b00000000u
#define ALL_MOTOR_BITS  0b00000111
#define ALL_CW_BITS     0b01110000
#define HIGH_DRIVE_24   0b10000000
#define LOW_DRIVE_5     0b01111111
#define COOL_ON		320             //	start cooling
#define COOL_OFF	240             //	stop cooling
#define	COOL_MAX	1000		//	invalid temp (I hope)
#define	BLINK_RATE	20000
#define	BATRUN 		15       			//
#define	BATRUNF		5       			// faster delay
#define RELAYRUNF       1               // relay wait time
#define RELAYRUN	6
#define	TIMEOFF		60      	// seconds in 1 min
#define	WORKSEC		10      	// run every this time seconds
#define DISPSEC		600		//
#define EEP_UPDATE	99999l
#define MAX_MENU        17u               // max number of menu items to select.
#define MAX_HELP        2u               // max number of help screens per menu.
#define MENU_ACTION     8u              // knob movement timer value
#define MOTOR_ACTION    4u               // knob movement timer value
#define SELECT_ACTION	25u		// selection delay
#define MENU_BAND       35l             // movement travel counts for menu actions 40, higher means less sensitive to movement
#define MOTOR_BAND      1l             	// movement travel counts for motor actions 4
#define POT_BAND_RATIO	8l		// Scaling factor
#define POT_BAND_MAX_P  10l             // fastest cw pot travel
#define POT_BAND_MAX_N  -10l            // fastest ccw pot travel
#define POT_MAX_CHANGE  100             // if the change in readback between ADC reads is this or greater, it's a possible error
#define POT_M_OFFSET	500		// offset mean
#define POT_H_OFFSET	999             // offset high fail limit
#define POT_L_OFFSET	1               // offset low fail limit
#define POT_MIN_SPAN    200             // if the change in readback between ADC reads is this or less, it's a possible error
#define MAX_MOTOR       3u               // number of motors to control
#define MAX_POT         3u               // number of axis that pots will control
#define MAX_EMO         3u               // number of putton presses to stop all motors
#define KNOBTICKS       4u               // a knob  Qenc is stopped if not change after this many low ints
#define QEITICKS        10u              // a motor Qenc is stopped ... 20
#define QEI_FAST        300l            // error counts above this are in high speed 24vdc mode
#define QEI_VERY_FAST	400l		// same as above but with no slowing resistor
#define EMO_BAND	30				// knob2 2 band movement to reset motor emo button
#define TRACK_DB_L      -10             // deadband limits LOW
#define TRACK_DB_H      10              // deadband limits HIGH
#define TRACK_DB_L_S    -25             // deadband limits LOW SLOW
#define TRACK_DB_H_S    25              // deadband limits HIGH SLOW
#define TRACK_TIMEOUT   2000l           // tracking motor movment timeout
#define TRACK_DISPLAY	225				// display info below this error count(normally)
#define DEADB_STOP      1.0
#define DEADB_RUN       1.5
#define DEADB_KNOB      5.0
#define DEADB_HUNT      0.3
#define HUNT_LOW        1
#define HUNT_HIGH       2
#define HUNT_MAX        4
#define SCALED          999
#define SCALED_FLOAT    999.9
#define ACTUAL          1023			// adc counts
#define MAX_IDLE        6000l           // idle user interface countup limit, sets mode.idle to TRUE
#define CHANGE_COUNT    20            	// number of ADC updates before the R.change_ variable are updated
#define	MIN_CHANGE	10l					// ADC counts change between stable checks
#define MAX_MOTOR_CURRENT_H	200l
#define MAX_MOTOR_CURRENT_L	300l
#define MENU_SPEED	10


/* Calibration results benchmarks */
#define VIISION_M_CHANGE    30
#define VIISION_M_SPAN      250       // lowest good span count during cal
#define VIISION_M_OFFSET_H    300
#define VIISION_M_OFFSET_L    10

#define VIISION_MS_CHANGE    60
#define VIISION_MS_SPAN      480       // lowest good span count during cal
#define VIISION_MS_OFFSET_H    400
#define VIISION_MS_OFFSET_L    35
#define VIISION_MS_CAL		999

#define V810_MS_CHANGE    35
#define V810_MS_SPAN      360       // lowest good span count during cal
#define V810_MS_OFFSET_H    400
#define V810_MS_OFFSET_L    10
#define V810_MS_CAL	    500

#define E220E500_M_SPAN_Y      150  	// lowest good span count during cal
// some units might need a 3 turn instead of a 10 turn pot for the correct span.

#define E_MOTOR_NULL_P  -1
#define E_MOTOR_NONE    -2
#define E_MOTOR_EMO     -3
#define E_MOTOR_AXIS    -4

/* ADC scaling defines */
#define AMP300_ZERO	521u            // dc offset for amploc amp300 sensor raw bit count
#define AMP300_MAX	2380ul          // Vo at max current n/a
#define AMP300_SEN	8ul             // mV/A
#define AMP50_ZERO	510ul           // dc offset for amploc amp50 sensor raw bit count
#define AMP50_MAX	11400ul         // Vo at max current n/a
#define AMP50_SEN	23ul            // mV/A
#define AMP50c_ZERO	510u            // dc offset for amploc amp50 sensor raw bit count
#define AMP50c_MAX	11400ul         // Vo at max current n/a
#define AMP50c_SEN	23ul            // mV/A
#define AMP10_ZERO	510u            // dc offset for honeywell 100A CSLT6B100 sensor raw bit count
#define AMP10_MAX	5000ul          // Vo at max current n/a
#define AMP10_SEN_H	550u            // mV/A for 20 wraps
#define AMP10_SEN_L	120u            // mV/A for 9 wraps
#define	AMPZ		2               // ADC value less that this is still zero.
/*	ADC gain offsets	mV per bit step defines */
#define ADC0_MV 	490             // 5vdc monitor
#define ADC1_MV 	2350            // 24 vdc monitor (relay contact)
#define ADC2_MV 	488
#define ADC3_MV 	488
#define ADC4_MV 	488
#define ADC5_MV 	488
#define ADC6_MV 	488
#define ADC7_MV 	488
#define ADC8_MV 	488		// Ground REF connection
#define	ADC_SLOTS	15		// 14 ADC data slots + 1 checksum at the end
#define ADC_INDEX	10		// max adc gain array select number
#define ADC_NULL	127             // zero offset value
/* The number of samples must be high to sample several complete PWM cycles to get stable voltage and current measurements at lower ranges. */
#define ADC_SAMP_F	16
#define ADC_SAMP_S	64
#define ADC_CHAN_DELAY	100		// delay in 10X chip cycles after switching ADC channels

#define	LPCHANC		8               // digital filter channels
#define LP_CURRENT_X	0               // current X
#define LP_CURRENT_Y	1               // current Y
#define LP_CURRENT_Z    2               // current Z
#define LP_FB_X         3               // tracking feedback channels
#define LP_FB_Y         4
#define LP_FB_Z         5

//      TEK410x defines
#define	ESC	0x1b
#define	FF	0x0c
#define	CAN	0x18
#define	FS	0x1c
#define	GS	0x1d
#define	US	0x1f
#define	ESCZ	0x1a

#define MAXALM		7u		// alarm message buffer size
#define	MAX_TWEAK_CMD	4u      		// number of T tweak command choices
#define LCDW_SIZE       21              // add term char
#define FT20		20              // default value for fast ticks
#define SD_18		18
#define C_TEMP16	16		// temp string buffer size
#define C_TEMP7		7		// float string buffer size
#define SDT1            1
#define SDT2            2               // SD card types
#define SDT6            6
#define CRIT_8          8               // 8 levels
#define CRITC1          1               // The first CRITC level
#define MAXSECONDS      315576000ul     // 10 years

#endif /* MANDM_DEFS_H_INCLUDED */
