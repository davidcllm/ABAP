REPORT ztest_descuento.

DATA lv_compra TYPE p DECIMALS 2 VALUE '900.00'.

IF lv_compra >= '1000.00'.
  WRITE 'Descuento aplicado'.
ELSE.
  WRITE 'Descuento no aplicado'.
ENDIF. 

