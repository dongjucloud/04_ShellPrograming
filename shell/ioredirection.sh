#!/bin/bash

# : << EOF
for LINE in $(cat input.txt)
do
    echo $LINE ; read
done
# EOF

# : << EOF
cat input.txt | while read LINE ORDER LINE
do
    echo $NUM $ORDER $LINE
done
# EOF