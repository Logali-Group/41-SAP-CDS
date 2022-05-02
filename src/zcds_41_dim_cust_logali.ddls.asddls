@AbapCatalog.sqlViewName: 'ZCDS_41_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Analytics - DIMENSION'
@Analytics.dataCategory: #DIMENSION
define view zcds_41_dim_cust_logali
  as select from scustom
  association [0..1] to I_Country as _Country on $projection.Country = _Country.Country
{
      @ObjectModel.text.element: ['CustomerName']
  key id      as Customer,
      @Semantics.text: true
      name    as CustomerName,
      @ObjectModel.foreignKey.association: '_Country'
      country as Country,
      @Semantics.address.city: true
      city    as City,
      _Country
}
