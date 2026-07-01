@EndUserText.label: 'EXCEL UPLOAD'
define root abstract entity ZD_EXCEL_YJKIM
{
  @UI.hidden        : true
  @Consumption.hidden:true
  dummy             : abap_boolean;
  _StreamProperties : composition[1] of ZD_EXCEL_YJKIM_STREAM;
}
