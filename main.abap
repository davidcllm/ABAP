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
