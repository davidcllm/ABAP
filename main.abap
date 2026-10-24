*----------------------------------------------------------------------*
* Declarations
*----------------------------------------------------------------------*
CONSTANTS c_number TYPE i VALUE 3.
* CONSTANTS c_number TYPE i VALUE 5.
* CONSTANTS c_number TYPE i VALUE 10.

DATA number TYPE i.

*----------------------------------------------------------------------*
* Example 1: DO ... ENDDO with TIMES
*----------------------------------------------------------------------*
WRITE: / '----------------------------------',
       / 'Example 1: DO ... ENDDO with TIMES',
       / '----------------------------------'.

DO c_number TIMES.
  WRITE: / 'Hello World'.
ENDDO.

SKIP 1.

*----------------------------------------------------------------------*
* Example 2: DO ... ENDDO with Abort Condition
*----------------------------------------------------------------------*
WRITE: / '-------------------------------',
       / 'Example 2: With Abort Condition',
       / '-------------------------------'.

number = c_number * c_number.

" count backwards from number to c_number.
DO.
  WRITE: / sy-index, 'Value of number:', number.
  number = number - 1.

  " abort condition
  IF number <= c_number.
    EXIT.
  ENDIF.
ENDDO.
