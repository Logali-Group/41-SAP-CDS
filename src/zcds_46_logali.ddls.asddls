@AbapCatalog.sqlViewName: 'ZCDS_46_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - BOPF Consumption View'
@ObjectModel: {
    transactionalProcessingDelegated: true,
    compositionRoot: true,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,
    semanticKey: ['Carrid']
 }
@OData.publish: true
define view zcds_46_logali
  as select from zcds_45_logali
{
  key BopfKey,
      Carrid,
      Carrname,
      Currcode,
      Url
}
