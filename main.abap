REPORT ztest_not.

DATA lv_activo TYPE abap_bool VALUE abap_false.

IF NOT lv_activo = abap_true.
  WRITE 'Usuario inactivo'.
ENDIF.