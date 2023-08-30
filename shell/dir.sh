#!/bin/bash

echo -n "enter your filename?: "
read FILE1

#echo $FILE1
if [ -f $FILE1 ] ; then
    echo " [ ok ] "
elif [ -d $FILE1 ] ; then
    echo " [ nk ] "
else
    echo " [FAIL] "
    exit 1
fi