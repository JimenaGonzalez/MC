#!/bin/bash
#se define el radio del circulo
radio=$1
#Llamada a gnuplot desde un script
gnuplot<<EOF
#la grafica se muestra en la terminal
set term dumb
set parametric
#se define el rango para cada variable
set xrange [-2:2]
set yrange [-2:2]
#oculta la medida de los ejes
unset tics
#oculta la funcion que se grafica
unset key
#Oculta los bordes de la gráfica
unset border
#Se define este tamaño para que el circulo no salga ovalado
set size ratio 0.5
#grafica del circulo
plot [0:2*pi] cos(t)*$radio, sin(t)*$radio
EOF
