# Primera clase 27-Mayo-2015
Hola mundo, aqui estoy comenzando el curso de **Metodos computacionales**

Herramientas del curso:
+ Git,
+ GitHub,
+ bash,
+ C,
+ y Python.

y los métodos a estudiar son:

1. interpolación,
2. análisis de Fourier,
3. diferenciación e integración numéricas,
4. ecuaciones diferenciales ordinarias,
5. ecuaciones diferenciales parciales,
6. y métodos de Monte Carlo.

## Instrucciones para git:
+ git add archivo.md --> Agrega al área de Staging
+ git status --> Muestra el estado del repositorio
+ git commit (+comentario) --> Se agrega un msj con información de lo que se actualizó.
+ git pushh --> Empuja los documentos, se muestran en internet.
+ git pull --> Baja los documentos de internet (actualiza).
+ git clone --> Clonar un repositorio
+ git add --all --> Eliminar archivo.s

#29 de mayo de 2015:
Se escribió un markdown con diferentes formatos. Hice un script que contiene la sintaxis básica de un for en bash, aritmética (con dobles parentesis) y redirecciones. 
Aprendí a recuperar antiguas versiones de un archivo usando comandos de git. Con el comando git log recupero los hash de los commits enviados, encuentro el adecuado y usando checkout se recupera el archivo deseado.

Para manipular variables que estan en bash: varbash --> variable bash (conversión a awk)
```
awk -v varawk=$varbash
var=$(echo $((1+2)))
echo $var
```

#1 de junio de 2015:
## Expresiones regulares: 
Una expresión regular es una secuencia de caracteres que define un patrón de busqueda. Ejemplo: `[^0-3]` Todos los dígitos excepto 0 y 3.

Para cambiar el formato de un archivo de texto .txt a archivo .csv:
```
sed -E 's/\(.*\)//g' p.txt | sed -E 's/^ *//g' | sed 's/2000 J11/2000-J11/g' | sed 's/ +/,/g' 
```

## Gnuplot:
Comandos: 
+ help --> Informacion de gnuplot
+ set term dumb  --> la grafica se ve en la terminal
+ plot x, plot sin(x)  --> grafica las funciones dadas
+ plot[0:2*pi] --> Rango
+ set term qt --> Grafica en una ventana diferente
+ set title "sin(x)" --> Coloca títulos de las gráficas
+ set ylabel "y" --> Establecer etiqueta para el eje y
+ sed grid  --> Coloca cuadrícula en la gráfica.
+ set parametric, plot cos(t), sin(t)
+ set size ratio1 --> Modificar la medida de los ejes (el círculo se grafica bien).
+ unset parametric
+ splot x**2  + y**2 --> splot para gráficas en 3D.
+ set datafile separator "," --> lo que limita las columnas son comas
+ plot "archivo.csv" using 2:3 -->  columnas a usar (para archivo .csv) (Gráficas de dispersión).
+ plot "archivo.csv" using 2:3 with lines  --> Incluye líneas que unen los puntos.

Para definir funciones: 
+ `quad(x)= x**2`
+ `cube(x)= x**3`
+ plot "joviansatellites.csv" using (cube($2)):(quad($3)) 

## 2 de Junio de 2015
# Hands-on 2:
```
1. '^.... '  -> expresión regular que representa cuatro caracteres al inicio de una línea junto con un espacio a continuación
2. sed 's/:/\t/g' --> Para cambiar a formato tsv
3. Número pi
sed 's/<BR>//g' karmona.txt | sed 's/<\/center><\/BODY><\/HTML>//g' | sed -E 's/<[^>]*>//g' |  >  b.txt
En Sublime buscar: \D10\D y \D y reemplazar por nada
```
Gráfica en gnuplot desde bash:
```

#3 de Junio de 2015
```
gnuplot<<EOF
set term dumb
set datafile separator ","
plot $1 using $2:$3
EOF
```
curl http://exchange-rates.org/history/COP/USD/T > dollar.htm
sed -E 's/<[^>]*>//g'
sed -E 's/[a-zA-Z]//g'
w3m http://exchange-rates.org/history/COP/USD/T | grep "USD COP rate for" | sed 's/COP.*//g' | sed 's/[a-zA-Z]//g'
```
Más comandos para utilizar en Gnuplot:
+ set xdata time 
+ set timefmt "%m:/%m:/%m" <BR>
Hacer fit en gnuplot:
+ y(x)= mx+b
+ fit y(x) 'galaxies.csv' using 2:3 via m,b
+ replot m*x+b (una grafica sobre la otra)
+ gnuplot scatterplot.gp (ejecutar comando de gnuplot en terminal)

