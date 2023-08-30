#!/bin/bash

EvalLecture() {
NUMBER=$1
MESSAGE=$2   

ON=no
while [ "$ON" = 'no' ]
do
    echo
    echo -n "$NUMBER. $MESSAGE (0점 ~ 100점): "
    read POINT
    echo
    echo "당신이 선택한 점수: $POINT" 

    echo -n "입력하신 점수가 맞나요? (yse/no):? "
    read POINTYES
    case $POINTYES in
    yes|YES|Yes|y|Y) 
        ON=yes
        echo "$NUMBER:  $POINT" >> $RESULT  
        ;;
    no|NO|No|n|N)  ON=no  ;;
    *) echo "잘못 입력했습니다. yse or no 만 입력해 주세요. "
        ON=no ;;
    esac
done

function print_good () {
    echo -e "\x1B[01;32m[+]\x1B[0m $1"
}

function print_error () {
    echo -e "\x1B[01;31m[-]\x1B[0m $1"
}

function print_info () {
    echo -e "\x1B[01;34m[*]\x1B[0m $1"
}

}