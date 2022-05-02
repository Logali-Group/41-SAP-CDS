@AbapCatalog.sqlViewAppendName: 'ZCDS_23_LOG'
@EndUserText.label: 'CDS - Extend'
extend view zcds_22_logali with zcds_23_logali
{
  scarr.currcode,
  scarr.url
}
