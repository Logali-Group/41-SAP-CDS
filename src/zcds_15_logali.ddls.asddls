@AbapCatalog.sqlViewName: 'ZCDS_15_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Association base for Param'
define view zcds_15_logali
  with parameters
    pAirlCode : s_carr_id
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      @Semantics.currencyCode: true
      currcode as Currcode,
      @Semantics.url.mimeType: 'Url'
      url      as Url
}
where
  carrid = $parameters.pAirlCode;
