@AbapCatalog.sqlViewName: 'ZCDS_11_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Join'
define view zcds_11_logali
  with parameters
    pCurrency : s_currcode
  as select from spfli   as FlighPlan
    inner join   sflight as Flight on  FlighPlan.carrid = Flight.carrid
                                   and FlighPlan.connid = Flight.connid
{
  key FlighPlan.carrid    as Carrid,
  key Flight.connid       as Connid,
      FlighPlan.countryfr as CountryFrom,
      Flight.fldate       as FlightDate,
      FlighPlan.period    as Period

}
where
  Flight.currency = $parameters.pCurrency;
