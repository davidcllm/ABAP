REPORT ztest_uno_al_100_pares.

DATA lv_contador TYPE i VALUE 10.

WHILE lv_contador >= 1.

  WRITE: / lv_contador.
  lv_contador = lv_contador - 1.

ENDWHILE.