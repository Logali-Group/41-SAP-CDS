@AbapCatalog.sqlViewName: 'ZCDS_03_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Case'
define view zcds_03_logali
  as select from spfli
{
  key carrid,
  key connid,
      distance,
      case
        when distance >= 2000 then 'Long Flight'
        when distance >= 1000 and distance < 2000 then 'Medium Flight'
        when distance < 1000 then 'Short Flight'
        else 'Error'
      end as FlightType,

      case distance
         when 2000 then 'Long Flight 2000'
         when 1500 then 'Medium Flight 1500'
      else 'NULL'
      end as FlightType2,

      case
         when distance >= 2000 then 'Long Flight >= 2000'
         when carrid = 'AA' and distance < 2000 then 'Medium Flight for AA'
         else 'Error'
      end as FlightType3,

      case
         when distance = 3000 then case distid
                                        when 'KM' then 'Long Flight KM'
                                        when 'MI' then 'Long Flight MI'
                                        else 'NULL'
                                    end
         when distance >= 2000 then 'Medium Flight'
         else 'Error'
      end as FlightType4

}
