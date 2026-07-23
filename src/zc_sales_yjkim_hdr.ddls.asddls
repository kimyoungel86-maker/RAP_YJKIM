@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST HEADER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_SALES_YJKIM_HDR
  provider contract transactional_query
  as projection on ZR_SALES_YJKIM_HDR
{
  key uuid,
      salesorder,
      ordertype,
      @Consumption.valueHelpDefinition: [ {
      entity: {
      name: '/DMO/I_Customer',
      element: 'CustomerID'
      }
      } ]
      @ObjectModel.text.element:[ 'customername' ]
      customer_id,
      _Customer.LastName as customername,
      soldtoparty,
      @Semantics.user.createdBy: true
      creationby,
      creationdt,
      waerk,
      @Semantics.amount.currencyCode : 'waerk'
      totamount     as totamount,
      @Semantics.systemDateTime.lastChangedAt: true
      lastdt,
      status,
      _Child : redirected to composition child ZC_SALES_YJKIM_ITEM,
      _Customer
}
