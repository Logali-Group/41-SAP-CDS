@AbapCatalog.sqlViewName: 'ZCDS_09_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Quantity Conversions'
define view zcds_09_logali
  with parameters
    p_ToUnit     : abap.unit( 3 ),
    p_UnitFilter : abap.unit( 3 )

  as select from spfli
{
  distance                                                                     as OriginalValue,
  distid                                                                       as OriginalUnit,
  cast( unit_conversion( quantity       => distance,
                         source_unit    => distid,
                         target_unit    => :p_ToUnit,
                         error_handling => 'SET_TO_NULL' ) as abap.dec(10,3) ) as ConvertedValue,
  $parameters.p_ToUnit                                                         as ConvertedUnit
}
where
  distid = $parameters.p_UnitFilter;
