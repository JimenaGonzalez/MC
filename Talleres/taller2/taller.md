#Primer punto

'''
#!/bin/bash
head -1 lottery.csv
awk -F "," '{if($1==201316426) print $2}' lottery.csv
'''

#Segundo punto
'''
+ sed 's/\.//g' pgn.dat
+ sed -E 's/,([0-9])/.\1/g' pgn.dat
+ sed -E 's/ ([0-9])/\t\1/g' | sed -E 's/ ,\(/\t\(/g'
+ sed -E 's/\)//g'
+ sed -E 's/\(/-/g'
+ sed 's/\.//g' pgn.dat | sed -E 's/,([0-9])/.\1/g' | sed -E 's/ ([0-9])/\t\1/g' | sed -E 's/ ,\(/\t\(/g' | sed -E 's/\)//g' | sed -E 's/\(/\t-/g' > pgn.tsv
'''

prinft "EL sector con menor cambio porcentual es:"
sort --field-separator=$'\t' -n --key=4 pgn.tsv | head -1

#3 punto
 sed 's/,//g' jupiter.txt | sed -E 's/\(.*\)//g'| sed -E 's/^ *//g'| sed 's/ * /,/g' | sed -E 's/(\d)R/\1/g' > datos.csv

En gnuplot: 

plot "datos.csv" using 3:4

