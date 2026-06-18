REPORT ztest_if_else.

DATA lv_calificacion TYPE i VALUE 60.

IF lv_calificacion >= 90.
  WRITE 'Excelente'.
ELSEIF lv_calificacion >= 70.
  WRITE 'Aprobado'.
ELSE.
  WRITE 'Reprobado'.
ENDIF.