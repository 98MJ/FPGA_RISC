#define FND_DIGIT *(volatile unsigned int*) XPAR_FNDCONTROLLER_0_S00_AXI_BASEADDR

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"


int main()
{
    init_platform();

    FND_DIGIT = 1234;

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}