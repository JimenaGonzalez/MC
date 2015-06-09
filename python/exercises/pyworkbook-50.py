#!/usr/bin/python
import math
print "Enunciado: Escribir un programa que calcule las raices rales de una funcion cuadratica. Debe mostrar un mensaje indicando el numero de raices reales, junto con los valores de las raices reales (si hay). Por favor introduzca los valores de los coeficientes para el polinomio (a,b y c), donde la ecuacion correspondiente es ax**2 + bx + c" 
a= float (raw_input("Indique el valor de a= "))
b= float (raw_input("Indique el valor de b= "))
c= float (raw_input("Indique el valor de c= "))

d = b**2 - 4*a*c

if (d==0):
    r= -b/(2*a)
    print "Hay solo una raiz y su valor es " + str(r)

if (d>0):
    r1= (-b + math.sqrt(d))/2*a
    r2= (-b - math.sqrt(d))/2*a
    print "Hay dos raices reales y sus valores son " + str(r1) + " y " + str(r2)

if (d<0):
    print "No hay raices reales."
