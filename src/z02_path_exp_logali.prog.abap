*&---------------------------------------------------------------------*
*& Report z02_path_exp_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report z02_path_exp_logali.

data gv_carrid type s_carr_id value 'LH'.

cl_demo_input=>request( changing field = gv_carrid ).

select from zcds_22_logali as cds
       fields cds~carrname as Carrname,
       \_Flights-connid as Connid,
       \_Flights\_Flight-fldate as Fldate,
       \_Flights\_Airports-name as Name
       where cds~carrid eq @gv_carrid
    into table @data(gt_results).

if sy-subrc eq 0.
  cl_demo_output=>display( gt_results ).
endif.
