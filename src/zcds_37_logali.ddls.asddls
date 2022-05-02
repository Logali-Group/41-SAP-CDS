@AbapCatalog.sqlViewName: 'ZCDS_37_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - VDM - Composite View'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
define view zcds_37_logali
  as select from zcds_36_logali
{
//Dimensions
  key Carrid,
  key Connid,
      Countryfr,
      Cityfrom,
      Airpfrom,
      Countryto,
      Cityto,
      Airpto,
//Measures
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'Distid'
      Distance,
      @Semantics.unitOfMeasure: true
      Distid
} 
