@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST ITEM'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_SALES_YJKIM_ITEM
  as select from ztsales_u_i
  association to parent ZR_SALES_YJKIM_HDR as _parent on $projection.puuid = _parent.uuid
{
  key uuid          as uuid,
      puuid         as puuid,
      salesorder    as salesorder,
      item_no       as itemno,
      matnr         as matnr,
      meins         as meins,
      @Semantics.quantity.unitOfMeasure : 'meins'
      menge         as menge,
      @Semantics.amount.currencyCode : 'waerk'
      netamount     as netamount,
      waerk         as waerk,
      @Semantics.amount.currencyCode : 'waerk'
      totamount     as totamount,
      @Semantics.user.createdBy: true
      creation_by   as creationby,
      creation_date as creationdt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_dt       as lastdt,
      status        as status,
      _parent
}
