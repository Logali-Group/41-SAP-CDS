@AbapCatalog.sqlViewName: 'ZCDS_14_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Association'
define view zcds_14_logali
  with parameters
    pAirline  : s_carr_id,
    pLanguage : spras
  as select from spfli as Flight
  association [1] to zcds_13_logali as _CountryNameFrom on  $projection.CountryKeyFrom = _CountryNameFrom.CountryKey
                                                        and _CountryNameFrom.Language  = $parameters.pLanguage
  association [1] to zcds_13_logali as _CountryNameTo   on  $projection.CountryKeyTo = _CountryNameTo.CountryKey
                                                        and _CountryNameTo.Language  = $parameters.pLanguage

{
  key Flight.carrid                as AirlineCode,
  key Flight.connid                as FlightConnection,
      Flight.cityfrom              as CityFrom,
      Flight.countryfr             as CountryKeyFrom,
      _CountryNameFrom.CountryName as CountryNameFrom,
      Flight.cityto                as CityTo,
      Flight.countryto             as CountryKeyTo,
      _CountryNameTo.CountryName   as CountryNameTo
}
where
  Flight.carrid = $parameters.pAirline;
