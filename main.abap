REPORT ztest_read.

"Definir tabla
TYPES: BEGIN OF ty_person,
  name TYPE string,
  lastname TYPE string,
  age TYPE i,
END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person.
DATA ls_person TYPE ty_person.

ls_person-name = 'David'.
ls_person-lastname = 'Guevara'.
ls_person-age = 21.
APPEND ls_person TO lt_people.

ls_person-name = 'Maria'.
ls_person-lastname = 'Guevara'.
ls_person-age = 24.
APPEND ls_person TO lt_people.

ls_person-name = 'Santiago'.
ls_person-lastname = 'Guevara'.
ls_person-age = 30.
APPEND ls_person TO lt_people.

READ TABLE lt_people 
  INTO ls_person
  WITH KEY name = 'Fernando'.
READ TABLE lt_people 
  INTO ls_person
  WITH KEY lastname = 'Guevara'.

IF sy-subrc = 0.
  WRITE: / ls_person-name.
  WRITE: / ls_person-lastname.
  WRITE: / ls_person-age.
ELSE.
  WRITE: / 'Persona no encontrada'.
ENDIF.