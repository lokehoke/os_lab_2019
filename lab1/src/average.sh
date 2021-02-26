#!/bin/bash

i=0;
sum=0;

for d in "$@"
do
    sum=$((sum + d));
    i=$((i + 1));
done

echo "count: $i";

a=$(echo $sum / $i | bc -l);
echo "average: $a";

