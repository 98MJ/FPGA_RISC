#ifndef SRC_DRIVER_BUTTON_BUTTON_H_
#define SRC_DRIVER_BUTTON_BUTTON_H_

typedef struct {
    /* data */
    GPIO_N
} GPIO_TypeDef;


typedef enum {PUSHED=0, RELEASED, NO_ACT, ACT_PUSHED, ACT_RELEASED} button_state_t;

typedef struct {
    GPIO_TypeDef *GPIOx;
    uint16_t GPIO_Pin;
    int prebState;
} button_t;

void button_init();
button_state_t button_getState(button_t *button);

#endif /* SRC_DRIVER_BUTTON_BUTTON_H_ */
