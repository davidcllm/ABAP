REPORT ztest_case.

DATA lv_calif TYPE i VALUE 10.

CASE lv_calif.
  WHEN 9 OR 10.
  WRITE 'Excelente'.
  WHEN 7 OR 8.
    WRITE 'Aprobado'.
  WHEN OTHERS.
    WRITE 'Reprobado'.
ENDCASE.