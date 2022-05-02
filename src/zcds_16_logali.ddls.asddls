@AbapCatalog.sqlViewName: 'ZCDS_16_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Association with Parameters'
define view zcds_16_logali
  with parameters
    pAirlCode : s_carr_id
  as select from sflight as Flight
  association [1] to zcds_15_logali as _Airline on _Airline.Carrid = Flight.carrid
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'Currcode'
      price,
      planetype,
      _Airline(pAirlCode: $parameters.pAirlCode).Carrname,
      @Semantics.currencyCode: true
      _Airline(pAirlCode: $parameters.pAirlCode).Currcode,
      _Airline(pAirlCode: $parameters.pAirlCode).Url
}
where
  Flight.carrid = $parameters.pAirlCode;
