REPORT ztest_case.

DATA lv_rol TYPE string VALUE 'ADMIN'.

CASE lv_rol.
  WHEN 'ADMIN'.
  WRITE 'Acceso total'.
  WHEN 'USER'.
    WRITE 'Acceso limitado'.
  WHEN 'GUEST'.
    WRITE 'Solo lectura'.
  WHEN OTHERS.
    WRITE 'Rol desconocido'.
ENDCASE. 
