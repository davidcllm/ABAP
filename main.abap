*----------------------------------------------------------------------*
* Declarations
*----------------------------------------------------------------------*
DATA result TYPE i.
DATA numbers TYPE TABLE OF i.

*----------------------------------------------------------------------*
* Preparation
*----------------------------------------------------------------------*
APPEND 123 TO numbers.

*----------------------------------------------------------------------*
* Example 1: Conversion Error (no Number)
*----------------------------------------------------------------------*
CONSTANTS c_text TYPE string VALUE 'ABC'.
* CONSTANTS c_text TYPE string VALUE '123'.

WRITE: / '---------------------------',
       / 'Example 1: Conversion Error',
       / '---------------------------'.

TRY.
    result = c_text.
    WRITE: / 'Converted content is', result.
  CATCH cx_sy_conversion_no_number.
    WRITE: / 'Error:', c_text, 'is not a number!'.
ENDTRY.

SKIP 1.

*----------------------------------------------------------------------*
* Example 2: Division by Zero
*----------------------------------------------------------------------*
CONSTANTS c_number TYPE i VALUE 0.
* CONSTANTS c_number TYPE i VALUE 7.

WRITE: / '---------------------------',
       / 'Example 2: Division by Zero',
       / '---------------------------'.

TRY.
    result = 100 / c_number.
    WRITE: / '100 divided by', c_number, 'equals', result.
  CATCH cx_sy_zerodivide.
    WRITE: / 'Error: Division by zero is not defined!'.
ENDTRY.

SKIP 1.

*----------------------------------------------------------------------*
* Example 3: Itab Error (Line Not Found)
*----------------------------------------------------------------------*
CONSTANTS c_index TYPE i VALUE 2.
* CONSTANTS c_index TYPE i VALUE 1.

WRITE: / '-------------------------',
       / 'Example 3: Line Not Found',
       / '-------------------------'.

TRY.
    result = numbers[ c_index ].
    WRITE: / 'Content of row', c_index, 'equals', result.
  CATCH cx_sy_itab_line_not_found.
    WRITE: / 'Error: Itab has less than', c_index, 'rows!'.
ENDTRY.

SKIP 1.

*----------------------------------------------------------------------*
* Example 4: Combination of Different Exceptions
*----------------------------------------------------------------------*
* CONSTANTS c_char TYPE c LENGTH 1 VALUE 'X'.
* CONSTANTS c_char TYPE c LENGTH 1 VALUE '0'.
CONSTANTS c_char TYPE c LENGTH 1 VALUE '1'.
* CONSTANTS c_char TYPE c LENGTH 1 VALUE '2'.

WRITE: / '----------------------',
       / 'Example 4: Combination',
       / '----------------------'.

TRY.
    DATA(lv_index) = 2 / c_char.
    result = numbers[ lv_index ].
    WRITE: / 'Result:', result.
  CATCH cx_sy_zerodivide.
    WRITE: / 'Error: Division by zero is not defined'.
  CATCH cx_sy_conversion_no_number.
    WRITE: / 'Error:', c_char, 'is not a number!'.
  CATCH cx_sy_itab_line_not_found.
    WRITE: / 'Error: Itab contains less than', lv_index, 'rows'.
ENDTRY.