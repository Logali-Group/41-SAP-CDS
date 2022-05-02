@AbapCatalog.sqlViewName: 'ZCDS_12_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Text'
@ObjectModel: {
    dataCategory: #TEXT,
    representativeKey: 'Unit'
 }
define view zcds_12_logali
  with parameters
    pLanguage : spras
  as select from t006a
{
      @Semantics.language: true
  key spras as Languaje,
  key msehi as Unit,
      mseh3 as CommercialFormat,
      mseh6 as TechnicalFormat,
      @Semantics.text: true
      @EndUserText.label: 'Unit of Measurement - Text'
      msehl as UnitText
}
where
  spras = $parameters.pLanguage;
