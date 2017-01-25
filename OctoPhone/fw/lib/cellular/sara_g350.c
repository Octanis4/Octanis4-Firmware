/*
 * sara_g350.c
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */

#include "../../../Board.h"

#include <ti/sysbios/knl/Task.h>
#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART.h>

#include <string.h>
#include <stdlib.h>

#include "sara_g350.h"
#include "at_serial.h"

#define SARA_G350_BAUD_RATE 9600
#define SARA_G350_READ_TIMEOUT 3000
#define SARA_G350_RXBUFFER_SIZE 100

at_serial_handle *atserial = NULL;
static uint8_t sara_g350_locked = 0;

int sara_g350_open(){
	if(sara_g350_locked)
		return CELLULAR_RETURN_BUSY;
	if(atserial != NULL)
		return CELLULAR_RETURN_ERROR_DEVICE_ALREADY_OPEN;
	atserial = at_serial_init(SARA_G350_RXBUFFER_SIZE, SARA_G350_READ_TIMEOUT, SARA_G350_BAUD_RATE, Board_UART_GPRS);
	if(atserial == NULL)
		return CELLULAR_RETURN_ERROR_INIT_FAILED;
	if(at_serial_begin(atserial))
		return CELLULAR_RETURN_ERROR_START_FAILED;
	return CELLULAR_RETURN_OK;
}

int sara_g350_read_sms(int index, char* buffer){
	//make sure no one else is using
	if(atserial == NULL || atserial->state != AT_SERIAL_READY)
		return CELLULAR_RETURN_ERROR_DEVICE_NOT_READY;
	if(sara_g350_locked)
		return CELLULAR_RETURN_BUSY;
	sara_g350_locked = 1;

//AT+CMGR (text mode)

	sara_g350_locked = 0;
	return 0;
}

int sara_g350_send_sms(char* number, char* buffer){
	//make sure no one else is using
	int16_t send_result;
	if(atserial == NULL || atserial->state != AT_SERIAL_READY)
		return CELLULAR_RETURN_ERROR_DEVICE_NOT_READY;
	if(sara_g350_locked)
		return CELLULAR_RETURN_BUSY;
	sara_g350_locked = 1;

	if(number == NULL || buffer == NULL)
		return CELLULAR_RETURN_BAD_ARGUMENTS;

	//allocate memory
	char* local_buffer = (char*)malloc(sizeof(char)*(strlen(buffer)+12+strlen(number)));
	if(local_buffer == NULL)
		return CELLULAR_RETURN_ERROR_MEMORY;

	at_serial_send_command(atserial, "AT+CMGF=1", "", NULL, 0, 0);
	strcpy(local_buffer, "AT+CMGS=\"");
	strcat(local_buffer, number);
	strcat(local_buffer, "\"\r");
	strcat(local_buffer, buffer);
	strcat(local_buffer, "\032"); //<Ctrl-Z>
	at_serial_send_command(atserial, local_buffer, "+CMGS:", &send_result, 1, 300);

	free(local_buffer);

	sara_g350_locked = 0;
	return 0;
}

int sara_g350_close(){
	if(sara_g350_locked)
		return CELLULAR_RETURN_BUSY;
	at_serial_close(atserial);
	atserial = NULL;
	return 0;
}

void sara_g350_close_force(){
	sara_g350_locked = 0;
	at_serial_close(atserial);
	atserial = NULL;
}
