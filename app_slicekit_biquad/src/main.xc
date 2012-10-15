/******************************************************************************\
 * File:	main.xc
 *  
 * Description: Top level module for BiQuad filter application, launches all coars
 * for L2 Slice Kit Tile Board with Audio Slice 1v0 
 * Note: This application expects a Audio Slice (1v0) to be connected to a Type 1 Socket on core AUDIO_IO_TILE
 *
 * Version: 0v1
 * Build:
 *
 * The copyrights, all other intellectual and industrial
 * property rights are retained by XMOS and/or its licensors.
 * Terms and conditions covering the use of this code can
 * be found in the Xmos End User License Agreement.
 *
 * Copyright XMOS Ltd 2012
 *
 * In the case where this code is a modification of existing code
 * under a separate license, the separate license terms are shown
 * below. The modifications to the code are still covered by the
 * copyright notice above.
 *
\******************************************************************************/

#include "main.h"

/*****************************************************************************/
int main (void)
{
	streaming chan c_aud_dsp; // Channel between I/O and DSP coar


	par
	{
		on stdcore[AUDIO_IO_TILE]: audio_io( c_aud_dsp ); // Audio I/O coar

		on stdcore[0]: dsp_biquad( c_aud_dsp ); // BiQuad filter coar
	}

	return 0;
} // main
/*****************************************************************************/
// main.xc
