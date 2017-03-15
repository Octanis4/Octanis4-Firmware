/*
 * keyboard_task.c
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */


#include <ti/sysbios/knl/Task.h>

/*
 *  ======== Keayboard task Fcn ========
 *  Read keystrokes and send them as message to system task
 */
Void keyboard_task(UArg arg0, UArg arg1)
{
    while (1) {
        Task_sleep((UInt)arg0);
    }
}
