#!/bin/bash
if [ $UID = 0 ]; then
    echo " root user "
else
    echo " $UID user "
fi
