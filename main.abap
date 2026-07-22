REPORT ztest_itab.

TYPES: BEGIN OF ty_person,
         name TYPE string,
       END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person WITH DEFAULT KEY.
DATA ls_person TYPE ty_person.

ls_person-name = 'David'.
APPEND ls_person TO lt_people.

ls_person-name = 'Ana'.
APPEND ls_person TO lt_people.

ls_person-name = 'Luis'.
APPEND ls_person TO lt_people.

ls_person-name = 'Carlos'.
APPEND ls_person TO lt_people.

ls_person-name = 'Maria'.
APPEND ls_person TO lt_people.

LOOP AT lt_people INTO ls_person.
  WRITE: / ls_person-name.
ENDLOOP.

WRITE: / 'Total: ', LINES( lt_people ), ' people'.
