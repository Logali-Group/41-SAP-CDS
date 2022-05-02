@AbapCatalog.sqlViewName: 'ZCDS_39_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Analytics - DIMENSION'
@Analytics.dataCategory: #DIMENSION
define view zcds_39_dim_airlines_logali
  as select from scarr
{
      @ObjectModel.text.element: ['AirlineName']
  key carrid   as Airline,
      @Semantics.text: true
      carrname as AirlineName,
      @Semantics.currencyCode: true
      currcode as Currency
}
