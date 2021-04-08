/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-08 22:19:28
 * @LastEditTime: 2021-04-08 22:34:36
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/eeprom/include/eeprom.h
 * @LICENSE: NONE
 */
#ifndef __EEPROM_H__
#define __EEPROM_H__
// 关闭ISP_IAP
extern void ISP_IAP_disable(void);
// 触发
extern void ISP_IAP_trigger(void);
// 读取数据
extern void ISP_IAP_readData(unsigned int beginAddr, unsigned char *pBuf, unsigned int dataSize);
// 写数据
extern void ISP_IAP_writeData(unsigned int beignAddr, unsigned char *pDat, unsigned int dataSize);
// 扇区擦除
extern void ISP_IAP_sectorErase(unsigned int sectorAddr);
#endif