/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_io.h"
#include "xgpio.h"

#define LED_BASEADDR        XPAR_AXI_GPIO_0_BASEADDR   
#define LED_GPIO_DATA       *(volatile u32*)(LED_BASEADDR + 0)  
#define LED_GPIO_MODE       *(volatile u32*)(LED_BASEADDR + 4)  
#define BUTTON_BASEADDR     XPAR_AXI_GPIO_1_BASEADDR
#define BUTTON_GPIO_DATA    *(volatile u32*)(BUTTON_BASEADDR + 0)  
#define BUTTON_GPIO_MODE    *(volatile u32*)(BUTTON_BASEADDR + 4)  

#define CHANNEL_1           1

XGpio ledGpio; // handler
XGpio btnGpio; // handler

int main()
{
    init_platform();

 // hardCoding
 //   LED_GPIO_MODE       = 0x00000000; 
 //   BUTTON_GPIO_MODE    = 0x0000000f;

 // universal function
 //   Xil_Out32((LED_BASEADDR+4), 0x00000000);
 //   Xil_Out32((BUTTON_BASEADDR+4), 0x0000000f);

 // Xilinx 
    XGpio_Initialize(&ledGpio, XPAR_GPIO_0_DEVICE_ID);
    XGpio_Initialize(&btnGpio, XPAR_GPIO_1_DEVICE_ID);
    XGpio_SetDataDirection(&ledGpio, CHANNEL_1, 0x00000000);
    XGpio_SetDataDirection(&btnGpio, CHANNEL_1, 0x0000000f);

    while(1){
        //if(!(BUTTON_GPIO_DATA & (1<<0))){
        //if(!(Xil_In32(BUTTON_BASEADDR) & (1<<0))){
        if(!(XGpio_DiscreteRead(&btnGpio, CHANNEL_1)&(1<<0))){
            //LED_GPIO_DATA = 0x00ff;
            //Xil_Out32((LED_BASEADDR+0), 0x000000ff);
            XGpio_DiscreteWrite(&ledGpio, CHANNEL_1, 0x000000ff);
        } else {
            //LED_GPIO_DATA = 0x0000;
            //Xil_Out32((LED_BASEADDR+0), 0x00000000);
            XGpio_DiscreteWrite(&ledGpio, CHANNEL_1, 0x00000000);
        }
        //if(!(BUTTON_GPIO_DATA & (1<<1))){
        //if(!(Xil_In32(BUTTON_BASEADDR) & (1<<0))){
        if(!(XGpio_DiscreteRead(&btnGpio, CHANNEL_1)&(1<<1))){
            //LED_GPIO_DATA = 0xff00;
            //Xil_Out32((LED_BASEADDR+0), 0x0000ff00);
            XGpio_DiscreteWrite(&ledGpio, CHANNEL_1, 0x0000ff00);
        } else {
            //LED_GPIO_DATA = 0x0000;
            //Xil_Out32((LED_BASEADDR+0), 0x00000000);
            XGpio_DiscreteWrite(&ledGpio, CHANNEL_1, 0x00000000);
        }
        
        
    }
    
    cleanup_platform();
    return 0;
}
