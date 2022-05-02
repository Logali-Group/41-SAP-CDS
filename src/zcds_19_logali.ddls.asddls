@AbapCatalog.sqlViewName: 'ZCDS_19_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Asscocaition Filters'
define view zcds_19_logali
  with parameters
    //@Environment.systemField: #SYSTEM_LANGUAGE
    pLanguage : syst_langu @<Environment.systemField: #SYSTEM_LANGUAGE
  as select from scarr as CompanyCode
  association [0..*] to tcurt as _Currency on _Currency.waers = CompanyCode.currcode
{
  key CompanyCode.carrid                               as Carrid,
      CompanyCode.carrname                             as CarrName,
      CompanyCode.currcode                             as CurrencyCode,
      $parameters.pLanguage                            as Language,
      _Currency[1:spras = $parameters.pLanguage].ktext as CurrencyName,
      _Currency[1:spras = $parameters.pLanguage].ktext as CurrencyName1
}
