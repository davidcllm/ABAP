REPORT ztest_tabla_del_7.

DATA lv_resultado TYPE i VALUE 0.

DO 10 TIMES.
  lv_resultado = sy-index * 7.
  WRITE: / '7 x ', sy-index, ' = ', lv_resultado.
ENDDO.