@AbapCatalog.sqlViewName: 'ZCDS_05_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Client Handeling'
//@ClientHandling: {
//algorithm: #AUTOMATED,
//type: #INHERITED
//}
@ClientHandling.algorithm: #SESSION_VARIABLE
define view zcds_05_logali
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
