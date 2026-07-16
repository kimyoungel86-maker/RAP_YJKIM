@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST HEADER'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'sales HEADER', typeNamePlural: 'sales HEADER' }
define root view entity ZR_SALES_YJKIM_HDR
  as select from ztsales_u_h
  association [0..1] to /DMO/I_Customer     as _Customer on $projection.customer_id = _Customer.CustomerID
  composition [1..*] of ZR_SALES_YJKIM_ITEM as _Child
{
  key uuid          as uuid,
      salesorder    as salesorder,
      order_type    as ordertype,
      sold_to_party as soldtoparty,
      customer_id   as customer_id,
      @Semantics.user.createdBy: true
      creation_by   as creationby,
      creation_date as creationdt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_dt       as lastdt,
      status        as status,
      _Child,
      _Customer
}
