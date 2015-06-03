#!/bin/bash
figlet arxiv
printf "=================================================================================================================================================\n"
printf "Searching the arXiv for the new stuff \n"
printf "http://arxiv.org/list/physics/new \n"
printf "=================================================================================================================================================\n"
printf "Keyword: $1 \n"
printf "=================================================================================================================================================\n"

curl -s http://arxiv.org/list/physics/new |
sed 's/Titles/title/g'| #Hice esto para deshacerme de una línea no deseada
grep Title | #Busca las líneas de código con el título del artículo
grep -i $1 | #buscar palabra clave que entra por parámetro
sed 's$<span $$g' | #elimine líneas de código innecesarias
sed 's$class="descriptor">Title:</span>$-$g' > prueba.csv #Guarde la informacion en un archivo csv

printf "Articles found: " 
wc -l prueba.csv | sed 's/prueba.csv//g' #Número de artículos encontrados y le quite texto innecesario: "prueba.csv"

cat prueba.csv

printf "=================================================================================================================================================\n"

rm prueba.csv
