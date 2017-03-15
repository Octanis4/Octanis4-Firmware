/*
 * display_task.c
 *
 *  Created on: 14.12.2016
 *      Author: beat
 */


#include <ti/sysbios/knl/Task.h>

/*
 *  ======== Display task Fcn ========
 *  Update menu buttons
 *  Place characters received from system task on app canvas
 */
Void display_task(UArg arg0, UArg arg1)
{
    while (1) {
        Task_sleep((UInt)arg0);
    }
}
