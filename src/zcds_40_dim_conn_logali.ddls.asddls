@AbapCatalog.sqlViewName: 'ZCDS_40_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Analytics - DIMENSION'
@Analytics.dataCategory: #DIMENSION
@ObjectModel.representativeKey: 'FlightConnection'
define view zcds_40_dim_conn_logali
  as select from spfli
  association [0..1] to zcds_39_dim_airlines_logali as _Airline on $projection.Airline = _Airline.Airline

{
      @ObjectModel.foreignKey.association: '_Airline'
  key carrid                                  as Airline,
      @ObjectModel.text.element: ['Destination']
  key connid                                  as FlightConnection,
      concat(cityfrom, concat(' - ', cityto)) as Destination,
      _Airline

}
