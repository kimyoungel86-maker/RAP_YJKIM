@EndUserText.label: 'File Stream Parameter'
define abstract entity ZD_EXCEL_YJKIM_STREAM
{
  @EndUserText.label: 'Attachment'
  @Semantics.largeObject: {
    mimeType : 'mime_type',
    fileName : 'file_name',
    acceptableMimeTypes: [
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
      'application/vnd.ms-excel'
    ],
    contentDispositionPreference: #ATTACHMENT
  }
  attachment : abap.rawstring(0);

  @UI.hidden : true
  @Semantics.mimeType: true
  mime_type  : abap.char(128);

  @UI.hidden : true
  file_name  : abap.char(255);

  _Header    : association to parent ZD_EXCEL_YJKIM;
}
