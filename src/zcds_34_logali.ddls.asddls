@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Conversion Value Help Request'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity zcds_34_logali
  as select from zsalesorders
  association [0..1] to zcds_33_logali as _Products on $projection.ProductA = _Products.ProductId
{
  key vbeln   as Vbeln,
  key posnr   as Posnr,
      @ObjectModel.foreignKey.association: '_Products'
      product as ProductA,
      @Consumption.valueHelpDefinition: [{ association: '_Products' }]
      product as ProductB,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zcds_33_logali',
                                                     element: 'ProductId'} }]
      product as ProductC,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zcds_33_logali',
                                                     element: 'ProductId'},
                                            additionalBinding: [{ localElement: 'Description',
                                                                  element: 'Description' }] }]
      product as ProductD,
      ''      as Description,
      _Products
}
