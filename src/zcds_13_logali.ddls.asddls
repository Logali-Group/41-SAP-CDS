@AbapCatalog.sqlViewName: 'ZCDS_13_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Text for Association'
@ObjectModel: {
  dataCategory: #TEXT,
  representativeKey: 'CountryKey'
}
define view zcds_13_logali
  as select from t005t
{
  key land1   as CountryKey,
      @Semantics.language: true
  key spras   as Language,
      @Semantics.text: true
      @EndUserText.label: 'Country Name'
      landx50 as CountryName
}
