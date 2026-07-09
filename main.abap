REPORT ztest_continue.

DO 5 TIMES.
  IF sy-index = 3.
    CONTINUE.
  ENDIF.

  WRITE: / sy-index.

ENDDO.

