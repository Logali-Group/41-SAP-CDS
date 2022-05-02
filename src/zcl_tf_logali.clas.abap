class zcl_tf_logali definition
  public
  create public.

  public section.

    interfaces if_amdp_marker_hdb.

    class-methods get_flights for table function ztf_01_logali.

  protected section.
  private section.
endclass.



class zcl_tf_logali implementation.

  method get_flights by database function for hdb
                     language sqlscript
                     options read-only
                     using scarr spfli.

 return select airline.mandt    as Client,
           airline.carrname as AirlineName,
           flight.connid    as FlightConn,
           flight.cityfrom  as CityFrom,
           flight.cityto    as CityTo
          from scarr as airline
          inner join spfli flight
          on airline.mandt  = flight.mandt
         and airline.carrid = flight.carrid
         where airline.mandt = :p_Clnt
           and flight.carrid = :p_Airline
      order by airline.carrid, flight.connid;

  endmethod.

endclass.
