#!/bin/bash
printf "###########################################\n"
figlet StarDate
printf "###########################################\n"
figlet $1

grep $1 worldhistory.tsv | awk -F "\t" '{print $2}' #Busque el año e imprimi sólo el evento correspondiente

printf "###########################################\n"
printf "LOOK AT THE FOLLOWING STARS: \n"

inicio=$((2015-$1)) #Entre estos valores esta la distancia de las estrellas deseadas
final=$(($inicio+1))

printf "Ra/°            DEC /°          HIP No. \n" 

#Escogi las columnas importantes de hyg.csv y las coloque en otro orden, luego escogi las filas que tienen una distancia que cumple con la condicion, luego seleccione las columnas deseadas de esas filas (solo las tres que se desean en otro orden) y muestro solo las 5 primeras líneas.
awk -F "," '{print $10","$8","$9","$2}' hyg.csv | awk -F "," -v inicio=$((2015-$1)) -v final=$(($inicio+1)) '{if($1> inicio && $1< final) print $2"\t"$3"\t"$4}' | head -5  

printf "###########################################\n"

