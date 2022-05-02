@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Fuzziness Threshold'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity zcds_35_logali
  as select from zint_products
{
  key product_id  as ProductId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.4
      @Search.ranking: #MEDIUM
      description as Description,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      description as Description2
}
