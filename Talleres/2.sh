#!/bin/bash
rm x.csv
for i in {1..1000}
do
    y=$((i**2))
    printf "%d,%d\n" $i $y >> x.csv
done
