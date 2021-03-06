/*****************************************************************************\
Include File: test_harness.h
  Author(s): Mark Beaumont

Description: Definitions and types for test_harness.c

\*****************************************************************************/

#ifndef _TEST_HARNESS_H_
#define _TEST_HARNESS_H_

#include <stdio.h>
#include <math.h>
#include "customdefines.h"
#include "types64bit.h"
#include "sdram_delay.h"

#ifdef __XC__
// XC File

// #include "dsp.h"
// #include <xs1.h>
// #include <safestring.h>
// #include <print.h>
// #include "devicedefines.h"
// #include "coeffs.h"

#else //if __XC__
// 'C' File

#endif // else __XC__

#define SAMP_LEN 2048 // No of samples to test

typedef struct TEST_DATA_TAG // Structure containing test data
{
	CHAN_SET_S out_sets[SAMP_LEN][DEF_TAPS]; // Output (Filtered) Samples
	CHAN_SET_S inp_set[SAMP_LEN]; // Input Samples
	CNTRL_S cntrl_dsp_s; // Structure containing data to control SDRAM buffering
	S32_T dbg; // Debug flag
} TEST_DATA_S;

#endif /* ifndef _TEST_HARNESS_H_ */
// test_harness.h
