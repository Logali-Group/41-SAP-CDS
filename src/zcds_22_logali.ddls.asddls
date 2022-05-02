@AbapCatalog.sqlViewName: 'ZCDS_22_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Path Expression 2'
define view zcds_22_logali
  as select from scarr
  association [*] to zcds_21_logali as _Flights on _Flights.carrid = scarr.carrid

{
  key scarr.carrid,
      scarr.carrname,
      _Flights
}
