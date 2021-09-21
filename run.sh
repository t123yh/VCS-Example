#!/bin/bash

# 切换到输出目录
cd sim

# 运行仿真程序
# +vcs+finish: 使仿真在 5us 后自动退出
# +fsdbfile: 指定导出波形文件的名称为 wave.fsdb
# -q: 安静模式（减少日志数量）
./simv +vcs+finish+5us +fsdbfile+wave.fsdb -q

