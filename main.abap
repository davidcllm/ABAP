REPORT ztest_do.

DATA lv_total TYPE i VALUE 0.

DO 10 TIMES. 
  lv_total = lv_total + 1.
  WRITE: / 'Iteración: ', lv_total.
ENDDO.