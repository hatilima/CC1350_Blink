/*
 *  ======== hello.c ========
 */

/* XDC Module Headers */
#include <xdc/std.h>
#include <xdc/runtime/System.h>

/* BIOS Module Headers */
#include <ti/sysbios/BIOS.h>

//#include <ti/drivers/Board.h>
#include <ti/drivers/PIN.h>
#include <ti/drivers/GPIO.h>
#include "Board.h"

/*
 *  ======== main ========
 */


/* TI-RTOS Header files */

#include <ti/sysbios/knl/Task.h>



void myDelay(int count);

/* Could be anything, like computing primes */
#define FakeBlockingSlowWork()   myDelay(1200000)
#define FakeBlockingFastWork()   myDelay(2000000)

Task_Struct workTask;
/* Make sure we have nice 8-byte alignment on the stack to avoid wasting memory */
#pragma DATA_ALIGN(workTaskStack, 8)
#define STACKSIZE 1024
static uint8_t workTaskStack[STACKSIZE];



void workTaskFunc(UArg arg0, UArg arg1)
{
    while (1)
    {
        GPIO_toggle(Board_GPIO_LED0);
        myDelay(2400000);
    }
}

/*
 *  ======== main ========
 *
 */
int main(void)
{
    Board_init();
    GPIO_init();


    /* Set up the led task */
    Task_Params workTaskParams;
    Task_Params_init(&workTaskParams);
    workTaskParams.stackSize = STACKSIZE;
    workTaskParams.priority = 2;
    workTaskParams.stack = &workTaskStack;

    Task_construct(&workTask, workTaskFunc, &workTaskParams, NULL);

    /* Start kernel. */
    BIOS_start();

    return (0);
}

/*
 *  ======== myDelay ========
 *  Assembly function to delay. Decrements the count until it is zero
 *  The exact duration depends on the processor speed.
 */
__asm("    .sect \".text:myDelay\"\n"
      "    .clink\n"
      "    .thumbfunc myDelay\n"
      "    .thumb\n"
      "    .global myDelay\n"
      "myDelay:\n"
      "    subs r0, #1\n"
      "    bne.n myDelay\n"
      "    bx lr\n");
