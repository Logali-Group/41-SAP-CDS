@AbapCatalog.sqlViewName: 'ZCDS_10_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Amount Conversions'
define view zcds_10_logali
  with parameters
    p_CurrencyConv : abap.cuky
  as select from sflight
{

  key carrid                                              as AirlineCode,
  key connid                                              as ConnectionNumber,
  key fldate                                              as FlightDate,
      @Semantics.amount.currencyCode: 'Currency'
      price                                               as Price,
      @Semantics.currencyCode: true
      currency                                            as Currency,
      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount             => price,
                           source_currency    => currency,
                           target_currency    => $parameters.p_CurrencyConv,
                           exchange_rate_date => fldate ) as PriceConverted,
      @Semantics.currencyCode: true
      $parameters.p_CurrencyConv                          as ConvertedCurrency

}
where
  currency = 'USD';
