REPORT ztest_read.

"Definir tabla
TYPES: BEGIN OF ty_person,
  name TYPE string,
  age TYPE i,
END OF ty_person.

DATA lt_people TYPE STANDARD TABLE OF ty_person.
DATA ls_person TYPE ty_person.