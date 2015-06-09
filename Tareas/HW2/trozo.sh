#!/bin/bash
#se guarda en una variable el texto
a=`cat "$3"`
#se define la posición de inicio, -1 porque la posicion de los caracteres inicia en 0
i=$(($1-1))
#cantidad de letras que le siguen a la posición inicial
f=$(($2 - $1 +1))
#imprime los f caracteres que están después de la posición $1
echo ${a:$i:$f}
