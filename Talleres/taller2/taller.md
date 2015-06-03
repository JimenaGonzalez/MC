#Primer punto
\#!/bin/bash
A = "$RANDOM"
echo $A

#Segundo punto
+ sed 's/\.//g' pgn.dat
+ sed -E 's/,([0-9])/.\1/g' pgn.dat
+ sed -E 's/ ([0-9])/\t\1/g' | sed -E 's/ ,\(/\t\(/g'
+ sed -E 's/\)//g'
+ sed -E 's/\(/-/g'
+ sed 's/\.//g' pgn.dat | sed -E 's/,([0-9])/.\1/g' | sed -E 's/ ([0-9])/\t\1/g' | sed -E 's/ ,\(/\t\(/g' | sed -E 's/\)//g' | sed -E 's/\(/\t-/g' > pgn.tsv

sort --field-separator=$'\t' -n --key=4 pgn.tsv | head -1




