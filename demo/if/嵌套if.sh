#!/bin/bash
if [ $UID = 0 ]; then
    echo " root user "
elif [ $UID = 501 ]; then
    if [ -x /Users/wzyan/Documents/selfspace/kkb-down/demo/if/index.sh ]; then
        $(pwd)/index.sh
    elif
        echo " wangzy user error $(pwd)"
    fi
elif
    if [ $(pwd) = "/Users/wzyan/Documents/selfspace/kkb-down/demo/if" ]; then
        echo " wangzy user  path"
    elif
        echo " wangzy user error $(pwd)"
    fi
fi
