#!/bin/bash

# full64: 指定使用 64 位 VCS
# src/*.v: 所有源代码文件
# -o sim/simv: 输出文件路径
# -fsdb: 输出 fsdb 波形文件需要指定此选项
# -kdb: 生成源代码数据库文件，供 Verdi 显示源代码使用
vcs -full64 src/*.v -o sim/simv -fsdb -kdb
