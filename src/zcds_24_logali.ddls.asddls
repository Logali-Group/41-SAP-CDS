@AbapCatalog.sqlViewName: 'ZCDS_24_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS - Base for hierarchy'
define view zcds_24_logali
  as select from zempl_h_logali
  association [0..1] to zcds_24_logali as _Manager on $projection.Manager = _Manager.Employee 
{
  key employee as Employee,
      manager  as Manager,
      name     as Name,
      _Manager
}
