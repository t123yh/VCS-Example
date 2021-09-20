#!/bin/bash

# 切换到输出目录
cd sim

# 运行仿真程序
# +vcs+finish 选项使仿真在 5us 后自动退出
# +fsdbfile 选项指定导出波形文件的名称为 wave.fsdb
./simv +vcs+finish+5us +fsdbfile+wave.fsdb

