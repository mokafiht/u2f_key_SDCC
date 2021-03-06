/*
 * Copyright (c) 2016, Conor Patrick
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 *
 * main.c
 * 		This file contains the main loop of the application.
 * 		It listens for messages on USB and upon receiving a message,
 * 		it will pass it up to the U2F HID layer, implemented in u2f_hid.c.
 *
 */
#include <SI_EFM8UB1_Defs.h>
#include <SI_EFM8UB1_Register_Enums.h>

#include "InitDevice.h"
#include "u2f_hid.h"
#include "app.h"
#include "i2c.h"
#include "bsp.h"
#include "atecc508a.h"
#include "eeprom.h"
//#include "bsp.h"
#include "custom.h"
#include "u2f.h"
#include "tests.h"

__data struct APP_DATA appdata;

uint8_t error;
uint8_t state;
uint32_t winkc;
//SI_VARIABLE_SEGMENT_POINTER(hid_msg, struct u2f_hid_msg, MEM_MODEL_SEG)
struct u2f_hid_msg * hid_msg;

void init(struct APP_DATA* ap)
{

	u2f_hid_init();
	smb_init();
	atecc_idle();

	U2F_BUTTON_VAL = 1;
	state = APP_NOTHING;
	error = ERROR_NOTHING;
}

void set_app_error(APP_ERROR_CODE ec)
{
	error = ec;
}

uint8_t get_app_error()
{
	return error;
}

uint8_t get_app_state()
{
	return state;
}

void set_app_state(APP_STATE s)
{
	state = s;
}

void app_wink(uint32_t c)
{
#ifdef U2F_SUPPORT_WINK
	winkc = c;
	set_app_state(APP_WINK);
#endif
}

void set_app_u2f_hid_msg(struct u2f_hid_msg * msg ){
	state = APP_HID_MSG;
	hid_msg = msg;
}


// We may need to replace ~PWM__ENABLED by PWM__DISABLED
void rgb(uint8_t r, uint8_t g, uint8_t b)
{

	if (r)
	{
		PCA0CPM2 |= PCA0CPM2_PWM__ENABLED;
		//LED_R(r);
	}
	else
	{
		PCA0CPM2 &= ~PCA0CPM2_PWM__ENABLED;
	}

	if (b)
	{
		PCA0CPM0 |= PCA0CPM0_PWM__ENABLED;
		//LED_B(b);
	}
	else
	{
		PCA0CPM0 &= ~PCA0CPM0_PWM__ENABLED;
	}

	if (g)
	{
		PCA0CPM1 |= PCA0CPM1_PWM__ENABLED;
		//LED_G(g);
	}
	else
	{
		PCA0CPM1 &= ~PCA0CPM1_PWM__ENABLED;
	}

}


#define ms_since(ms,num) (((uint16_t)get_ms() - (ms)) >= num ? ((ms=(uint16_t)get_ms())):0)

int16_t main(void) {

	uint16_t ms_heart;
	uint16_t ms_wink;
	uint16_t ms_grad;
	uint8_t winks = 0, light = 1, grad_dir = 0;
	int8_t grad_inc = 0;
	int8_t ii;
	uint16_t i;
	uint8_t * clear = 0;


	enter_DefaultMode_from_RESET();
	//rgb_hex(0); Turn off LED

	// ~200 ms interval watchdog
	//WDTCN = 0x04;

	//watchdog();
	WDTCN = 0xA5;
	init(&appdata);
	// Enable interrupts
	IE_EA = 1;
	//watchdog();
	WDTCN = 0xA5;

	u2f_prints("U2F ZERO\r\n");
	if (RSTSRC & RSTSRC_WDTRSF__SET)
	{
		error = ERROR_DAMN_WATCHDOG;
	}

	run_tests();
	atecc_setup_init(appdata.tmp);
	 while (1)
 	{
	long int i = 0;
	watchdog();

		if (!USBD_EpIsBusy(EP1OUT) && !USBD_EpIsBusy(EP1IN) && state != APP_HID_MSG)
		{
			USBD_Read(EP1OUT, hidmsgbuf, sizeof(hidmsgbuf), true);
		}
		u2f_hid_check_timeouts();

		switch(state)
		{
			case APP_NOTHING:
				// Flash gradient on LED
				if (ms_since(ms_grad, 150))
				{
					if (light == 16)
					{
						grad_dir = 0;
					}
					else if (light == 1)
					{
						grad_dir = 1;
					}
					if (grad_dir)
						if (U2F_BUTTON_IS_PRESSED())
							rgb(0,0,light++);
						else
							rgb(0,light++,0);
					else
						if (U2F_BUTTON_IS_PRESSED())
							rgb(0,0,light--);
						else
							rgb(0,light--,0);
				}
				break;
			case APP_HID_MSG:
				// HID msg received, pass to protocols
				if (custom_command(hid_msg))
				{

				}
				else
				{
					atecc_setup_device(hid_msg);
				}

				if (state == APP_HID_MSG)
					state = APP_NOTHING;
				break;
#ifdef U2F_SUPPORT_WINK
			case APP_WINK:
				// Do wink pattern for USB HID wink request
				rgb_hex(winkc);
				light = 1;
				ms_wink = get_ms();
				state = _APP_WINK;
				break;
			case _APP_WINK:

				if (ms_since(ms_wink,150))
				{
					if (light)
					{
						light = 0;
						rgb_hex(winkc);
					}
					else
					{
						light = 1;
						rgb_hex(0);
					}
					winks++;
				}
				if (winks == 5)
				{
					winks = 0;
					state = APP_NOTHING;
				}
				break;
#endif
		}
		if (error)
		{
			u2f_printx("error: ", 1, (uint16_t)error);
#ifdef U2F_BLINK_ERRORS
			for (ii=0; ii < 8; ii++)
			{
				if (error & (1<<ii))
				{
					rgb_hex(U2F_DEFAULT_COLOR_INPUT_SUCCESS);
				}
				else
				{
					rgb_hex(U2F_DEFAULT_COLOR_ERROR);
				}
				u2f_delay(400);
				rgb_hex(0);
				u2f_delay(100);

			}
#else
			rgb_hex(U2F_DEFAULT_COLOR_ERROR);
			// wipe ram
			for (i=0; i<0x400;i++)
			{
				*(clear++) = 0x0;
				watchdog();
			}
#endif
			error = 0;
			while(!ms_since(ms_heart,500))
			{
				watchdog();
			}
		}


 //****************************** My testing ************ /
		P0 = 0x40;
		for(i=0;i<2000;i++){
		}
		P0 = 0x00;
		i = 0;
		for(i=0;i<2000;i++){
		}
		WDTCN = 0xA5;
 //*******************************************************
 	}
	//return 0;
}


