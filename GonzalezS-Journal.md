# Primera clase 27-Mayo-2015
Hola mundo, aqui estoy comenzando el curso de **Metodos computacionales**

Herramientas del curso:
+ Git,
+ GitHub,
+ bash,
+ C,
+ Python,

y los métodos a estudiar son:
1. interpolación,
2. analisis de Fourier,
3. Diferenciación e integración numericas,
4. ecuaciones diferenciales ordinarias,
5. ecuaciones diferenciales parciales,
6. y métodos de Monte Carlo.

Instrucciones para git:
area de stagin: git add asdf.md
git status
git commit (enter i y comentario exit : wq (guardar y salir))

#29 de mayo de 2015:
Se escribió un markdown con diferentes formatos. Hice un script que contiene la sintaxis básica de un for en bash,aritmética y redirecciones. 
Aprendí a recuperar antiguas versiones de un archivo usando comandos de git. Con el comando git log recupero los hash de los commits enviados, encuentro el adecuado y usando checkout se recupera el archivo deseado.
Manipular variables que estan en bash:
varbash-->variable bash
awk -v varawk=$varbash

var=$(echo $((1+2)))
echo $var
 
#1 de junio de 2015:
[^0-3] Todos los digitos excepto 0 y 3
para cambiar formato:
sed -E 's/\(.*\)//g' p.txt | sed -E 's/^ *//g' | sed 's/2000 J11/2000-J11/g' | sed 's/ +/,/g' 
gnuplot
help--> Informacion de gnuplot
set term dumb --> la grafica se ve en la terminal
plot x, plot sin(x)
rango plot[0:2*pi]
ventana diferente: set term qt
set title "sin(x)" 
set ylabel "y"
gnuplot> plot sin(x)
sed grid
set parametric
plot cos(t), sin(t)
set size ratio1
unset parametric
grafica 3D: splot x**2  + y**2
Grafica de dispersion: 
lo que limita las columnas son comas: 
set datafile separator ","
using--> columnas a usar
plot "joviansatellites.csv" using 2:3
plot "joviansatellites.csv" using 2:3 with lines
Definir funciones: 
quad(x)= x**2
cube(x)= x**3
plot "joviansatellites.csv" using (cube($2)):(quad($3))

Hands-on 2:
1. '^.... '
2. sed 's/:/\t/g'
3. 
sed 's/<BR>//g' karmona.txt > a.txt
sed 's/<\/center><\/BODY><\/HTML>//g' a.txt >  b.txt
