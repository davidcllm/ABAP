REPORT ztest_and.

DATA lv_edad TYPE i VALUE 25.
DATA lv_ine TYPE abap_bool VALUE abap_true.

IF lv_edad >= 18 AND lv_ine = abap_true.
  WRITE 'Puede votar'.
ELSE.
  WRITE 'No puede votar'.
ENDIF.
