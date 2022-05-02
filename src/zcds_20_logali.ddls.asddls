@AbapCatalog.sqlViewName: 'ZCDS_20_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Explicit Join'
define view zcds_20_logali
  as select from spfli
  association to scarr as _Scarr on spfli.carrid = _Scarr.carrid
{
  key spfli.carrid           as Carrid,
  key spfli.connid           as Connid,
      _Scarr[inner].carrname as Carrier,
      spfli.cityfrom         as Departure,
      spfli.cityto           as Arival,
      _Scarr[inner].currcode as CurrencyCode
}
