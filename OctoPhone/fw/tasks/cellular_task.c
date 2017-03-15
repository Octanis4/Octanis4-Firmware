/*
 *  cellular_task.c
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */


#include <ti/sysbios/knl/Task.h>

//continuous background task reading incoming messages and ring and request responses

//if no incoming message or task result awaiting, send next request in queue

/*
 *  ======== Cellular task Fcn ========
 *  Open serial connection to AT module
 *  Read incomming data (responses, unrequested responses)
 */
Void cellular_task(UArg arg0, UArg arg1)
{
    while (1) {
        Task_sleep((UInt)arg0);
    }
}
