@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST IN UUID'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zc_SALES_YJKIM_U
  provider contract transactional_query
  as projection on ZI_SALES_YJKIM_U
{
      @UI.facet: [ {
        label: 'General Information',
        id: 'GeneralInfo',
        purpose: #STANDARD,
        position: 10 ,
        type: #IDENTIFICATION_REFERENCE
      } ]
      @UI.lineItem: [{ type: #FOR_ACTION,dataAction: 'uploadexcel', label: 'Upload Excel',
                       position: 10, invocationGrouping: #CHANGE_SET  }]
      @UI.identification: [{type: #FOR_ACTION,dataAction: 'getexchangerate', label: 'Exchangerate'}]
      @UI.hidden: true
  key Uuid         as uuid,
      @UI.identification: [ { position: 10 } ]
      @UI.lineItem: [ { position: 10 } ]
      @UI.selectionField: [ { position: 10  } ]
      @EndUserText.label: 'OrderNum'
      //   @Semantics.readonly:true
      Salesorder   as salesorder,
      @UI.identification: [ {
        position: 20
      } ]
      @UI.lineItem: [ {
        position: 20
      } ]
      @UI.selectionField: [ {
        position: 20
      } ]
      @EndUserText.label: 'Order Type'
      OrderType    as ordertype,
      @UI.identification: [ {
        position: 30
      } ]
      @UI.lineItem: [ {
        position: 30
      } ]
      @UI.selectionField: [ {
        position: 30
      } ]
      @EndUserText.label: 'Sold to party'
      SoldToParty  as soldtoparty,
      @UI.identification: [ {
        position: 40
      } ]
      @UI.lineItem: [ {
        position: 40
      } ]
      @UI.selectionField: [ {
        position: 40
      } ]
      @EndUserText.label: 'Creation date'
      CreationDate as creationdate,
      @UI.identification: [ {
        position: 50
      } ]
      @UI.lineItem: [ {
        position: 50
      } ]
      @UI.selectionField: [ {
        position: 50
      } ]
      @Semantics.amount.currencyCode : 'CURRENCY'
      @EndUserText.label: 'Netamount'
      Netamount    as netamount,
      @UI.identification: [ {
        position: 60
      } ]
      @UI.lineItem: [ {
        position: 60
      } ]
      @UI.selectionField: [ {
        position: 60
      } ]
      @EndUserText.label: 'Currency'
      Waerk        as CURRENCY,
      LastDt       as lastdt,
      Status       as status
}
