REPORT ztest_login.

DATA lv_usuario TYPE string VALUE 'admin'.
DATA lv_pwd TYPE string VALUE '1234'.

IF lv_usuario = 'admin'
  AND lv_pwd = '1234'.

  WRITE 'Login correcto '.

ELSE.

  WRITE 'Usuario o pwd incorrectos'.

ENDIF.

