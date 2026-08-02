REPORT ztest_open_sql.


"scarr es una tabla estándar de SAP con información de aerolíneas.
"INTO TABLE guarda los resultados en una tabla interna.
SELECT * 
  FROM scarr
  INTO TABLE @DATA(lt_scarr).


"Recorrer el resultado.
LOOP AT lt_scarr INTO DATA(ls_scarr).
  WRITE: / ls_scarr-carrid, ls_scarr-name.
ENDLOOP.

"Leer columnas especificas
SELECT carrid, carrname
  FROM scarr 
  INTO TABLE @DATA(lt_scarr).

LOOP AT lt_scarr INTO DATA(ls_scarr).
  WRITE: / ls_scarr-carrid, ls_scarr-carrname.
ENDLOOP.

"Leer un solo registro
SELECT SINGLE * 
  FROM scarr
  WHERE carrid = 'LH'
  INTO @DATA(ls_scarr).

"Filtrar datos
SELECT * 
  FROM scarr
  WHERE currcode = 'USD'
  INTO TABLE @DATA(ls_scarr).