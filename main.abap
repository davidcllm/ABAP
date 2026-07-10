REPORT ztest_uno_al_100_pares.

DO 100 TIMES.
  IF sy-index MOD 2 = 0.
    WRITE: / sy-index.
  ENDIF.

ENDDO.