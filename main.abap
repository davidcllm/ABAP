REPORT ztest_persona.

DATA lv_nombre TYPE string. 
DATA lv_edad TYPE i.
DATA lv_ciudad TYPE string.

lv_nombre = 'David'.
lv_edad = 21.
lv_ciudad = 'Ciudad1'.

WRITE: / 'Nombre: ', lv_nombre.
WRITE: / 'Edad: ', lv_edad.
WRITE: / 'Ciudad: ', lv_ciudad.

