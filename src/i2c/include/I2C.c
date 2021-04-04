/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-02 11:50:35
 * @LastEditTime: 2021-04-04 21:06:05
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

unsigned char Wr_I2C(unsigned char dat)
{
    // 存储应答位
    unsigned char ack;
    // 探测字节内某一位的掩饰码变量
    unsigned char mask;
    // 高位到低位
    // 0x80 = 0b10000000
    // 0x80 >>1 = 0b0100 0000 = 0x40
    // 0x80 >>2 = 0b0010 0000 = 0x20
    // 0x80 >>7 = 0b0000 0001 = 0x01
    // 0x80 >>8 = 0b0000 0000 = 0x00
    for (mask = 0x80; mask != 0; mask >>= 1)
    {
        // 假设dat = 0b1010 1010
        // 0b1000 0000 & 0b1010 1010 = 0b1000 0000
        // 0b0100 0000 & 0b1010 1010 = 0b0000 0000
        // 0b0010 0000 & 0b1010 1010 = 0b0010 0000
        // 查看当前数据位置上是否为0或者不为0
        if ((mask & dat) == 0)
        {
            SDA_I2C = 0;
        }
        else
        {
            SDA_I2C = 1;
        }
        // 延时
        Delay_I2C();
        // 拉高SCL,准备写数据
        SCL_I2C = 1;
        // 延时
        Delay_I2C();
        // 拉低SCL,一位数据写入完成
        // 进入下一次循环后mask右移,探测第二位继续写入
        SCL_I2C = 0;
    }
    // 主机释放总线
    SDA_I2C = 1;
    Delay_I2C();
    // 准备获取应答位
    SCL_I2C = 1;
    // 获取ack应答位
    ack = SDA_I2C;
    Delay_I2C();
    // 获取应答位结束
    SCL_I2C = 0;
    return ack;
}

// 参数 ack 给0表示SDA拉低，继续读
// 给1表示SDA拉高，不读了
unsigned char RdACK_I2C(unsigned char ack)
{
    unsigned char mask;
    unsigned char dat = 0;
    // 确保主机释放SDA
    SDA_I2C = 1;
    for (mask = 0x80; mask != 0; mask >>= 1)
    {
        // 延时
        Delay_I2C();
        // 拉高SCL准备读取SDA数据
        SCL_I2C = 1;
        if (SDA_I2C == 0)
        {
            // 比如需要读取的数据为0b0101 0101
            // 第一次循环
            // ~mask = ~0b1000 0000 = 0b0111 1111
            // 读取 0
            // 0b0000 0000 & 0b0111 1111 = 0b0000 0000
            // 假如SDA=0 那么 mask反一下当前位为0,其他位为1
            // & 运算符可以让dat保持当前位不变的情况下 将SDA的0 给dat
            dat &= ~mask;
        }
        else
        {
            // 第二次循环
            // mask = 0b0100 0000
            // 读取1
            // 0b0000 0000 | 0b0100 0000 = 0b0100 0000
            // 整体大概意思就是,每次mask向右走一位
            // 假如SDA=1 那么 mask当前位为1，无论dat当前位是否为1
            // | 运算符可以让dat保持不变的情况下将当SDA前位的1 给dat
            dat |= mask;
        }
        // 延时
        Delay_I2C();
        // 拉低SCL完成1位读取
        SCL_I2C = 0;
    }
    // 8位传递完成后，第九位ack，由参数传递
    SDA_I2C = ack;
    // 延时
    Delay_I2C();
    // 拉高SCL准备发送第九位ack
    SCL_I2C = 1;
    // 延时
    Delay_I2C();
    // 发送SDA ack完毕
    SCL_I2C = 0;
    return dat;
}