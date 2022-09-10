#!/bin/bash

# for pos in $*; do
#     if [ "$pos" = "help" ]; then
#         echo $pos
#     fi
# done
#  sh 处理参数.sh help1 help   sh 处理参数.sh help1
while [ $# -ge 1 ]; do
    if [ "$1" = "help" ]; then
        echo $1
    fi
    shift
done
