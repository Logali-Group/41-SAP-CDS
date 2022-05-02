@AbapCatalog.sqlViewName: 'ZCDS_21_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Path Expression 1'
define view zcds_21_logali
  as select from spfli
  association [0..*] to sflight  as _Flight   on  _Flight.carrid = spfli.carrid
                                              and _Flight.connid = spfli.connid
  association [1..1] to sairport as _Airports on  _Airports.id = spfli.airpfrom
{
  key carrid,
  key connid,
      spfli.airpfrom,
      _Flight,
      _Airports
}
