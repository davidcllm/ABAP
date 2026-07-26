REPORT ztest_itab.

TYPES: BEGIN OF ty_person,
  name TYPE string,
  lastname TYPE string,
  age TYPE i,
END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person WITH DEFAULT KEY.
DATA ls_person TYPE ty_person.
DATA lv_count TYPE i.
DATA lv_sum TYPE i.

ls_person-age = 10.
ls_person-name = 'David'.
ls_person-lastname = 'Garcia'.
APPEND ls_person TO lt_people.

ls_person-age = 20.
ls_person-name = 'Maria'.
ls_person-lastname = 'Garcia'.
APPEND ls_person TO lt_people.

ls_person-age = 30.
ls_person-name = 'Santiago'.
ls_person-lastname = 'Hernandez'.
APPEND ls_person TO lt_people.

ls_person-age = 40.
ls_person-name = 'Beto'.
ls_person-lastname = 'Peres'.
APPEND ls_person TO lt_people.

ls_person-age = 50.
ls_person-name = 'Andres'.
ls_person-lastname = 'Lopez'.
APPEND ls_person TO lt_people.


LOOP AT lt_people INTO ls_person.
  WRITE: / ls_person-name, ' ', ls_person-lastname, ' tiene: ', ls_person-age, ' años'.
  lv_sum = lv_sum + ls_person-age.
ENDLOOP.

DESCRIBE TABLE lt_people LINES lv_count.

WRITE: / 'Total: ', lv_count, ' personas'.
WRITE: / 'Suma edades: ', lv_sum.
