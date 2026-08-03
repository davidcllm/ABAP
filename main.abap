REPORT ztest_open_sql.

SELECT SINGLE *
  FROM scarr
  WHERE carrid = 'XX'
  INTO @DATA(ls_scarr).

"0 es operacion exitosa, 4 es no se encuentran datos
IF sy-subrc = 0.
  WRITE 'Registro encontrado'.
ELSE. 
  WRITE 'Registro no encontrado'.
ENDIF.