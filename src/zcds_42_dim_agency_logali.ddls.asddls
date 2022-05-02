@AbapCatalog.sqlViewName: 'ZCDS_42_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Analytics - DIMENSION'
define view zcds_42_dim_agency_logali
  as select from stravelag
  association [0..1] to I_Country as _Country on $projection.Country = _Country.Country
{
      @ObjectModel.text.element: ['TravelAgencyName']
  key agencynum as TravelAgency,
      @Semantics.text: true
      name      as TravelAgencyName,
      @ObjectModel.foreignKey.association: '_Country'
      @Semantics.address.country: true
      country   as Country,
      @Semantics.address.city: true
      city      as City,
      _Country
}
