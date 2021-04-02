/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-02 11:50:35
 * @LastEditTime: 2021-04-02 13:41:07
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/I2C.c
 * @LICENSE: NONE
 */
#include "./I2C.h"
#include "../../../include/STC89xx.h"
#include "../../../include/mcs51/compiler.h"

SBIT(SCL_I2C, _P0, 1); //总线管脚定义
SBIT(SDA_I2C, _P0, 2);

// 模拟延时
void Delay_I2C(void)
{
    NOP();
    NOP();
    NOP();
    NOP();
}

void Start_I2C(void)
{
    // 准备阶段
    SCL_I2C = 0;
    SDA_I2C = 1;
    Delay_I2C();
    SCL_I2C = 1;
    Delay_I2C();
    // 先将SDA拉低
    SDA_I2C = 0;
    Delay_I2C();
    // 再将SCL拉低
    SCL_I2C = 0;
    Delay_I2C();
}

void Stop_I2C(void)
{
    // 准备阶段
    SCL_I2C = 0;
    SDA_I2C = 0;
    Delay_I2C();
    // 拉高SCL
    SCL_I2C = 1;
    Delay_I2C();
    // 拉高SDA
    SDA_I2C = 1;
    Delay_I2C();
    SCL_I2C = 0;
}