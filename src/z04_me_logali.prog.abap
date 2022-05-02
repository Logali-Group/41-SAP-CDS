*&---------------------------------------------------------------------*
*& Report z04_me_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report z04_me_logali.

class lcl_cds_me definition.
  public section.
    class-methods main.
endclass.

class lcl_cds_me implementation.

  method main.

    data(lo_out) = cl_demo_output=>new(  )->next_section( 'NO Metadata Extensions' ).

    cl_dd_ddl_annotation_service=>get_annos(
      exporting
        entityname         = 'ZCDS_29_LOGALI'
        metadata_extension = abap_false
      importing
        element_annos      = data(lt_elements) ).

    delete lt_elements where elementname <> 'CARRID' and
                             elementname <> 'CONNID'.

    lo_out->write( lt_elements )->next_section( 'WITH Metadata Extensions' ).

    cl_dd_ddl_annotation_service=>get_annos(
      exporting
        entityname         = 'ZCDS_29_LOGALI'
        metadata_extension = abap_true
      importing
        element_annos      = lt_elements ).

     delete lt_elements where elementname <> 'CARRID' and
                              elementname <> 'CONNID'.

     lo_out->write( lt_elements )->display(  ).

  endmethod.

endclass.

start-of-selection.
  lcl_cds_me=>main(  ).
