REPORT ztest_estatus.

DATA lv_estatus TYPE c.
lv_estatus = 'c'.

CASE lv_estatus.
  WHEN 'n'.
    WRITE 'Nueva'.

  WHEN 'p'.
    WRITE 'En proceso'.

  WHEN 'c'.
    WRITE 'Completada'.

  WHEN 'x'.
    WRITE 'Cancelada'.

  WHEN OTHERS.
    WRITE 'Estatus invalido'.

ENDCASE.