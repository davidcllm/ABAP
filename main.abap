REPORT ztest_or.

DATA lv_rol TYPE string VALUE 'ADMIN'.

IF lv_rol = 'ADMIN' OR lv_rol = 'SUPERADMIN'.
  WRITE 'Acceso permitido'.
ELSE. 
  WRITE 'Acceso denegado'.
ENDIF.