Compilar C:
gcc -o integers.out integers.c --> colocar nombre .out (por defecto a.out)
./timer.sh "integers.out"

# 5 de Junio de 2015
set view equal xyz

#9 de Junio de 2015
## Hands-on 3 y 4
Make es una herramienta que automatiza tareas repetitivas. Si necesitamos hacer las mismas tareas una y otra vez, deberiamos usar un manager de construcción para manejar los detalles. Para esto es importante:
+ Encontrar un orden de estas tareas tal que toda tarea dada dependa en lo que se hizo antes. Este patrón aparece numerosas veces.
+ Establecer que depende de que.
+ Que ha hecho y que falta por ser hecho.
El grupo de tareas se puede representar en un gráfico conceptual, donde las tareas son los nodos de la gráfica y los bordes (líneas que unen las tareas) son las dependencias. Se describen las dependencias en un archivo de construcción, usualmente es sólo un archivo de texto plano en un formato especializado. También se describe cómo actualizar cosas (cuáles comandos usar cuando las dependencias de algo han sido satisfechas y esta listo para actualizarse por sí mismo). Y eso es todo, el manager de contrucción maneja todo lo demás. En partícular, mantiene el historial de los que ya esta actualizado y lo que está listo por ser actualizado.

##Proyecto final: 
Se podría utilizar los comandos vistos en bash para hacer análisis de datos, y desde el script hacer una llamada a Gnuplot para realizar gráficas para representar los resultados. Además, los datos podrían descargarse del código fuente de una página y usando expresiones guardar los datos en un archivo. 


#10 de Junio de 2015
Código para generar curvas de Lissajous: 

