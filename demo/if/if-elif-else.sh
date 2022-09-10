#!/bin/bash
if [ $UID = 0 ]; then
    echo " root user "
elif [ $UID = 501 ]; then
    echo " wangzy user "
else
    echo " $UID user "
fi
