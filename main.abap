REPORT ztest_while.

DATA lv_contador TYPE i VALUE 1.

WHILE lv_contador <= 5.
  WRITE: / lv_contador.
  lv_contador = lv_contador + 1.
ENDWHILE.

