@AbapCatalog.sqlViewName: 'ZCDS_36_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - VDM - Basic View'
@VDM.viewType: #BASIC
define view zcds_36_logali
  as select from spfli
{
  key carrid    as Carrid,
  key connid    as Connid,
      countryfr as Countryfr,
      cityfrom  as Cityfrom,
      airpfrom  as Airpfrom,
      countryto as Countryto,
      cityto    as Cityto,
      airpto    as Airpto,
      @Semantics.quantity.unitOfMeasure: 'Distid'
      distance  as Distance,
      @Semantics.unitOfMeasure: true
      distid    as Distid
}
