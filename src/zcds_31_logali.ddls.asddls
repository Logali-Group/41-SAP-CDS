@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Table Functions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_31_logali
  with parameters
    p_Airline : s_carr_id
  as select from sflight
    inner join   ztf_01_logali(p_Clnt : $session.client, p_Airline : $parameters.p_Airline) as Flights on Flights.FlightConn = sflight.connid
{
  key sflight.carrid,
  key sflight.connid,
  key sflight.fldate,
      Flights.AirlineName,
      //Flights.FlightConn,
      Flights.CityFrom,
      Flights.CityTo
}
