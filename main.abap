REPORT ztest_itab.

TYPES: BEGIN OF ty_person,
  name TYPE string,
  age TYPE i,
END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person WITH DEFAULT KEY.
DATA ls_person TYPE ty_person.
DATA lv_count TYPE i.
DATA lv_sum TYPE i.

ls_person-age = 10.
ls_person-name = 'David'.
APPEND ls_person TO lt_people.

ls_person-age = 20.
ls_person-name = 'Maria'.
APPEND ls_person TO lt_people.

ls_person-age = 30.
ls_person-name = 'Santiago'.
APPEND ls_person TO lt_people.

ls_person-age = 40.
ls_person-name = 'Beto'.
APPEND ls_person TO lt_people.

ls_person-age = 50.
ls_person-name = 'Andres'.
APPEND ls_person TO lt_people.


LOOP AT lt_people INTO ls_person.
  WRITE: / ls_person-name, ' tiene: ', ls_person-age, ' años'.
  lv_sum = lv_sum + ls_person-age.
ENDLOOP.

DESCRIBE TABLE lt_people LINES lv_count.

WRITE: / 'Total: ', lv_count, ' personas'.
WRITE: / 'Suma edades: ', lv_sum.
