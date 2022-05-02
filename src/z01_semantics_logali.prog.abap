*&---------------------------------------------------------------------*
*& Report z01_semantics_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report z01_semantics_logali.

*select from cdsviewannopos
select from Cds_View_Annotation_Position
      fields *
      where cdsname eq 'ZCDS_10_LOGALI'
        and annotationname like '%.%'
   into table @data(gt_annotations_header).

cl_demo_output=>write( gt_annotations_header ).

select from Cds_Field_Annotation
       fields *
       where cdsname eq 'ZCDS_10_LOGALI'
         and annotationname like '%.%'
    into table @data(gt_annotations_field).

cl_demo_output=>write( gt_annotations_field ).

cl_demo_output=>display(  ).