```
%pylab inline
A=0
a=0
d=0
B=0
b=0
rcdefaults() # Esto pone el estilo en el estilo por defecto
figure(figsize=(10,10))
t=linspace(0,2*pi,250)
for i in range(25):
    subplot(5,5,i+1)
    plot(A*sin(a*t +d), sin(B*t))
    axis("off")
    A=A+1
    B=B+A
    a=a+1
    b=b+1
    d=d+1
    savefig("Lissajous.png")
show()
```
![alt tag](https://github.com/JimenaGonzalez/MC/blob/master/Lissajous.png)

#16 de Junio de 2015

Actividad: Hands-On 7.3:

Paquetes que se importan:

```
%pylab inline
import numpy
import scipy.optimize as optimization
from scipy.optimize import curve_fit
```
Tabla con los datos datos:
```
x=numpy.array([2.3,2.8,3.2,3.7,4.3])
y=numpy.array([34745,19689,12594,7982,5822])
```
Definición de la función del modelo teórico adecuado:
```
def func(x,a, m):
    return (a*m)/(x**3)
fitpars, covmat=curve_fit(func,x,y)
```
Código que hace un ajuste por mínimos cuadrados: 
```
fig=plt.figure()
ax=fig.add_subplot(111)
ax.plot(x,y,"o",ms=10,label="puntos muestrales")
ax.plot(x,func(x,*fitpars),label=u"Interpolación")
plt.legend()
plt.show(fig)
savefig("16junioa.png")
```
![alt tag](https://github.com/JimenaGonzalez/MC/blob/master/Imagenes/16junioa.png)

Muestra el valor de m que es 681.24 Am^2

```
print "El magnitud del campo magnetico de imán es :"
print fitpars[1]
```
Se hace la interpolación, se determina el campo magnético B en los valores dado de x (xt).

```
xt= np.linspace(2,5,100)
yt= func(xt,fitpars[0],fitpars[1])
fig=plt.figure()
ax=fig.add_subplot(111)
ax.plot(x,func(x,*fitpars),label=u"Interpolación")
ax.plot(xt,yt,"o",ms=5,label=u"Nuevos puntos")
plt.legend()
plt.show(fig)
savefig("16juniob.png")
```
![alt tag](https://github.com/JimenaGonzalez/MC/blob/master/Imagenes/16juniob.png)

##Proyecto final:
Lo aprendido de ajustes puede aplicarse a análisis de datos, de esta manera se podria observar que tendencia tienen los datos y si estos concuerdan con el modelo teórico que se tiene para el sistema.


# 17 de Junio de 2015

## Para crear ramas en github:

+ `git init` Iniciar git en una carpeta
+ `git commit -m "msj"`
+ `git branch`  muestra ramas del repositorio (la rama en la que se trabaja se muestra astérisco).
+ `git branch rama1` --> la rama que se creo
+ `git checkout rama1` --> para cambiar de rama
para hacer merge:
+ en master: git merge rama1
+ git tag --> Muestra las Etiqueta a los commits, muestra las etiquetas del repositorio
+ git push origin version19-jun-2015  "nombre de la etiqueta" --> para crear tag

# 23 de junio de 2015
'pip install "packete" --> Instalar packetes de ipython'

## Hands-On 10:
Se estimó la duración del ciclo solar analizando con una transformada discreta de Fourier los datos dados. Código usado:

```
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import os
%matplotlib inline
from scipy.fftpack import ifft, fft, fftfreq
from scipy import signal
data=genfromtxt("month.csv", delimiter=",")
nuevo=data[2316:len(data)-1]
anio=nuevo[:,0]
mes=nuevo[:,1]
manchas=nuevo[:,3]
mes_anio=mes
tiempo=mes
for i in range(len(mes)):
    mes_anio[i]= float((mes[i]-1)/12)
    tiempo[i]= anio[i] + mes_anio[i]
plt.figure(figsize=(10,10))
plt.plot(tiempo,manchas)
plt.show()
N=2315
f=12.0
dt =  1./f / N
fft_senal = fft(manchas)
freq = fftfreq(N, dt)
plt.figure(figsize=(10,10))
plt.plot(freq,np.abs(fft_senal),label=u'DFT señal')
plt.show()
plt.figure(figsize=(10,10))
fft_senal[np.abs(freq) > 500] = 0
y_cleaned=ifft(fft_senal)
plt.plot(tiempo,np.real(y_cleaned),'r', label=u'Señal filtrada', lw=2)
plt.plot(tiempo,np.real(manchas),label=u'Señal original con ruido', alpha=0.4)
plt.xlim(1900,2000)
plt.ylim(0,200)
plt.xlabel(u"t/año")
plt.ylabel("manchas solares/ mes")
savefig("manchas.png")
```

Figura resultante:
Observando la figura puede verse que la duración del ciclo solar es de aproximadamente 10 años.

![alt tag](https://github.com/JimenaGonzalez/MC/blob/master/Imagenes/23junio.png)

# 1 de julio de 2015

## Hands-on 13, se demostraron las ecuaciones utilizadas para los métodos de Adams-Bashforth de orden 2, 3 y 4 usando Sympy como ayuda en los cálculos simbólicos.

Paquetes a importar: `from sympy import *`

Orden 2:
```
t,fn,fn1,h,tn,tn1=symbols('t fn fn1 h tn tn1')
tn1=tn-h
simplify(integrate(fn1*(t-tn)/(tn1-tn) + fn*(t-tn1)/(tn-tn1), (t,tn,(tn+h))))
```

Orden 3:
```
t,fn,fn1,fn2,h,tn,tn1,tn2=symbols('t fn fn1 fn2 h tn tn1 tn2')         
tn1=tn-h
tn2=tn-2*h
simplify(integrate(fn*(t-tn1)/(tn-tn1)*(t-tn2)/(tn-tn2) + fn1*(t-tn)/(tn1-tn)*(t-tn2)/(tn1-tn2) + fn2*(t-tn)/(tn2-tn)*(t-tn1)/(tn2-tn1),(t,tn,(tn+h))))
```

Orden 4:
```
t,fn,fn1,fn2,fn3,h,tn,tn1,tn2,tn3=symbols('t fn fn1 fn2 fn3 h tn tn1 tn2 tn3')  tn1=tn-h
tn2=tn-2*h
tn3=tn -3*h
simplify(integrate(fn*(t-tn1)/(tn-tn1)*(t-tn2)/(tn-tn2)*(t-tn3)/(tn-tn3) + fn1*(t-tn)/(tn1-tn)*(t-tn2)/(tn1-tn2)*(t-tn3)/(tn1-tn3) + fn2*(t-tn)/(tn2-tn)*(t-tn1)/(tn2-tn1)*(t-tn3)/(tn2-tn3) + fn3*(t-tn)/(tn3-tn)*(t-tn1)/(tn3-tn1)*(t-tn2)/(tn3-tn2),(t,tn,(tn+h))))
```