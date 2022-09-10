#!/bin/bash
str1='a'
str2=''
if [ -z $str1 ]; then
    echo 'str1为空字符串'
else
    echo 'str1不为空字符串'
fi

if [ -z $str2 ]; then
    echo 'str2为空字符串'
else
    echo 'str2不为空字符串'
fi
