@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lines'
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_MD_LINES
  as select from /dmo/airport
{
  key '|'        as Frame1,
      airport_id as AirportID,
      '|'        as Frame2,
      name       as Name,
      '|'        as Frame3,
      city       as City,
      '|'        as Frame4,
      country    as Country,
      '|'        as Frame5
}
