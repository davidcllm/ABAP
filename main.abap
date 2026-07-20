REPORT ztest_taba.

TYPES: BEGIN OF ty_person,
         name TYPE string,
       END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person WITH DEFAULT KEY.
DATA ls_person TYPE ty_person.

ls_person-name = 'Alice'.
APPEND ls_person TO lt_people.

ls_person-name = 'Bob'.
APPEND ls_person TO lt_people.

ls_person-name = 'Charlie'.
APPEND ls_person TO lt_people.

LOOP AT lt_people INTO ls_person.
  WRITE: / ls_person-name.
ENDLOOP.

WRITE: / 'Total: ', LINES( lt_people ), ' people'.
