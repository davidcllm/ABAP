REPORT ztest_itab.

TYPES: BEGIN OF ty_person,
         name TYPE string,
         age  TYPE i,
       END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person WITH DEFAULT KEY.
DATA ls_person TYPE ty_person.

ls_person-name = 'Alice'.
ls_person-age = 30.
APPEND ls_person TO lt_people.

ls_person-name = 'Bob'.
ls_person-age = 25.
APPEND ls_person TO lt_people.

ls_person-name = 'Charlie'.
ls_person-age = 35.
APPEND ls_person TO lt_people.

LOOP AT lt_people INTO ls_person.
  WRITE: / ls_person-name, ls_person-age.
ENDLOOP.

WRITE: / 'Total:', LINES( lt_people ), 'people'.
