REPORT ztest_variables.

DATA lv_nombre TYPE string.
DATA lv_edad TYPE i.

lv_nombre = 'David'.
lv_edad = 25.

WRITE: / 'Nombre: ', lv_nombre.
WRITE: / 'Edad: ', lv_edad.

** Integer (i) 
DATA lv_numero TYPE i.
lv_numero = 100.
WRITE lv_numero.

** Character (c) Cadena de longitud fija
DATA lv_caracter TYPE c LENGTH 10.
lv_caracter = 'ABAP'.
WRITE / lv_caracter.

** String Cadena de longitud variable
DATA lv_string TYPE string.
lv_string = 'Hola como estas'.
WRITE / lv_string.

** Decimal (p)
DATA lv_decimal TYPE p DECIMALS 2.
lv_decimal = '3.14'.
WRITE / lv_decimal.

** Float (f)
DATA lv_float TYPE f.
lv_float = '3.14159'.
WRITE / lv_float.

** Fecha (d)
DATA lv_date TYPE d.
lv_date = '20260603'.
WRITE / lv_date.

** Hora (t)
DATA lv_time TYPE t.
lv_time = '143000'.
WRITE / lv_time.

** Declaracion en inicializacion en una sola linea
* Se infiere automaticamente el tipo
DATA(lv_nombre) = 'David'.
DATA(lv_edad) = 25.
