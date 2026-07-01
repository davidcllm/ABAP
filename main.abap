REPORT ztest_dias.

DATA lv_estado TYPE i VALUE 7.

CASE lv_estado.
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

  WHEN OTHERS.
    WRITE 'Dia invalido'.

ENDCASE.