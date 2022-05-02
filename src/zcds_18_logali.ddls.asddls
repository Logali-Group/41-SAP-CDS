@AbapCatalog.sqlViewName: 'ZCDS_18_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Association Public'
define view zcds_18_logali
  as select from spfli as Flight
  association [1] to zcds_17_logali as _AirportFrom on _AirportFrom.AirportId = Flight.airpfrom
{
  key carrid,
  key connid,
      countryfr,
      cityfrom,
      airpfrom,
      _AirportFrom
}
