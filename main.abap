REPORT ztest.

"Definir tabla
TYPES: BEGIN OF ty_person,
  name TYPE string,
  lastname TYPE string,
  age TYPE i,
  address TYPE string,
END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person.
DATA ls_person TYPE ty_person.

ls_person-name = 'David'.
ls_person-lastname = 'Guevara'.
ls_person-age = 21.
ls_person-address = 'Calle 123'.
APPEND ls_person TO lt_people.
CLEAR ls_person.

ls_person-name = 'Maria'.
ls_person-lastname = 'Guevara'.
ls_person-age = 24.
ls_person-address = 'Calle 314'.
APPEND ls_person TO lt_people.
CLEAR ls_person.

ls_person-name = 'Santiago'.
ls_person-lastname = 'Guevara'.
ls_person-age = 30.
ls_person-address = 'Calle 501'.
APPEND ls_person TO lt_people.
CLEAR ls_person.

ls_person-name = 'Carlos'.
ls_person-lastname = 'Fernandez'.
ls_person-age = 17.
ls_person-address = 'Calle 45'.
APPEND ls_person TO lt_people.
CLEAR ls_person.

ls_person-name = 'Ana'.
ls_person-lastname = 'Hernandez'.
ls_person-age = 15.
ls_person-address = 'Calle 5'.
APPEND ls_person TO lt_people.
CLEAR ls_person.

LOOP AT lt_people INTO ls_person.
  DELETE lt_people WHERE age < 18.
  WRITE: / ls_person-name, ' ', ls_person-age.
ENDLOOP.