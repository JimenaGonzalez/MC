#!/usr/bin/python
import math
print "Enunciado: Crear un programa que lea dos enteros, a y b, del usuario. El programa debe calcular: "
a= float (raw_input("Please enter a= "))
b= float (raw_input("Please enter b= "))

suma= a+b
resta=a-b
producto= a*b
coef= a/b
remainder=a%b
lo = math.log(a,10)
pot=a**b

print "La suma de a y b es: "+ str(suma)
print "La diferencia cuando b es restado de a es: "+ str(resta)
print "El producto de a y b es: "+ str(producto)
print "El coeficiente cuando a es dividido por b es: "+ str(coef)
print "El residuo de dividir a entre b es : " + str(remainder)
print "El resultado del logaritmo de a en base 10 es " + str(lo)
print "El resultado de a elevado a la b es: " + str(pot)


