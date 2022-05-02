@AbapCatalog.sqlViewName: 'ZCDS_45_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - BOPF Airlines'
@ObjectModel: {
   transactionalProcessingEnabled: true,
   usageType.dataClass: #TRANSACTIONAL,
   modelCategory: #BUSINESS_OBJECT,
   compositionRoot: true,
   createEnabled: true,
   updateEnabled: true,
   deleteEnabled: true,
   writeActivePersistence: 'zscarr_log',
   semanticKey: ['carrid']
}
define view zcds_45_logali
  as select from zscarr_log
{
      @ObjectModel.readOnly: true
  key bopfkey  as BopfKey,
      carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
