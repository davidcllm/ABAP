REPORT ztest_open_sql.

"Lee el registro que está en la posición 2 y guárdalo en ls_person."
READ TABLE lt_people
INTO ls_person
INDEX 2.