#!/bin/bash
printf "Cantidad de planetas incluidos en el catálogo: "
x=$(wc -l kepler.csv | sed 's/kepler.csv//g') #Cantidad de líneas en archivo
x=$((x-1)) #Quito la línea del encabezado
printf "$x \n"

#Ignoro casillas vacias, y la del encabezado.
#Verífico la condición de la masa del planeta, el resultado lo guardo en un archivo csv.
awk -F "," '{if ($2!="" && $1 !="NAME") print $1,",",$2}' kepler.csv | awk -F "," '{if ($2<0.01) print $1,",",$2}' > y.csv

printf "Cantidad de planetas con masa menor a una centésima de la masa de Júpiter: "
wc -l y.csv | sed 's/y.csv//g' # A la línea le quite el nombre del archivo

awk -F "," '{print $1}' y.csv #Nombres de los planetas que satisfacen la condición

#Elimino archivos innecesarios
rm y.csv

printf "EL planeta con el menor periodo orbital es: "
#Ignore el encabezado y cree un nuevo archivo csv que en la 1 columna tiene el periodo y en la 2 el nombre:
awk -F "," '{if ($1!="NAME") print $6","$1}' kepler.csv | sort x.csv | awk -F "," '{print $2}' | head -1





