<!--
 * @Author: devcui
 * @Email: devcui.com
 * @Date: 2021-03-06 21:22:50
 * @LastEditTime: 2021-03-06 21:22:51
 * @LastEditors: devcui
 * @Description: Basic description
 * @FilePath: /led/README.md
 * @LICENSE: NONE
-->


#  依赖
## SDCC

`brew install sdcc`

## STCGAL
- 安装python,获取pip
- `brew install python@3.9`
- 安装stcgal
- `pip3.9 install stcgal --user`


# 刷程序
- 使用sdcc编译程序生成hex
- `sdcc xxx.c`
- 使用stcgal拷贝hex到串口设备中
- `stcgal --help`

