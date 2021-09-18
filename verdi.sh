#!/bin/bash

# 切换到仿真目录
cd sim

# -elab simv.daidir/kdb: 指定之前输出的源代码数据库
# -top simv: 指定仿真程序
# -ssf ./wave.fsdb: 指定波形文件
verdi -elab simv.daidir/kdb -top simv -ssf ./wave.fsdb 

