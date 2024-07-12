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
#include "xio.h"
#include "xgpio.h"
#include "xintc.h" // INTC H/W info
#include "xil_exception.h" // 실제 INT 처리 (?)
#include "sleep.h"

#define CH_1   1
#define CH_2   2

XGpio gpio;
XIntc intc;


void ButtonIntrHandler() {
   static int counter = 0;
   xil_printf("%d, button inerttupt routine!\n",counter++);
}

void GpioIntrHandler() {
   static int counter = 0;
   if ((XGpio_DiscreteRead(&gpio, CH_2) & 0x02) != 0) //rising edge, 2번스위치
         {
      xil_printf("%d, gpio interrupt service routine!\n", counter++);
   }
   XGpio_InterruptClear(&gpio, XGPIO_IR_CH2_MASK); // intr clear 필수

}

void intc_init() // 인터럽트 컨트롤러도 H/W --> 주소가 있다. 찾아서 초기화 해줘야함
{
   XIntc_Initialize(&intc, XPAR_AXI_GPIO_0_DEVICE_ID); //H/W info setting



   //exception, interrupt setting
   Xil_ExceptionInit();
   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
         (Xil_ExceptionHandler) XIntc_InterruptHandler, &intc);
   Xil_ExceptionEnable();



   //interrupt ISR Function define
   XIntc_Connect(&intc, XPAR_INTC_0_GPIO_0_VEC_ID,
         (XInterruptHandler) GpioIntrHandler, 0);
   XIntc_Connect(&intc, XPAR_INTC_0_BUTTONDETECTOR_0_VEC_ID,(XInterruptHandler)ButtonIntrHandler,0
         );
   // 구조체 , 벡터id info, (함수호출하는 캐스팅연산)실행할함수이름 , 콜백함수(0 ==> 아무것도 x)



   //interrupt Enable
   XIntc_Enable(&intc, XPAR_INTC_0_GPIO_0_VEC_ID);
   XIntc_Enable(&intc, XPAR_INTC_0_BUTTONDETECTOR_0_VEC_ID);



   //interrupt start
   XIntc_Start(&intc, XIN_REAL_MODE);
}

void gpio_init() {
   XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);
   XGpio_SetDataDirection(&gpio, CH_1, 0x00); // LED
   XGpio_SetDataDirection(&gpio, CH_2, 0x0f); // SW
   XGpio_InterruptGlobalEnable(&gpio); // 모든gpio의 intr을 ON
   XGpio_InterruptEnable(&gpio, XGPIO_IR_CH2_MASK); // SWITCH input

}

int main() {
   init_platform();
   intc_init(); //인터럽트초기화
   gpio_init(); //gpio초기화

   print("Hello World\n\r");
   print("Successfully ran Hello World application");

   int ledCounter = 0;

   while (1) {
      if (ledCounter == 0x0f)
         ledCounter = 0;

      XGpio_DiscreteWrite(&gpio, CH_1, ledCounter++);
      sleep(1);

   }

   cleanup_platform();
   return 0;
}

//
