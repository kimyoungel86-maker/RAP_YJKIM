@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP TEST ITEM'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_SALES_YJKIM_ITEM
  as projection on ZR_SALES_YJKIM_ITEM
{
  key uuid,
      puuid,
      salesorder,
      itemno,
      matnr,
      @Consumption.valueHelpDefinition: [ {
             entity: {
               name: 'I_Unitofmeasure',
               element: 'UnitOfMeasure'
             }
           } ]
      meins,
      @Semantics.quantity.unitOfMeasure : 'meins'
      menge,
      @Semantics.amount.currencyCode : 'waerk'
      netamount,
      @Consumption.valueHelpDefinition: [ {
       entity: {
         name: 'I_Currency',
         element: 'Currency'
       }
      } ]
      waerk,
      @Semantics.amount.currencyCode : 'waerk'
      totamount     as totamount,
      @Semantics.user.createdBy: true
      creationby,
      creationdt,
      @Semantics.systemDateTime.lastChangedAt: true
      lastdt,
      status,
      _parent : redirected to parent ZC_SALES_YJKIM_HDR
}
