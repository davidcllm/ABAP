REPORT ztest_exit.

DO 10 TIMES.
  WRITE: / sy-index.

  IF sy-index = 6.
    EXIT.
  ENDIF.

ENDDO.

