DATA lv_nombre TYPE string VALUE 'David'.
DATA lv_apellido TYPE string VALUE 'Cruz'.
DATA lv_nombreCompleto TYPE string.

CONCATENATE lv_nombre lv_apellido
  INTO lv_nombreCompleto
  SEPARATED BY space.

WRITE lv_nombreCompleto.
