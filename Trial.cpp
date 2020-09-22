/*
 * Trial.cpp
 *
 *  Created on: Sep 22, 2020
 *      Author: Jasper
 */

#include <Trial.h>

Trial::Trial()
{
    // TODO Auto-generated constructor stub

}

void Trial::blink()
{
    GPIO_toggle(Board_GPIO_LED1);
}

