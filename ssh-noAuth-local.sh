#!/bin/sh
# 本地SSH设置远程服务器别名
# 使用方法：sh ./ssh-noAuth-local.sh [别名] [ip] 
# 示例：sh ./ssh-noAuth-local.sh fq 124.223.43.155
host=$1
ip=$2
password=$3
cat >> ~/.ssh/config << EOF
Host ${host}
  HostName ${ip}
  Port 22
  User root
  IdentityFile ~/.ssh/id_rsa
EOF
 Lfq@1781 ssh root@42.192.195.160
cd ~/.ssh
ssh-copy-id -i id_rsa.pub -p 22 root@${ip} << EOF
${password}
EOF
# 设置自动passphrase
ssh-add
