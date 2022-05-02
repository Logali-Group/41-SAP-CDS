@AbapCatalog.sqlViewName: 'ZCDS_08_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Aggregations'
define view zcds_08_logali
  as select from zcds_07_logali
{
  key Field1,
      min(Field3)                     as FieldMin,
      max(Field3)                     as FieledMax,
      avg(Field3)                     as FieldAvg,
      cast( sum(Field3) as abap.int4) as FieldSum1,
      sum(Field3)                     as FieldSum2,
      count( distinct Field2 )        as FieldCountDistinct,
      count(*)                        as FieldCountAll
}
group by
  Field1
