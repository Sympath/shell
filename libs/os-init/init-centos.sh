#!/bin/bash
# 解决相对路径问题 执行脚本前先进入脚本所在的目录
cd $(dirname $0)
#===== sh远程连接
## 本地如果之前登陆过，需要执行下这个操作 不然登陆会报错
## rm -rf ~/.ssh/known_hosts 

#==== 先更新下源
# yum update -y
# git
if [[  ]]; then
source ../install/git/git.sh
fi

## cat ~/.ssh/id_rsa.pub  这个公钥放在你自己的github上
echo $#
echo $0

#==== node npm（使用nvm） 
source ../install/nvm.sh
