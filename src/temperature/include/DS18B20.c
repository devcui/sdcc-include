/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-30 15:52:42
 * @LastEditTime: 2021-03-31 09:58:43
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/include/DS18B20.c
 * @LICENSE: NONE
 */

#include "./DS18B20.h"
#include "../../../include/STC89xx.h"
#include "../../../include/mcs51/compiler.h"

SBIT(DS18B20, _P3, 7);

void DelayT_10us(unsigned char count)
{
    while (count--)
    {
        _nop_();
        _nop_();
        _nop_();
        _nop_();
        _nop_();

        _nop_();
        _nop_();
        _nop_();
        _nop_();
        _nop_();
    }
}

void InitDS18B20(void)
{
    // 拉低
    DS18B20 = 0;
    // 持续600us
    DelayT_10us(60);
    // 拉高
    DS18B20 = 1;
    // 持续60us
    DelayT_10us(6);
    // 直到DS18B20高阻抗被拉高
    while (DS18B20 != 1)
        ;
    // 持续60us
    DelayT_10us(6);
}

void WrByte_18B20(unsigned char dat)
{
    unsigned char flag;
    for (int j = 1; j <= 8; j++)
    {
        // 拿到数据位
        flag = dat & 0x01;
        // 右移1位
        dat >>= 1;
        // 拉低
        DS18B20 = 0;
        // >1us
        _nop_();
        _nop_();
        // 给数据位
        DS18B20 = flag;
        // 延时60us
        DelayT_10us(60);
        // 写入完成后拉高
        DS18B20 = 1;
    }
}

unsigned char RdByte_18B20(void)
{
    unsigned char data, flag;
    for (unsigned char j = 1; j <= 8; j++)
    {
        // 主机将DS18B20拉低
        DS18B20 = 0;
        // 延时2us
        _nop_();
        _nop_();
        // 主机将DS18B20拉高
        // 这里和温度计并无关系，是RYMCU 51单片机设计
        // 读取数据时需要拉高
        DS18B20 = 1;
        // 延时2us
        _nop_();
        _nop_();
        // 回到正常时序图，读取数据给flag
        flag = DS18B20;
        // 延时60us结束周期
        DelayT_10us(6);
        // 读出的值最低位在前面
        data = (data >> 1) | (flag << 7)
    }
    return data;
}
