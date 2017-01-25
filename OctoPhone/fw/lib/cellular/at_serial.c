/*
 * at_serial.c
 *
 *  Created on: 14.01.2017
 *      Author: beat
 */

#include "../../../Board.h"

#include <ti/sysbios/knl/Task.h>

#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART.h>

#include <string.h>
#include <stdlib.h>

#include "at_serial.h"


static const char at_serial_echo_off[] = "ATE0\r\n";
static const char at_serial_ok_response[] = "\r\nOK\r\n";
static const char at_serial_error_response[] = "\r\nERROR";
static const char at_serial_ring_response[] = "\r\nRING\r\n";

typedef struct at_serial_handle_intern {
	AT_SERIAL_STATE state;
	uint8_t *rx_buffer;
	size_t rx_buffer_size;
	UART_Handle uart_handle;
	UART_Params uart_params;
}at_serial_handle_intern;

at_serial_handle* at_serial_init(size_t rx_buffer_size, uint16_t timeout, uint16_t baud_rate, uint16_t uart_port)
{
	//check for minimal buffer size (1 char)
	if(rx_buffer_size <= 0)
		return NULL;

	//allocate memory
	at_serial_handle_intern* handle_p = (at_serial_handle_intern*)malloc(sizeof(at_serial_handle_intern));
	if(handle_p == NULL)
		return NULL;
	//add 1 charachter for eventual null termination
	handle_p->rx_buffer = (uint8_t*)malloc((rx_buffer_size + 1) * sizeof(uint8_t));
	if(handle_p->rx_buffer == NULL)
	{
		free(handle_p);
		return NULL;
	}
	handle_p->rx_buffer_size = rx_buffer_size;

	UART_Params_init(&(handle_p->uart_params));
	handle_p->uart_params.writeDataMode = UART_DATA_BINARY;
	handle_p->uart_params.readDataMode = UART_DATA_BINARY;
	handle_p->uart_params.readReturnMode = UART_RETURN_FULL;
	handle_p->uart_params.readTimeout = timeout;
	handle_p->uart_params.readEcho = UART_ECHO_OFF;
	handle_p->uart_params.baudRate = baud_rate;

	handle_p->uart_handle = UART_open(uart_port, &(handle_p->uart_params));

	if (handle_p->uart_handle == NULL) {
		free(handle_p->rx_buffer);
		free(handle_p);
		return NULL;
	}

	handle_p->state = AT_SERIAL_INITIALIZED;
	return (at_serial_handle*)handle_p;
}

void at_serial_close(at_serial_handle *handle_p)
{
	UART_close(((at_serial_handle_intern*)handle_p)->uart_handle);
	free(handle_p->rx_buffer);
	free(handle_p);
}

int at_serial_decode_response_int(at_serial_handle_intern *handle_p, char *response, int16_t *parameters, uint8_t num_parameters){
	char* parameter_start;
	uint8_t i;

	if(handle_p == NULL || response == NULL || parameters == NULL)
		return -10;

	parameter_start = strstr((char*)handle_p->rx_buffer, response);
	if(parameter_start == NULL)
		return -1;

	parameter_start += strlen(response);

	for(i = 0; i < num_parameters; i++){
		parameters[i] = atoi(parameter_start);
		parameter_start = strstr(parameter_start, ",");
		//check if another parameter exists
		if(parameter_start == NULL)
			return -1;
		//add 1 for comma
		parameter_start += 1;
	}
	return 0;
}

int at_serial_read_response(at_serial_handle_intern *handle_p, int max_length){
	uint16_t i;
	uint8_t ringing = 0;
	int error_cnt = 0, ok_cnt = 0, ring_cnt = 0;

	if(handle_p == NULL)
		return -10;

	max_length = max_length > handle_p->rx_buffer_size ? handle_p->rx_buffer_size : max_length;

	for(i = 0; i < max_length; i++){
		if(UART_read(handle_p->uart_handle, &(handle_p->rx_buffer[i]), 1) <= 0){
			i--;
			max_length--;
		}

		if(handle_p->rx_buffer[i] == at_serial_ok_response[ok_cnt]){
			if(++ok_cnt == sizeof(at_serial_ok_response)){
				//Null termination
				handle_p->rx_buffer[i+1] = '\0';
				if(ringing)
					return 1;
				else
					return 0;
			}
		} else {
			ok_cnt = 0;
		}

		if(handle_p->rx_buffer[i] == at_serial_error_response[error_cnt]){
			if(++error_cnt == sizeof(at_serial_error_response)){
				//Null termination
				handle_p->rx_buffer[i+1] = '\0';
				return -1;
			}
		} else {
			error_cnt = 0;
		}

		if(handle_p->rx_buffer[i] == at_serial_ring_response[ring_cnt]){
			if(++ring_cnt == sizeof(at_serial_ring_response)){
				ringing = 1;
			}
		} else {
			ring_cnt = 0;
		}
	}
	//Null termination
	handle_p->rx_buffer[i+1] = '\0';
	//Other errors occured, probably timeout -> big issues
	return -2;
}

int at_serial_send_command(at_serial_handle *passed_handle_p, char* command, char* response, int16_t *parameters, uint8_t num_parameters, uint16_t delay_ms){
	at_serial_handle_intern *handle_p = (at_serial_handle_intern*)passed_handle_p;
	int return_value = 0;

	//check for null pointers
	if(handle_p == NULL || command == NULL || response == NULL || (num_parameters > 0 && parameters == NULL)){
		return -10;
	}

	//send command
	UART_write(handle_p->uart_handle, command, strlen(command));

	if(delay_ms > 0)
		Task_sleep(delay_ms);

	if((return_value = at_serial_read_response(handle_p, handle_p->rx_buffer_size)) < 0)
		return return_value;

	return at_serial_decode_response_int(handle_p, response, parameters, num_parameters);
}

void at_serial_purge(at_serial_handle *passed_handle_p){
	at_serial_handle_intern *handle_p = (at_serial_handle_intern*)passed_handle_p;
	uint16_t rx_count;

	if(handle_p == NULL){
		return;
	}

	UART_control(handle_p->uart_handle, UART_CMD_GETRXCOUNT, &rx_count);
	if(rx_count > 0)
		UART_read(handle_p->uart_handle, handle_p->rx_buffer, rx_count);
	memset(handle_p->rx_buffer, 0, handle_p->rx_buffer_size);
}

//must be called from within a task - this function will block!
//returns 1 if modem responds with OK
int at_serial_begin(at_serial_handle *passed_handle_p){
	at_serial_handle_intern *handle_p = (at_serial_handle_intern*)passed_handle_p;
	int rx_count;
	int return_value;

	if(handle_p == NULL){
		return -10;
	}

	if(handle_p->state == AT_SERIAL_READY){
		return 0;
	} else if(handle_p->state != AT_SERIAL_INITIALIZED){
		return -2;
	}

	//empty buffer
	UART_control(handle_p->uart_handle, UART_CMD_GETRXCOUNT, &rx_count);
	if(rx_count > 0)
		UART_read(handle_p->uart_handle, handle_p->rx_buffer, rx_count);
	memset(handle_p->rx_buffer, 0, handle_p->rx_buffer_size);

	//Turn echo off
	UART_write(handle_p->uart_handle, at_serial_echo_off, sizeof(at_serial_echo_off));
	//max response: \r\nATE0\r\n\r\nRING\r\n\r\nERROR\r\n -> 25 chars
	if(return_value = at_serial_read_response(handle_p, 25) >= 0){
		handle_p->state = AT_SERIAL_READY;
		return 0;
	}
	return return_value;
}
