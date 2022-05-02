@AbapCatalog.sqlViewName: 'ZCDS_17_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Association base for Public'
@ObjectModel.representativeKey: 'AirportId'
define view zcds_17_logali
  as select from sairport
{
  key id        as AirportId,
      name      as AirportName,
      time_zone as AirportTimeZone
}
