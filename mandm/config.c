#include "config.h"

/* assembly type data configuration */
void init_motordata(uint8_t part) {
    static uint8_t z, old_part = 255;

    if (part == old_part) return;
    old_part = part;
    putrs2USART("\r\n");
    term_time();
    sprintf(bootstr2, "\x1b[7m Init Motor Data. Part %i \x1b[0m\r\n", part);
    puts2USART(bootstr2);
    // setup motor configs
    mode.v24 = FALSE;
    mode.free = TRUE;
    mode.operate = part;
    mode.display = default_display; // display screen function pointer
    mode.on_off_only = FALSE;
    mode.info_only = FALSE;
    mode.qei = FALSE;
    mode.change=FALSE;
    s_crit(HL); // stop ISR from updating
    emotor_power_off(); // turn off the power first
    for (z = 0; z < MAX_MOTOR; z++) { // default motor setups
        motordata[z].type = part;
        motordata[z].run = TRUE;
        motordata[z].cw = TRUE;
        motordata[z].axis = z;
        motordata[z].hunt_count = 0;
        motordata[z].free = TRUE;
        motordata[z].slow = FALSE;
        motordata[z].slow_only = FALSE;
        motordata[z].active = TRUE;
        motordata[z].reversed = FALSE;
        motordata[z].v24 = FALSE;
        motordata[z].cal_pos = 500;
        motordata[z].pot.pos_set = 512; // mid range
        motordata[z].pot.pos_actual = rawp[z]; // set to current pot reading
        motordata[z].pot.scaled_set = 500; // mid range
        motordata[z].pot.pos_actual_prev = rawp[z];
        motordata[z].pot.movement = STOP; // no motion
        motordata[z].pot.pos_change = 0; // pot position change mag
        motordata[z].pot.low = 1023; // init limit detection values
        motordata[z].pot.high = 0; // ditto
        motordata[z].pot.cal_low = FALSE;
        motordata[z].pot.cal_high = FALSE;
        motordata[z].pot.cal_failed = TRUE;
        motordata[z].pot.limit_change = POT_MAX_CHANGE;
        motordata[z].pot.limit_span = POT_MIN_SPAN;
        motordata[z].pot.limit_offset = POT_MAX_OFFSET;
    }

    if (part == E220E500_E) {
        term_time();
        mode.display = e220_qei_display;
        putrs2USART("\x1b[7m Init E220E500 QEI MOTOR. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].slow = FALSE;
            motordata[z].slow_only = FALSE;
            motordata[z].active = FALSE;
            motordata[z].reversed = FALSE;
            motordata[z].v24 = FALSE;
        }
        motordata[0].active = TRUE; // X motor for assy position
        mode.qei = TRUE;
        qei1.c = 0; // set motor and set knob to zero counts
        knob2.c = 0;
        V.qei_counts = 0;
        V.pwm4int_count = 0;
    }

    if (part == V810_MS) {
        term_time();
        mode.display = v810_ms_display;
        putrs2USART("\x1b[7m Init VISTA MASS SLIT. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].slow = FALSE;
            motordata[z].slow_only = FALSE;
            motordata[z].active = FALSE;
            motordata[z].reversed = FALSE;
            motordata[z].v24 = FALSE;
            motordata[z].cal_pos = V810_MS_CAL;
            motordata[z].pot.limit_change = V810_MS_CHANGE;
            motordata[z].pot.limit_span = V810_MS_SPAN;
            motordata[z].pot.limit_offset = V810_MS_OFFSET_H;
        }
        motordata[0].active = TRUE; // x motor for SLIT position
    }

    if (part == VIISION_M) {
        term_time();
        mode.display = viision_m_display;
        putrs2USART("\x1b[7m Init VIISION MANIPULATOR. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].pot.limit_change = VIISION_M_CHANGE;
            motordata[z].pot.limit_span = VIISION_M_SPAN;
            motordata[z].pot.limit_offset = VIISION_M_OFFSET_H;
        }
        motordata[1].active = FALSE; // no Y motor
        motordata[0].v24 = TRUE;
        motordata[2].v24 = TRUE;
    }

    if (part == E220E500_M) {
        term_time();
        mode.display = e220_m_display;
        putrs2USART("\x1b[7m Init E220E500 MANIPULATOR. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].slow = FALSE;
        }
        motordata[1].pot.limit_span = E220E500_M_SPAN_Y; // Y motor special span setting
    }

    if (part == GSD_M) {
        term_time();
        mode.display = gsd_m_display;
        putrs2USART("\x1b[7m Init GSD MANIPULATOR. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].slow = TRUE;
            motordata[z].slow_only = TRUE;
            motordata[z].v24 = TRUE;
            motordata[z].active = FALSE;
        }
        motordata[0].active = TRUE; // X motor for ALL positions
    }

    if (part == HELP_M) {
        term_time();
        mode.display = help_m_display;
        putrs2USART("\x1b[7m Help Menu. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].active = TRUE;
        }
        mode.info_only = TRUE;
    }

    if (part == VIISION_MS) {
        term_time();
        mode.display = viision_ms_display;
        putrs2USART("\x1b[7m Init VIISION MASS SLIT. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].slow = FALSE;
            motordata[z].slow_only = FALSE;
            motordata[z].active = FALSE;
            motordata[z].reversed = TRUE;
            motordata[z].v24 = TRUE;
            motordata[z].cal_pos = VIISION_MS_CAL;
            motordata[z].pot.limit_change = VIISION_MS_CHANGE;
            motordata[z].pot.limit_span = VIISION_MS_SPAN;
            motordata[z].pot.limit_offset = VIISION_MS_OFFSET_H;
        }
        motordata[1].active = TRUE; // Y motor for SLIT position
    }

    if (part == VARIAN_V) { // Open SW on Z pot, Closed SW on X POT, Y POT is not used
        term_time();
        mode.display = varian_v_display;
        putrs2USART("\x1b[7m Init VARIAN TYPE VALVE. \x1b[0m\r\n");
        for (z = 0; z < MAX_MOTOR; z++) {
            motordata[z].active = FALSE;
            motordata[z].v24 = TRUE;
            motordata[z].slow = FALSE;
        }
        motordata[1].active = TRUE; // Y motor for VALVE position
        mode.on_off_only = TRUE;
    }

    e_crit(); // after last command
}

