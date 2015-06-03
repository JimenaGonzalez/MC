#!/bin/bash
printf "###########################################\n"
figlet StarDate
printf "###########################################\n"
figlet $1

grep $1 worldhistory.tsv | awk -F "\t" '{print $2}'

printf "###########################################\n"
printf "LOOK AT THE FOLLOWING STARS: \n"

inicio=$((2015-$1))
final=$(($inicio+1))

printf "Ra , DEC , HIP \n" > u.txt

awk -F "," '{print $10","$8","$9","$2}' hyg.csv >> r.csv

awk -v inicio=$((2015-$1)) -v final=$(($inicio+1)) '{if($1>= inicio && $1< final) print $2","$3","$4}' r.csv >> u.csv #| head '-5' >> u.csv

#awk -F "\t" '{print $0}' u.csv > l.csv
head u.csv

awk '{print $1" "$2" "$3}' u.csv > k.csv
head k.csv

head u.csv

#head '-5' u.csv
#cat u.txt
#grep 8362 u.txt
