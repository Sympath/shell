#!/bin/bash
# 解决相对路径问题 执行脚本前先进入脚本所在的目录
cd $(dirname $0)
basename=`basename $0`
testShFile=${basename%.test*}.sh
source "../functions/${testShFile}"

includesResult=(`includes a_b _`) # 0
echo $includesResult

result=(`split a_b _`)
echo ${result[@]}
# 执行完成后切换会上一次目录 相当于 `cd OLDPWD`
# if $isTrue; then
#    echo '存在includes'
# fi
cd -