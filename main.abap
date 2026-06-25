REPORT ztest_descuento.

DATA lv_compra TYPE p DECIMALS 2 VALUE '5000.00'.

IF lv_compra >= '5000.00'.
  WRITE 'Descuento 20%'.
ELSEIF lv_compra >= '2000.00'.
  WRITE 'Descuento 10%'.
ELSEIF lv_compra >= '1000.00'.
  WRITE 'Descuento 5%'.
ELSE.
  WRITE 'No descuento'.
ENDIF. 

