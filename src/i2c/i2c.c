#include "../../include/STC89xx.h"

SBIT(SDA, _P0, 0);
SBIT(SCL, _P0, 1);

void Delay_I2C(int);

int main()
{
  return 0;
}

void StartI2C(void)
{
  // 首先将SCL SDA 复位一下
  SCL = 0;
  SDA = 1;
  // 然后开始 发送起始信号
  // 现将SCL拉高
  SCL = 1;
  // 拉高等待一些时间以后
  Delay_I2C(2);
  // 将SDA拉低
  SDA = 0;
  // SDA拉低等待一些时间以后
  Delay_I2C(2);
  // 拉低SCL
  SCL = 0;
}

void StopI2C(void)
{
  // 首先SCL SDA复位
  SCL = 0;
  SDA = 0;

  // 然后开始发送 结束信号
  // 拉高SCL
  SCL = 1;
  // 等待一段时间
  Delay_I2C(2);
  // 拉高SDA
  SDA = 1;
}

int WriteI2C(unsigned char data)
{
  int ack;
  unsigned char mask;
  for (mask = 0x80; mask != 0; mask >>= 1)
  {
    if ((mask & data) == 0)
    {
      SDA = 0;
    }
    else
    {
      SDA = 1;
    }

    Delay_I2C(2);
    SCL = 1;
    Delay_I2C(2);
    SCL = 0;
  }
  SDA = 1;
  Delay_I2C(2);
  SCL = 1;
  ack = SDA;
  Delay_I2C(2);
  SDA = 0;
  return ack;
}

// 读操作
unsigned char RdACK_I2C(void)
{
  unsigned char mask;
  unsigned char data;
  // 复位
  SDA = 1;
  // 0x1000 0000
  for (mask = 0x80; mask != 0; mask >>= 1)
  {
    Delay_I2C(2);
    SCL = 1;
    // 如果SDA当前位置为0
    if (SDA == 0)
    {
      // ~1000 0000 = 0111 1111
      // 为0时,data对应的位清零
      data &= ~mask;
    }
    else
    {
      // 有一个是1就是1
      data |= mask;
    }
    Delay_I2C(2);
    SCL = 0;
  }
  SDA = 0;
  Delay_I2C(2);
  // 第九位,不在读取后续数据
  SCL = 1;
  Delay_I2C(2);
  // 结束通信
  SCL = 0;
  return data;
}

// 发送非应答信号
//
unsigned char NoRdACK_I2C(void)
{
  unsigned char mask;
  unsigned char data;

  SDA = 1;

  for (mask = 0x80; mask != 0; mask >>= 1)
  {
    Delay_I2C(2);
    if (SDA == 0)
    {
      data &= ~mask;
    }
    else
    {
      data |= mask;
    }
    Delay_I2C(2);
    SCL = 0;
  }
  // 和上面不同的地方在于此，拉高SDA发送非应答信号
  SDA = 1;
  Delay_I2C(2);
  SCL = 1;
  Delay_I2C(2);
  SCL = 0;
  return data;
}
