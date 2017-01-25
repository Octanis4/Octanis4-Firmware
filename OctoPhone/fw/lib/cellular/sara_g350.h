/*
 * sara_g350.h
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */

#ifndef FW_LIB_CELLULAR_SARA_G350_H_
#define FW_LIB_CELLULAR_SARA_G350_H_

#include "cellular.h"

int sara_g350_open(); //returns 0 if modem responds with OK, <0 otherwise
int sara_g350_close();
void sara_g350_close_force();

int sara_g350_read_sms(int index, char* buffer);
int sara_g350_send_sms(char* number, char* buffer);

int sara_g350_call_number(char* number);
int sara_g350_call_contact(const struct cellular_contact* contact);
int sara_g350_hang_up();

int sara_g350_get_signal_strength();

int sara_g350_enter_pin(char pin[4]);
int sara_g350_enter_puk(char puk[8]);
int sara_g350_change_pin(char old_pin[4], char new_pin[4]);

#endif /* FW_LIB_CELLULAR_SARA_G350_H_ */
