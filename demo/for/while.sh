#!/bin/bash
a=1 # 小于10
while [ $a -lt 10 ]; do
    ((a++))
    echo $a
done
