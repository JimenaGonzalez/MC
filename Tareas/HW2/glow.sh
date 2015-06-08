#!/bin/bash
((w = 13))
while (true)
do
clear
l="`date +%S`"
m=`echo "$w*$l" | bc`
r=`echo "c($m)*c($m)" | bc -l`
sh ./circle.sh $r
sleep 0.1
done
