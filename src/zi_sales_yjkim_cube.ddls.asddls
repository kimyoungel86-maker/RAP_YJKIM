@AbapCatalog.sqlViewName: 'ZISALESCUBE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Cube'
@Analytics.dataCategory: #CUBE
//@OData.applySupportedForAggregation: #FULL
@VDM.viewType: #CONSUMPTION
define view ZI_SALES_YJKIM_CUBE
  as select from ztsales_u_i as item
  association [0..1] to ztsales_u_h as _header on $projection.puuid = _header.uuid
{
      @UI.lineItem: [ { position: 10 } ]
  key item.uuid             as uuid,

      item.puuid            as puuid,

      @UI.lineItem: [ { position: 30 } ]
      @UI.selectionField: [ { position: 10 } ]
      _header.salesorder    as salesorder,

      @UI.lineItem: [ { position: 40 } ]
      _header.order_type    as orderType,

      @UI.lineItem: [ { position: 50 } ]
      _header.sold_to_party as soldToParty,

      @UI.lineItem: [ { position: 60 } ]
      item.itemno           as itemno,

      @UI.lineItem: [ { position: 70 } ]
      item.matnr            as matnr,

      @Semantics.quantity.unitOfMeasure : 'meins'
      @UI.lineItem: [ { position: 80 } ]
      item.menge            as menge,
      
      @Semantics.unitOfMeasure: true
      item.meins            as meins,

      @Semantics.amount.currencyCode: 'waerk'
      @Aggregation.default: #SUM
      @DefaultAggregation: #SUM
      @UI.lineItem: [ { position: 90 } ]
      item.totamount        as totamount,

      @Semantics.currencyCode: true
      item.waerk            as waerk,
      
      @UI.lineItem: [ { position: 100 } ]
      _header.creation_by   as creationby,
      _header
}
