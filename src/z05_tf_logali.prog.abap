*&---------------------------------------------------------------------*
*& Report z05_tf_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report z05_tf_logali.

select from ztf_01_logali( p_airline = 'LH' )
  fields *
  into table @data(gt_results).

  if sy-subrc eq 0.
    cl_demo_output=>display( gt_results ).
  endif.
