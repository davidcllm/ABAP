REPORT ztest_open_sql.

SELECT * 
  FROM scarr
  INTO TABLE @DATA(lt_scarr).

"scarr es una tabla estándar de SAP con información de aerolíneas.
"INTO TABLE guarda los resultados en una tabla interna.