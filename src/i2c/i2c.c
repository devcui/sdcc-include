#include "../../include/STC89xx.h"



SBIT(SDA,_P0,0);
SBIT(SCL,_P0,1);

void Delay_I2C(int);

int main(){
  return 0;
}

void StartI2C(void){
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

void StopI2C(void){
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


int WriteI2C(unsigned char data){
  int ack;
  unsigned char mask;
  for(mask = 0x80;mask!=0;mask >>= 1){
   if((mask & data)==0){
     SDA = 0;
   }else{
     SDA = 1;
   }

   Delay_I2C(2);
   SCL = 1;
   Delay_I2C(2);
   SCL = 0;
  }
  SDA = 1;
  Delay_I2C(2);
  SCL =1;
  ack = SDA;
  Delay_I2C(2);
  SDA =0;
  return ack; 
}
