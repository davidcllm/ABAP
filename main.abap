DATA lv_nombre TYPE string VALUE 'David'.
DATA lv_apellido TYPE string VALUE 'Cruz'.
DATA lv_nombreCompleto TYPE string.

lv_nombreCompleto = |{ lv_nombre } { lv_apellido }|.

WRITE lv_nombreCompleto.
