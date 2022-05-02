@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Searchable'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity zcds_33_logali
  as select from zint_products
  association [0..*] to zint_products as _Text on $projection.ProductId = _Text.product_id
{
      @ObjectModel.text.association: '_Text'
      @Search.defaultSearchElement: true
  key product_id  as ProductId,
      description as Description,
      _Text
}
