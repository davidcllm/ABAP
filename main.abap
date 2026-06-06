DATA lv_num1 TYPE i VALUE 10.
DATA lv_num2 TYPE i VALUE 15.
DATA lv_res TYPE i.

lv_res = lv_num1 + lv_num2.
WRITE lv_res.

lv_res = lv_num1 - lv_num2.
WRITE / lv_res.

lv_res = lv_num1 * lv_num2.
WRITE / lv_res.

lv_res = lv_num1 / lv_num2.
WRITE / lv_res.