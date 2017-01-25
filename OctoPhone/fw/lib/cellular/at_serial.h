/*
 * at_serial.h
 *
 *  Created on: 14.01.2017
 *      Author: beat
 */

#ifndef FW_LIB_CELLULAR_AT_SERIAL_H_
#define FW_LIB_CELLULAR_AT_SERIAL_H_

typedef enum at_serial_state {
	AT_SERIAL_INITIALIZED,
	AT_SERIAL_READY
} AT_SERIAL_STATE;

typedef struct at_serial_handle {
	AT_SERIAL_STATE state;
	uint8_t *rx_buffer;
	size_t rx_buffer_size;
}at_serial_handle;

at_serial_handle* at_serial_init(size_t rx_buffer_size, uint16_t timeout, uint16_t baud_rate, uint16_t uart_port);
void at_serial_close(at_serial_handle *handle_p);
int at_serial_begin(at_serial_handle *handle_p);

int at_serial_send_command(at_serial_handle *passed_handle_p, char* command, char* response, int16_t *parameters, uint8_t num_parameters, uint16_t delay_ms);
#endif /* FW_LIB_CELLULAR_AT_SERIAL_H_ */
