REPORT ztest_if_else.

DATA lv_usuario TYPE i VALUE 17.

IF lv_usuario >= 18.
  WRITE 'Eres mayor de edad'.
ELSE.
  WRITE 'Eres menor de edad'.
ENDIF.