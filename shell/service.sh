#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage; $0<UNIT> start|stop|restart
    exit 1
fi 
SRV=$1
ACTION=$2

 case $ACTION in
    start|restart)
        systemctl enable $SRV >/dev/null 2>&1
        if [ $? -eq 0 ] ; then
            echo "[  OK  ] $SRV enabled."
        else
            echo "[ FAIL ] $SRV not enabled."
        fi
        systemctl restart $SRV >/dev/null"
        if [ $? -eq 0 ] ; then
            echo "[  OK  ] $SRV started."
        else
            echo "[ FAIL ] $SRV not started."
        fi
        ;;
    stop)
        systemctl stop $SRV >/dev/null 2>&1
        if [ $? -eq 0 ] ; then
            echo "[ OK ] $SRV stopped."
        else
            echo "[ FAIL ] $SRV not stopped."
        fi
        systemctl disable $SRV >/dev/null 2>&1
        if [ $? -eq 0 ] ; then
            echo "[ OK ] $SRV >/dev/null"
        else
            echo "[ FAIL ] $SRV not started."
        fi
        ;;        
    *) : ;;
esac
