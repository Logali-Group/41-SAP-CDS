@AbapCatalog.sqlViewName: 'ZCDS_04_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Session Variables'
define view zcds_04_logali
  as select from t000
{
  $session.client          as Client,
  $session.system_date     as SystemDate,
  $session.system_language as SystemLanguage,
  $session.user            as UserField
}
