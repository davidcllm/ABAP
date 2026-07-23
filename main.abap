REPORT ztest_itab.

TYPES: BEGIN OF ty_number,
  number TYPE i,
END OF ty_number.

DATA lt_numbers TYPE STANDARD TABLE OF ty_number WITH DEFAULT KEY.
DATA ls_number TYPE ty_number.
DATA lv_count TYPE i.

ls_number-number = 10.
APPEND ls_number TO lt_numbers.

ls_number-number = 20.
APPEND ls_number TO lt_numbers.

ls_number-number = 30.
APPEND ls_number TO lt_numbers.

ls_number-number = 40.
APPEND ls_number TO lt_numbers.

ls_number-number = 50.
APPEND ls_number TO lt_numbers.


LOOP AT lt_numbers INTO ls_number.
  WRITE: / ls_number-number.
ENDLOOP.

DESCRIBE TABLE lt_numbers LINES lv_count.

WRITE: / 'Total: ', lv_count, ' numbers'.