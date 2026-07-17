REPORT ztest_tabla.

DATA lt_nombres TYPE TABLE OF string.

APPEND 'David' TO lt_nombres.
APPEND 'Ana' TO lt_nombres.
APPEND 'Luis' TO lt_nombres.

LOOP AT lt_nombres INTO DATA(lv_nombre).

  WRITE: / lv_nombre.

ENDLOOP.

