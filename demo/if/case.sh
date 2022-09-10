#!/bin/bash
case "$1" in
"start" | "restart")
    echo $0 starting...
    ;;
"stop")
    echo $0 stoping...
    ;;
*)
    echo "$0 传参错误 {start|stop|restart|reload}"
    ;;
esac
