@Metadata.ignorePropagatedAnnotations: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Markdown table'
define view entity ZC_MD_TABLE
  as select from ZI_MD_HEADER
{
  key Frame1,
      AirportID,
      Frame2,
      Name,
      Frame3,
      City,
      Frame4,
      Country,
      Frame5
}

union select from ZI_MD_ALIGNMENT
{
  key Frame1,
      AirportID,
      Frame2,
      Name,
      Frame3,
      City,
      Frame4,
      Country,
      Frame5
}
union select from ZI_MD_LINES
{
  key Frame1,
      AirportID,
      Frame2,
      Name,
      Frame3,
      City,
      Frame4,
      Country,
      Frame5
}
