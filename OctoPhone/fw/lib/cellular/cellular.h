/*
 * cellular.h
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */

#ifndef FW_LIB_CELLULAR_CELLULAR_H_
#define FW_LIB_CELLULAR_CELLULAR_H_

#define SARA_G350

typedef struct cellular_contact {
	int index;
	char* name;
	char* number;
} cellular_contact;

typedef enum cellular_return_code {
    CELLULAR_RETURN_OK = 0,
	CELLULAR_RETURN_BUSY = -1,
	CELLULAR_RETURN_ERROR_INIT_FAILED = -2,
	CELLULAR_RETURN_ERROR_START_FAILED = -3,
	CELLULAR_RETURN_ERROR_DEVICE_ALREADY_OPEN = -4,
	CELLULAR_RETURN_ERROR_DEVICE_NOT_READY = -5,
	CELLULAR_RETURN_ERROR_MEMORY = -6,
	CELLULAR_RETURN_BAD_ARGUMENTS = -7,
	CELLULAR_RETURN_ERROR_UNKNOWN = -100
} cellular_return_code;

#include "sara_g350.h"
#include "sim800.h"

#endif /* FW_LIB_CELLULAR_CELLULAR_H_ */
