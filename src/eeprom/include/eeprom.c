/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-08 22:25:23
 * @LastEditTime: 2021-04-08 22:34:26
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/eeprom/include/eeprom.c
 * @LICENSE: NONE
 */
#include "../../../include/STC89xx.h"
#include "./eeprom.h"
// 读
#define read_cmd 0x01
// 写
#define wirte_cmd 0x02
// 擦
#define erase_cmd 0x03
// 等待计时
#define enable_waitTime 0x82

// 关闭ISP_IAP
void ISP_IAP_disable(void)
{
    EA = 1;
    ISP_CONTR = 0x00;
    ISP_CMD = 0x00;
    ISP_TRIG = 0x00;
}

// 触发
void ISP_API_trigger(void)
{
    EA = 0;
    ISP_TRIG = 0x46;
    ISP_TRIG = 0xB9;
}

// 读取数据
void ISP_API_readData(unsigned int beginAddr, unsigned char *pBuf, unsigned int dataSize)
{
    ISP_DATA = 0;
    ISP_CMD = read_cmd;
    ISP_CONTR = enable_waitTime;
    while (dataSize--)
    {
        ISP_ADDRH = (unsigned char)(beginAddr >> 8);
        ISP_ADDRL = (unsigned char)(beginAddr & 0x00FF);
        ISP_IAP_trigger();
        beginAddr++;
        *pBuf++ = ISP_DATA;
    }
    ISP_IAP_dsiable();
}

// 写数据
void ISP_IAP_writeData(unsigned int beignAddr, unsigned char *pDat, unsigned int dataSize)
{
    ISP_CONTR = enable_waitTime;
    ISP_CMD = wirte_cmd;
    while (dataSize--)
    {
        ISP_ADDRH = (unsigned char)(beignAddr >> 8);
        ISP_ADDRL = (unsigned char)(beignAddr & 0x00FF);
        ISP_DATA = *pDat++;
        beignAddr++;
        ISP_IAP_trigger();
    }
    ISP_IAP_dsiable();
}

// 扇区擦除
void ISP_IAP_sectorErase(unsigned int sectorAddr)
{
    ISP_CONTR = enable_waitTime;
    ISP_CMD = erase_cmd;
    ISP_ADDRH = (unsigned char)(sectorAddr >> 8);
    ISP_ADDRH = (unsigned char)(sectorAddr & 0x00FF);
    ISP_IAP_trigger();
    ISP_IAP_disable();
}