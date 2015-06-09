#!/usr/bin/python
from random import randint

print "Escribir una funcion que genere una contrasenia aleatoria"

def contrasenia_aleatoria():
    l= randint(7,10)
    c=""
    for i in range(l):
        p= randint(33,126)
        c= c + chr(p)
    print c
    
contrasenia_aleatoria()
