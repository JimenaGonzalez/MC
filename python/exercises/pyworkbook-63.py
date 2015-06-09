#!/usr/bin/python
import math
from tabulate import tabulate

print "Enunciado: escribir un programa que muestre una tabla de conversion de temperatura para grados Celsius y grados Fahrenheit."
centigrados=[]
fahrenheit=[]
centigrados.append("Celsius")
fahrenheit.append("Fahrenheit")
table = [["Centigrados","Fahrenheit"]]
c=0
for i in range(11):
    f= (9/5)*c + 32
    centigrados.append(c)
    fahrenheit.append(f)
    table.append([c,f])
    c=c+10
print centigrados
print fahrenheit
print tabulate(table)
    
