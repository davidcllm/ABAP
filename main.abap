REPORT ztest_estatus.

DATA lv_estatus TYPE c.
lv_estatus = 'C'.

CASE lv_estatus.
  WHEN 'N'.
    WRITE 'Nueva'.

  WHEN 'P'.
    WRITE 'En proceso'.

  WHEN 'C'.
    WRITE 'Completada'.

  WHEN 'X'.
    WRITE 'Cancelada'.

  WHEN OTHERS.
    WRITE 'Estatus invalido'.

ENDCASE.