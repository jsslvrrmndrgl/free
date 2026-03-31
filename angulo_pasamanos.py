#!/data/data/com.termux/files/usr/bin/python3

from time import sleep
from math import atan2, degrees

factor = .01745

co = float(input('CA: '))
ca = float(input('CO: '))

radianes = atan2(co, ca)

grados = degrees(radianes)

print()
print('Grados: {:.2f}'.format(grados))

avance_int_codo = float(input ('Avance interior: '))
avance_ext_codo = float(input ('Avance exterior: '))

corte_int = avance_int_codo * grados * factor
corte_ext = avance_ext_codo * grados * factor

print()
print('Corte interior {:.2f}'.format(corte_int))
print('Corte exterior {:.2f}'.format(corte_ext))

sleep(7)
