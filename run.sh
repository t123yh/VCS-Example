#!/bin/bash

# 切换到输出目录
cd sim

# 运行仿真程序，5us 后自动退出
./simv +vcs+finish+5us
