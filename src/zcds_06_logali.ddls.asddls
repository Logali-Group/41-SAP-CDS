@AbapCatalog.sqlViewName: 'ZCDS_06_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Union 1'
define view zcds_06_logali
  as select from zint_products
{
  key product_id  as ProductId,
      description as Description
}
union all select from zext_products
{
  key id   as ProductId,
      name as Description
}
