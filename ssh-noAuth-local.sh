#!/bin/sh
# 本地SSH设置远程服务器别名

# 读取配置文件
# 方法1 sed
# id=`sed '/^ID=/!d;s/.*=//' config`
# ip=`sed '/^IP=/!d;s/.*=//' config`
# 方法2 while语句赋值的操作 这个要注意配置文件的结尾一定要多个空行
while read line;do
    eval "$line"
done < ./sh/config
# 方法3 直接生成环境变量
# source config
cat >> ~/.ssh/config << EOF
Host ${host}
  HostName ${ip}
  Port 22
  User root
  IdentityFile ~/.ssh/id_rsa
EOF

cd ~/.ssh
ssh-copy-id -i id_rsa.pub -p 22 root@${ip} << EOF
Lfq12345
EOF
# 设置自动passphrase
ssh-add