REPORT ztest_case.

DATA lv_dia TYPE i VALUE 3.

CASE lv_dia.
  WHEN 1.
    WRITE 'Lunes'.
  WHEN 2.
    WRITE 'Martes'.
  WHEN 3.
    WRITE 'Miercoles'.
  WHEN 4.
    WRITE 'Jueves'.
  WHEN 5.
    WRITE 'Viernes'.
  WHEN 6.
    WRITE 'Sabado'.
  WHEN 7.
    WRITE 'Domingo'.
ENDCASE. 

