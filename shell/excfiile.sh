#!/bin/bash

echo -n " ENter your file name : "
read CMD

# echo $CMD
if [ -x "$CND" ] ; then
    $CND
else
    echo " [FAIL] "
    exit 1
fi