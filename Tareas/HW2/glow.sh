#!/bin/bash
#se define la velocidad angular
((w = 13))
while (true)
do
#limpia la terminal 
clear
#Guarda el segundo actual
t="`date +%S`"
#se calcula argumento del cos
m=`echo "$w*$t" | bc`
#se calcula el radio correspondiente
r=`echo "c($m)*c($m)" | bc -l`
#se llama el script ./circle.sh
sh ./circle.sh $r
#Intervalo de tiempo en el que la terminal descansa
sleep 0.8
done
