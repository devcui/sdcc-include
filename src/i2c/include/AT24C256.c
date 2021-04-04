/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:12:01
 * @LastEditTime: 2021-04-04 22:09:53
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/AT24C256.c
 * @LICENSE: NONE
 */
#include "./AT24C256.h"
#include "./I2C.h"

void WrByte_AT24C256(unsigned int addr, unsigned char dat)
{
    // 第一步START信号
    Start_I2C();
    // 写入设备地址 0b1010 0000 = 0xA0
    Wr_I2C(0xA0);
    // 写入高位地址,传入16位地址
    Wr_I2C(addr >> 8);
    // 写入低位地址,由于一次只能写入8位，所以前8位直接被过掉了
    Wr_I2C(addr);
    // 写入数据
    Wr_I2C(dat);
    // 最后一步STOP信号
    Stop_I2C();
}

unsigned char RdByte_AT24C256(unsigned int addr)
{
    unsigned char dat;
    // 开始信号
    Start_I2C();
    Wr_I2C(0xA0);
    Wr_I2C(addr >> 8);
    Wr_I2C(addr);
    // 开始信号
    Start_I2C();
    // 1010 0000 -> 1010 0001 = 0xA1
    Wr_I2C(0xA1);
    //  从addr读取数据发送非应答信号
    dat = RdACK_I2C(1);
    // 结束信号
    Stop_I2C();
    return dat;
}

void WrStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len)
{
    // 检测上一次是否写完了，如果越页了，那么继续写
    while (len > 0)
    {
        // 循环检测元器件应答信号
        while (1)
        {
            Start_I2C();
            // 如果ack === 0 跳出,进行下面的写入
            if (0 == Wr_I2C(0xA0))
            {
                // 跳出循环
                break;
            }
            // 否则结束
            Stop_I2C();
        }
        // 高位
        Wr_I2C(addr >> 8);
        // 低位
        Wr_I2C(addr);
        // 开始写
        while (len > 0)
        {
            // 写一个字节，指针指向下一个自负
            Wr_I2C(*str++);
            // 长度--
            len--;
            // 存储地址+1
            addr++;
            // 是否达到了下一页
            if (0 == (addr % 64))
            {
                // 上一个字节到本页的边界
                // 跳出停止继续写
                break;
            }
        }
        Stop_I2C();
    }
}

void RdStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len)
{
    // 循环检测ack是否为1
    while (1)
    {
        Start_I2C();
        // 如果为0跳出进行读取
        if (0 == Wr_I2C(0xA0))
        {
            break;
        }
        Stop_I2C();
    }
    // 高低位
    Wr_I2C(addr >> 8);
    Wr_I2C(addr);
    // 第二个Start信号
    Start_I2C();
    // 现在是读
    Wr_I2C(0xA1);
    // 如果长度大于1
    while (len > 1)
    {
        // 读取，应答为0
        *str++ = RdACK_I2C(0);
        // 长度-1
        len--;
    }
    // 如果长度没了那么读取无应答
    *str = RdACK_I2C(1);
    // 结束读取
    Stop_I2C();
}