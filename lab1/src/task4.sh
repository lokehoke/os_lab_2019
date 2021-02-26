#!/bin/bash

for (( a = 0; a < 150; a++ ))
do
    echo $RANDOM
done > numbers.txt

./average.sh `cat numbers.txt`

