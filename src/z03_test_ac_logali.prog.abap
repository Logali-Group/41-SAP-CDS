*&---------------------------------------------------------------------*
*& Report z03_test_ac_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report z03_test_ac_logali.


select * from zcds_27_logali
  into table @data(gt_results).

if sy-subrc eq 0.
  cl_demo_output=>display( gt_results ).
endif.
