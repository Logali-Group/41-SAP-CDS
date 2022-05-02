@AbapCatalog.sqlViewName: 'ZCDS_07_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Union 2'
define view zcds_07_logali
  as select from scarr
{
  key 'A'                  as Field1,
  key 'A'                  as Field2,
      cast(1 as abap.int1) as Field3
}
union select distinct from scarr
{
  key 'A'                  as Field1,
  key 'B'                  as Field2,
      cast(2 as abap.int1) as Field3

}
union select distinct from scarr
{
  key 'A'                  as Field1,
  key 'C'                  as Field2,
      cast(3 as abap.int1) as Field3

}
