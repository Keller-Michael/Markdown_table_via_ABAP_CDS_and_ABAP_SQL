@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Headline'
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_MD_HEADER
  as select distinct from /dmo/airport
{
  key '|'                                       as Frame1,
      cast( '**Airport ID**' as abap.char(15) ) as AirportID,
      '|'                                       as Frame2,
      cast( 'Name' as abap.char(40) )           as Name,
      '|'                                       as Frame3,
      cast( 'City' as abap.char(40) )           as City,
      '|'                                       as Frame4,
      cast( 'Country' as abap.char(10) )        as Country,
      '|'                                       as Frame5
}
