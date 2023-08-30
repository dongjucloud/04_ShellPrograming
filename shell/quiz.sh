#!/bin/bash
# 강의평가
# 1. 강의 환경에 만족하나요? (0 ~ 100)
# 2. 강의 내용에 만족하나요? (0 ~ 100)
# 3. 강의 자원에 만족하나요? (0 ~ 100)

# functions.sh import
. /root/shell/functions.sh
# Variable Definition
RESULT=/root/shell/result.txt
> $RESULT
NUM=0

# Code Definition
NUM=1
MESS="강의 환경에 만족하나요?"
EvalLecture "$NUM" "$MESS"

NUM=2
MESS="강의 내용에 만족하나요?"
EvalLecture "$NUM" "$MESS"

NUM=3
MESS="강의 지원에 만족하나요?"
EvalLecture "$NUM" "$MESS"

echo
read ; cat $RESULT