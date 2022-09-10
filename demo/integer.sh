#!/bin/bash
a=1
b=2

# if [ $a = $b ]; then
if [ $a -eq $b ]; then
    echo 'a 等于 b'
elif [ $a -ge $b ]; then
    echo 'a 大于等于 b'
elif [ $a -gt $b ]; then
    echo 'a 大于 b'
elif [ $a -le $b ]; then
    echo 'a 小于等于 b'
elif [ $a -lt $b ]; then
    echo 'a 小于 b'
elif [ $a -ne $b ]; then
    echo 'a 不等于 b'
fi

if [[ $a = $b ]]; then
    echo 'a 等于 b'
    # elif [[ $a >= $b ]]; then
    # echo 'a 大于等于 b'
elif [[ $a > $b ]]; then
    echo 'a 大于 b'
# elif [[ $a <= $b ]]; then
#     echo 'a 小于等于 b'
elif [[ $a < $b ]]; then
    echo 'a 小于 b'
elif [[ $a != $b ]]; then
    echo 'a 不等于 b'
fi
