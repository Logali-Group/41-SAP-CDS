@AbapCatalog.sqlViewName: 'ZCDS_01_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Basic View'
define view zcds_01_logali
  as select from zproducts_log
{
  key product            as Product,
      product_type       as ProductType,
      creation_date_time as CreationDateTime
}
