@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST IN UUID'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'sales test UUID', typeNamePlural: 'sales test UUID' }
define root view entity ZI_SALES_YJKIM_U
  as select from ztsales_yjkim_u
{
  key uuid          as Uuid,
      salesorder    as Salesorder,
      order_type    as OrderType,
      sold_to_party as SoldToParty,
      creation_date as CreationDate,
      @Semantics.amount.currencyCode : 'waerk'
      netamount     as Netamount,
      waerk         as Waerk,
      @Semantics.systemDateTime.lastChangedAt: true
      last_dt       as LastDt,
      status        as Status
}
 