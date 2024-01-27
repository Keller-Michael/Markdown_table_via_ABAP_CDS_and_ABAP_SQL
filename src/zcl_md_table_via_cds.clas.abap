CLASS zcl_md_table_via_cds DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_md_table_via_cds IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    SELECT * FROM zc_md_table ORDER BY AirportID INTO TABLE @DATA(markdown_table).
    out->write( markdown_table ).
  ENDMETHOD.

ENDCLASS.
