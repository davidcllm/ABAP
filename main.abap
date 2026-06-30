REPORT ztest_estado_orden.

DATA lv_estado TYPE c LENGTH 1 VALUE 'C'.

CASE lv_estado.
  WHEN 'N'.
    WRITE 'Nueva'.

  WHEN 'P'.
    WRITE 'Procesando'.

  WHEN 'C'.
    WRITE 'Completada'.

  WHEN 'X'.
    WRITE 'Cancelada'.

  WHEN OTHERS.
    WRITE 'Operacion no valida'.

ENDCASE.