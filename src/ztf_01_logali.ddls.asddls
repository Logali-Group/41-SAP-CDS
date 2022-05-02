@EndUserText.label: 'Table Functions'
//@ClientHandling: {
//   algorithm: #NONE,
//   type: #CLIENT_INDEPENDENT
//   }
define table function ztf_01_logali
  with parameters
    @Environment.systemField: #CLIENT
    p_Clnt    : abap.clnt,
    p_Airline : s_carr_id
returns
{
  Client      : abap.clnt;
  AirlineName : s_carrname;
  FlightConn  : s_conn_id;
  CityFrom    : s_from_cit;
  CityTo      : s_to_city;
}
implemented by method
  zcl_tf_logali=>get_flights;
