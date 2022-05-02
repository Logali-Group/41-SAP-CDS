@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Virtual Element'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity zcds_47_logali
  as select from snwd_pd
{

  key node_key                   as NodeKey,
      product_id                 as ProductId,
      type_code                  as TypeCode,
      category                   as Category,
      name_guid                  as NameGuid,
      desc_guid                  as DescGuid,
      supplier_guid              as SupplierGuid,
      tax_tarif_code             as TaxTarifCode,
      measure_unit               as MeasureUnit,
      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      weight_measure             as WeightMeasure,
      weight_unit                as WeightUnit,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                      as Price,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @ObjectModel: {
         readOnly: true,
         virtualElement: true,
         virtualElementCalculatedBy: 'ABAP:ZCL_DISCOUNT_EXIT_LOG'
        }
      @EndUserText.label: 'Price with Discount'
      cast(0 as snwd_unit_price) as Discount,
      currency_code              as CurrencyCode


}
