@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Alignment'
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_MD_ALIGNMENT
  as select distinct from /dmo/airport
{
  key '|'    as Frame1,
      ':---' as AirportID,
      '|'    as Frame2,
      ':---' as Name,
      '|'    as Frame3,
      ':---' as City,
      '|'    as Frame4,
      ':---' as Country,
      '|'    as Frame5
}
