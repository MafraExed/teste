//@ui5-bundle agr/fs/trackingnumber/Component-preload.js
sap.ui.require.preload({
	"agr/fs/trackingnumber/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("agr.fs.trackingnumber.Component",{metadata:{manifest:"json"}})});
},
	"agr/fs/trackingnumber/ext/Fragmentos/Cancelar.fragment.xml":'<core:FragmentDefinition\r\n    xmlns="sap.m"\r\n    xmlns:core="sap.ui.core"\r\n    xmlns:app="http://schemas.sap.com/sapui5/extension/sap.ui.core.CustomData/1"\r\n    xmlns:l="sap.ui.layout"\r\n    xmlns:f="sap.ui.layout.form"\r\n><Dialog\r\n        class="sapUiContentPadding"\r\n        title="Cancelar rastreio: {Aux>/Dados/Rastreio}"\r\n    ><content><ComboBox items="{\r\n\t\t\t\t\tpath: \'/AbgruHelpSet\',\r\n\t\t\t\t\tsorter: { path: \'Bezei\' }\r\n\t\t\t\t}" selectedKey="{Aux>/Motivo}" width="100%" placeholder="Informe o motivo de recusa"><core:Item key="{Abgru}" text="{Bezei}" /></ComboBox></content><footer><Toolbar><content><ToolbarSpacer /><Button type="Accept" text="{i18n>save}" press="onCancela"/><Button text="{i18n>cancel}" type="Reject" press="FechaCancelar"/></content></Toolbar></footer></Dialog></core:FragmentDefinition>',
	"agr/fs/trackingnumber/ext/Fragmentos/Editar.fragment.xml":'<core:FragmentDefinition xmlns:mvc="sap.ui.core.mvc"\r\n\txmlns:l="sap.ui.layout"\r\n\txmlns:f="sap.ui.layout.form"\r\n\txmlns:core="sap.ui.core"\r\n\txmlns="sap.m"\r\n\txmlns:app="http://schemas.sap.com/sapui5/extension/sap.ui.core.CustomData/1"\r\n\txmlns:form="sap.ui.comp.smartform"\r\n\txmlns:sf="sap.ui.comp.smartfield"><Dialog id="order-conversion-dialog" contentWidth="90%" contentHeight="90%" title="{i18n>documentCreationData}"><ObjectHeader id="order-object-header" iconDensityAware="false" responsive="true" fullScreenOptimized="true" title="Contrato: {Aux>/Contrato/SalesContract}" class="sapUiResponsivePadding--header"><ObjectAttribute id="sales-contract-item-objattr" title="{i18n>salesContractItem}" text="{ path: \'Aux>/Contrato/SalesContractItem\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   type: \'sap.ui.model.odata.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   constraints: {\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   \tisDigitSequence: true,\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmaxLength: 6\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   }\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  }"/><ObjectAttribute id="sold-to-party-objattr" title="{i18n>soldToParty}" text="{Aux>/Contrato/SoldToParty} - {Aux>/Contrato/to_BusinessPartner/BusinessPartnerFullName}"/><ObjectAttribute id="material-objattr" title="{i18n>material}" text="{Aux>/Contrato/Material} - {Aux>/Contrato/to_Material/Material_Text}"/><ObjectAttribute id="creation-date-objattr" title="{i18n>creationDate}" text="{Aux>/Contrato/CreationDate}"/><ObjectAttribute id="total-quantity-objattr" title="{i18n>totalQuantity}" text="{ parts: [\'Aux>/Contrato/OrderQuantity\', \'Aux>/Contrato/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/><ObjectAttribute id="scheduled-quantity-objattr" title="{i18n>scheduledQuantity}" text="{ parts: [\'Aux>/Contrato/ScheduledQuantity\', \'Aux>/Contrato/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/><ObjectAttribute id="available-quantity-objattr" title="{i18n>availableQuantity}" text="{ parts: [\'Aux>/Contrato/AvailableQuantity\', \'Aux>/Contrato/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/></ObjectHeader><f:Form id="intercompanySalesOrder-form" editable="true"><f:title><core:Title text="{i18n>intercompanyContractSelectionTitle}" id="intercompany-conversion-title"/></f:title><f:layout><f:ColumnLayout columnsM="3" columnsL="4" columnsXL="4"/></f:layout><f:formContainers><f:FormContainer><f:formElements><f:FormElement label="{i18n>contractNumber}"><f:fields><Input id="intercompanySalesContract" value="{Aux>/InterCompanyContratoVenda/SalesContract}" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onIntercompanyContractHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>soldToParty}"><f:fields><Text text="{Aux>/InterCompanyContratoVenda/SoldToParty} - {Aux>/Tracking/intercompanySoldToPartyDescription}"/></f:fields></f:FormElement><f:FormElement label="{i18n>creationDate}"><f:fields><Text text="{Aux>/InterCompanyContratoVenda/CreationDate}"/></f:fields></f:FormElement><f:FormElement label="{i18n>salesContractItem}"><f:fields><Text text="{ path: \'Aux>/InterCompanyContratoVenda/SalesContractItem\',\r\n\t\t\t\t\t\t\t\t\t\t\t  type: \'sap.ui.model.odata.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t  constraints: {\r\n\t\t\t\t\t\t\t\t\t\t\t   isDigitSequence: true,\r\n\t\t\t\t\t\t\t\t\t\t\t    maxLength: 6\r\n\t\t\t\t\t\t\t\t\t\t\t  }\r\n\t\t\t\t\t\t\t\t\t\t\t}"/></f:fields></f:FormElement><f:FormElement label="{i18n>material}"><f:fields><Text text="{Aux>/InterCompanyContratoVenda/Material} - {Aux>/Tracking/intercompanyMaterialDescription}" /></f:fields></f:FormElement><f:FormElement label="{i18n>totalQuantity}"><f:fields><Text text="{ parts: [\'Aux>/InterCompanyContratoVenda/OrderQuantity\', \'Aux>/InterCompanyContratoVenda/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/></f:fields></f:FormElement><f:FormElement label="{i18n>scheduledQuantity}" visible="{Aux>/Tracking/intercompanySelected}"><f:fields><Text text="{ parts: [\'Aux>/InterCompanyContratoVenda/ScheduledQuantity\', \'Aux>/InterCompanyContratoVenda/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/></f:fields></f:FormElement><f:FormElement label="{i18n>availableQuantity}" visible="{Aux>/Tracking/intercompanySelected}"><f:fields><Text text="{ parts: [\'Aux>/InterCompanyContratoVenda/AvailableQuantity\', \'Aux>/InterCompanyContratoVenda/ScheduledQuantityUnit\'], formatter: \'.formatQuantity\' }"/></f:fields></f:FormElement></f:formElements></f:FormContainer></f:formContainers></f:Form><l:Splitter width="98%" id="order-splitter"><VBox class="sapUiSmallMargin" id="order-vbox"><f:Form id="weeklyOrder-form" editable="true"><f:title><core:Title text="{i18n>weeklyConversionTitle}" id="weekly-conversion-title"/></f:title><f:layout><f:ColumnLayout columnsM="3" columnsL="3" columnsXL="3"/></f:layout><f:formContainers><f:FormContainer><f:formElements><f:FormElement label="{i18n>processType}"><f:fields><Select id="processType" forceSelection="false" selectedKey="{Aux>/Tracking/processType}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'Aux>/OrderType\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tsorter: { path: \'key\' }\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{Aux>key}" text="{Aux>value}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>salesOrganization}"><f:fields><Select id="salesOrganization" forceSelection="false" selectedKey="{Aux>/Tracking/salesOrganization}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/SalesOrganization\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tparameters: {\r\n\t\t\t\t\t\t\t\t\t\t\t\t\texpand: \'to_Text\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{SalesOrganization}" text="{SalesOrganization} - {SalesOrganization_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>distributionChannel}"><f:fields><Select id="distributionChannel" forceSelection="false" selectedKey="{Aux>/Tracking/distributionChannel}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/DistributionChannel\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tparameters: { \r\n\t\t\t\t\t\t\t\t\t\t\t\t\texpand: \'to_Text\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{DistributionChannel}" text="{DistributionChannel} - {DistributionChannel_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>organizationDivision}"><f:fields><Select id="organizationDivision" forceSelection="false" selectedKey="{Aux>/Tracking/organizationDivision}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/Division\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tparameters: { \r\n\t\t\t\t\t\t\t\t\t\t\t\t\texpand: \'to_Text\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{Division}" text="{Division} - {Division_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>withdrawalDate}"><f:fields><DatePicker id="requestedDeliveryDate" value="{Aux>/Tracking/requestedDeliveryDate}" required="true" width="100%" editable="true"/></f:fields></f:FormElement><f:FormElement label="{i18n>soldToParty}"><f:fields><Input id="soldToParty" value="{Aux>/Tracking/soldToParty}" app:weeklyProperty="soldToParty" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onCustomerValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>supplierBrokers}"><f:fields><Input id="partnerBroker" value="{Aux>/Tracking/partnerBroker}" app:weeklyProperty="partnerBroker" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onSupplierValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>customerReference}"><f:fields><Input id="purchaseOrderByCustomer" value="{ path : \'Aux>/Tracking/purchaseOrderByCustomer\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t type : \'sap.ui.model.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t constraints : {\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   minLength: 1,\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   maxLength: 80 }\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}" editable="true"/></f:fields></f:FormElement><f:FormElement label="{i18n>paymentMethod}"><f:fields><Select id="paymentMethod" forceSelection="false" selectedKey="{Aux>/Tracking/paymentMethod}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/PaymentMethod\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tfilters : [\r\n            \t\t\t\t\t\t\t\t\t\t{ path : \'Country\', operator : \'EQ\', value1 : \'BR\'}\r\n        \t\t\t\t\t\t\t\t\t\t]\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="true"><core:Item key="{PaymentMethod}" text="{PaymentMethod} - {PaymentMethodName}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>effectiveDate}"><f:fields><DatePicker id="fixedValueDate" value="{Aux>/Tracking/fixedValueDate}" required="true" width="100%" editable="true"/></f:fields></f:FormElement><f:FormElement label="{i18n>receivingCustomer}"><f:fields><Input id="partnerReceiver" value="{Aux>/Tracking/partnerReceiver}" app:weeklyProperty="partnerReceiver" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onCustomerValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>seller}"><f:fields><Input id="partnerSales" value="{Aux>/Tracking/partnerSales}" app:weeklyProperty="partnerSales" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onCustomerValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>customerReferenceDate}"><f:fields><DatePicker id="customerReferenceDate" valueFormat="yyyy-MM-dd" value="{Aux>/Tracking/customerReferenceDate}" required="true" width="100%" editable="true"/></f:fields></f:FormElement><f:FormElement label="{i18n>harvest}"><f:fields><Select id="harvest" forceSelection="false" selectedKey="{Aux>/Tracking/harvest}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/Harvest\'\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="true"><core:Item key="{Harvest}" text="{Harvest} - {HarvestDescription}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>quantity}"><f:fields><Input id="Number" type="Number" value="{ path : \'Aux>/Tracking/requestedQuantity\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  type : \'sap.ui.model.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  constraints : {\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t    minLength: 1,\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmaxLength: 20\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t      }\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}" editable="true"/></f:fields></f:FormElement><f:FormElement label="{i18n>unloadCustomer}"><f:fields><Input id="partnerUnload" value="{Aux>/Tracking/partnerUnload}" app:weeklyProperty="partnerUnload" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onCustomerValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>paymentCondition}"><f:fields><Select id="customerPaymentTerms" forceSelection="false" selectedKey="{Aux>/Tracking/customerPaymentTerms}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/PaymentTermsText\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tfilters : [\r\n            \t\t\t\t\t\t\t\t\t\t{ path : \'Language\', operator : \'EQ\', value1 : \'PT\'}\r\n        \t\t\t\t\t\t\t\t\t\t]\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="true"><core:Item key="{PaymentTerms}" text="{PaymentTerms} - {PaymentTermsName}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>priceListType}"><f:fields><Select id="pricingListType" forceSelection="false" selectedKey="{Aux>/Tracking/pricingListType}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/PriceList\'\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="true"><core:Item key="{Pricelist}" text="{Pricelist} - {Pricelist_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>grossAmount}"><f:fields><Input id="grossAmount" type="Number" value="{ path : \'Aux>/Tracking/grossAmount\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   type : \'sap.ui.model.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   constraints : {\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     minLength: 1,\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t maxLength: 20\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   }\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  }" editable="{Aux>/Editavel}"/></f:fields></f:FormElement></f:formElements></f:FormContainer></f:formContainers></f:Form><layoutData><l:SplitterLayoutData size="70%" resizable="false"/></layoutData></VBox><VBox class="fs-table-margin"><Table id="shipping-divisions" items="{Aux>/Tracking/shippingDivisions}" headerText="{i18n>shippingDivisions}"><columns><Column><Text text="{i18n>loadingDate}"/></Column><Column demandPopin="true"><Text text="{i18n>scheduledQuantity}"/></Column></columns><items><ColumnListItem vAlign="Middle"><cells><Text text="{Aux>/Tracking/loadingDate}"/><Text text="{Aux>/Tracking/scheduledQuantity}"/></cells></ColumnListItem></items></Table><layoutData><l:SplitterLayoutData size="auto"/></layoutData></VBox></l:Splitter><VBox><f:Form id="purchaseOrder-form" editable="true"><f:title><core:Title text="{i18n>intercompanyPurchaseOrder}"/></f:title><f:layout><f:ColumnLayout columnsM="3" columnsL="4" columnsXL="4"/></f:layout><f:formContainers><f:FormContainer><f:formElements><f:FormElement label="{i18n>requester}"><f:fields><Input id="requisitionerName" maxLength="12" value="{\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpath : \'Aux>/Tracking/requisitionerName\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttype : \'sap.ui.model.type.String\',\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tconstraints : { minLength: 1,\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmaxLength: 12\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  }\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t        }" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>supplier}"><f:fields><Input id="supplier" value="{Aux>/Tracking/supplier}" app:weeklyProperty="supplier" showValueHelp="true" valueHelpOnly="true" valueHelpRequest=".onSupplierValueHelp" editable="{Aux>/Editavel}"/></f:fields></f:FormElement><f:FormElement label="{i18n>purchaseOrganization}"><f:fields><Select id="purchasingOrganization" forceSelection="false" selectedKey="{Aux>/Tracking/purchasingOrganization}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\tpath: \'/PurchasingOrganization\'\r\n\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{PurchasingOrganization}" text="{PurchasingOrganization} - {PurchasingOrganizationName}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>purchaseGroup}"><f:fields><Select id="purchasingGroup" forceSelection="false" selectedKey="{Aux>/Tracking/purchasingGroup}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\tpath: \'/PurchasingGroup\'\r\n\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{PurchasingGroup}" text="{PurchasingGroup} - {PurchasingGroupName}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>incoterms}"><f:fields><Select id="incotermsClassification" forceSelection="false" selectedKey="{Aux>/Tracking/incotermsClassification}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/IncotermsClassification\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{IncotermsClassification}" text="{IncotermsClassification} - {IncotermsClassification_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>paymentCondition}"><f:fields><Select id="paymentTerms" forceSelection="false" selectedKey="{Aux>/Tracking/paymentTerms}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/PaymentTermsText\',\r\n\t\t\t\t\t\t\t\t\t\t\t\tfilters : [\r\n            \t\t\t\t\t\t\t\t\t\t{ path : \'Language\', operator : \'EQ\', value1 : \'PT\'}\r\n        \t\t\t\t\t\t\t\t\t\t]\r\n\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{PaymentTerms}" text="{PaymentTerms} - {PaymentTermsName}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>purchaseIVA}"><f:fields><Select id="taxCode" forceSelection="false" selectedKey="{Aux>/Tracking/taxCode}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/TaxCode\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{TaxCode}" text="{TaxCode} - {TaxCode_Text}" /></Select></f:fields></f:FormElement><f:FormElement label="{i18n>storageLocation}"><f:fields><Select id="storageLocation" forceSelection="false" selectedKey="{Aux>/Tracking/storageLocation}" items="{\r\n\t\t\t\t\t\t\t\t\t\t\t\t\tpath: \'/StorageLocation\'\r\n\t\t\t\t\t\t\t\t\t\t\t\t}" editable="{Aux>/Editavel}"><core:Item key="{StorageLocation}" text="{StorageLocation} - {StorageLocationDescription}" /></Select></f:fields></f:FormElement></f:formElements></f:FormContainer></f:formContainers></f:Form></VBox><footer><Toolbar><content><ToolbarSpacer/><Button type="Accept" text="{i18n>save}" press="onSalvaEdicao"/><Button text="{i18n>cancel}" type="Reject" press="FechaEditar" ariaHasPopup="Dialog"/></content></Toolbar></footer></Dialog></core:FragmentDefinition>',
	"agr/fs/trackingnumber/ext/controller/Extend.controller.js":function(){
sap.ui.define(["sap/ui/core/mvc/ControllerExtension","sap/ui/model/json/JSONModel","sap/ui/core/format/NumberFormat"],function(t,e,a){"use strict";return t.extend("agr.fs.trackingnumber.ext.controller.Extend",{override:{onInit:function(){var t=this.base.getExtensionAPI().getModel()}},buscaDados:async function(t){let a;let n=new e;await n.loadData(t,null,true,"GET",false,true);a=n.getData();return a},formatQuantity:function(t,e){const n={maxFractionDigits:3,minFractionDigits:3,preserveDecimals:true,showMeasure:true};const i=a.getUnitInstance(n);return i.format(t,e)},formataData:function(t){let e=new Date(t);let a=`${String(e.getUTCDate()).padStart(2,"0")}/${String(e.getUTCMonth()+1).padStart(2,"0")}/${e.getUTCFullYear()}`;return a},onEdita:async function(){let t=this.base.getExtensionAPI().getSelectedContexts()[0].sPath;let a=this.base.getExtensionAPI().getModel().sServiceUrl;let n=a+t;let i=a;let s=a;try{let t=await this.buscaDados(n);t.requestedDeliveryDate=this.formataData(t.requestedDeliveryDate);t.fixedValueDate=this.formataData(t.fixedValueDate);i+="Contract/"+t.salesContract+"/"+t.salesContractItem;let a=await this.buscaDados(i);a.CreationDate=this.formataData(a.CreationDate);s+="Contract/"+t.intercompanySalesContract+"/"+t.intercompanySalesContractItem;let r=await this.buscaDados(s);r.CreationDate=this.formataData(r.CreationDate);let o=new e;let l={Editavel:false,Tracking:t,Contrato:a,InterCompanyContratoVenda:r,OrderType:[{key:"CLIENTE_FINAL",value:"Cliente Final"},{key:"ARMAZEM_MI",value:"Armazém Mercado Interno"},{key:"ARMAZEM_ME",value:"Armazém Mercado Externo"},{key:"IC_FINCUST",value:"FIN CUST"}]};o.setData(l);this.getView().setModel(o,"Aux");if(this.Editar){this.Editar.destroy()}this.Editar=sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Editar",this);this.getView().addDependent(this.Editar);this.Editar.open()}catch(t){sap.m.MessageBox.error("Erro")}},onCancelar:async function(){let t=this.base.getExtensionAPI().getSelectedContexts()[0].sPath;let a=this.base.getExtensionAPI().getModel().sServiceUrl;let n=a+t;try{let t=await this.buscaDados(n);if(t.processStatus!=="90"){sap.m.MessageBox.error("Não será permitido cancelar o Rastreio, pois existe Romaneio em andamento");return}let a=new e;let i={Editavel:false,Dados:t,Motivo:""};a.setData(i);this.getView().setModel(a,"Aux");if(this.Cancela){this.Cancela.destroy()}this.Cancela=sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Cancelar",this);this.getView().addDependent(this.Cancela);this.Cancela.open()}catch(t){}oModelAux.setData(objeto);this.getView().setModel(oModelAux,"Aux");if(this.Cancela){this.Cancela.destroy()}this.Cancela=sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Cancelar",this);this.getView().addDependent(this.Cancela);this.Cancela.open()},FechaEditar:function(){this.Editar.close();this.Editar.destroy()},FechaCancelar:function(){this.Cancela.close();this.Cancela.destroy()},onCancela:function(){let t=this.getView().getModel("Aux");let e=t.getData().Dados;let a=t.getData().Motivo},onSalvaEdicao:function(){let t=this.getView().getModel("Aux")}})});
},
	"agr/fs/trackingnumber/i18n/i18n.properties":'# This is the resource bundle for agr.fs.trackingnumber\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Tracking Number\n\n#YDES: Application description\nappDescription=Tracking Number\n\n#XFLD,78\nflpTitle=Administra\\u00e7\\u00e3o de Rastreios\n\n#XFLD,78\nflpSubtitle=Administra\\u00e7\\u00e3o de Rastreios\n\n#XTIT: Titles\nintercompanyContractSelectionTitle=Contrato de Venda (Industria x ECE)\ndocumentCreationData=Administra\\u00e7\\u00e3o de Rastreios\nweeklyConversionTitle=Ordem de Venda - Programa Semanal\nshippingDivisions=Divis\\u00f5es de Remessa\nintercompanyPurchaseOrder=Pedido de Compra Intercompany\n\n#XTIT: Document Creation Data\ncustomer=Cliente\ncustomerName=Nome\nsupplier=Fornecedor\nsupplierName=Nome\nsalesContractItem=Item\nsoldToParty=Cliente Emissor\nmaterial=Material\nmaterialDescription=Descri\\u00e7\\u00e3o\ncreationDate=Data de Cria\\u00e7\\u00e3o\ntotalQuantity=Qtd. Total\nscheduledQuantity=Qtd. Programada\navailableQuantity=Qtd. Dispon\\u00edvel\nwithdrawalDate=Data de Retirada\nsupplierBrokers=Fornecedor (Broker)\ncustomerReference=Refer\\u00eancia Cliente\npaymentMethod=Forma de Pagamento\neffectiveDate=Data Efetiva\nreceivingCustomer=Cliente Recebedor\nseller=Vendedor\ncustomerReferenceDate=Data Refer\\u00eancia Cliente\nharvest=Safra\nquantity=Quantidade\nunloadCustomer=Cliente Descarga\nsalesArea=\\u00c1rea de Vendas\npriceListType=Tipo Lista de Pre\\u00e7o\nnetValue=Valor Liquido\nprocessType=Tipo de processo\nsalesOrganization=Organiza\\u00e7\\u00e3o de Vendas\ndistributionChannel=Canal de distribui\\u00e7\\u00e3o\norganizationDivision=Setor de Atividade\ngrossAmount=Pre\\u00e7o Bruto\nstorageLocation=Dep\\u00f3sito\n\nrequester=Requisitante\nsupplier=Fornecedor\npurchaseOrganization=Organiza\\u00e7\\u00e3o de Compras\npurchaseGroup=Grupo de Comprador\nincoterms=Incoterms\npaymentCondition=Condi\\u00e7\\u00e3o de Pagamento\npurchaseIVA=IVA de Compra\n\nloadingDate=Data do Carregamento\n\ncontractNumber=N\\u00b0 Contrato\n\nsave=Salvar\ncancel=Cancelar\n\n# Messages\njobRequisitionCreationError=Erro ao criar solicita\\u00e7\\u00e3o de convers\\u00e3o\njobRequisitionCreationSuccess=Solicita\\u00e7\\u00e3o de convers\\u00e3o criada com sucesso - N\\u00b0 Rastreio {0}',
	"agr/fs/trackingnumber/manifest.json":'{"_version":"1.59.0","sap.app":{"id":"agr.fs.trackingnumber","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.13.2","toolsId":"edaffa0f-0c1f-4115-bddd-81a49fe8aea1"},"dataSources":{"mainService":{"uri":"Rastreio/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"agr.fs.tracking-number-display":{"semanticObject":"agr.fs.tracking-number","action":"display","title":"{{flpTitle}}","subTitle":"{{flpSubtitle}}","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.130.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"agr.fs.trackingnumber.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"ContractConversionList","target":"ContractConversionList"}],"targets":{"ContractConversionList":{"type":"Component","id":"ContractConversionList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/ContractConversion","variantManagement":"Page","navigation":{},"initialLoad":"Enabled","controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"columns":{"DataField::trackingNumber":{"width":"auto"},"DataField::processType":{"width":"auto"},"DataField::processStatus":{"width":"auto"},"DataField::requestedDeliveryDate":{"width":"auto"}},"tableSettings":{"enableExport":true,"selectAll":false,"selectionMode":"Single"},"actions":{"idEditar":{"press":".extension.agr.fs.trackingnumber.ext.controller.Extend.onEdita","visible":true,"enabled":true,"requiresSelection":true,"text":"Editar"},"idCancelar":{"press":".extension.agr.fs.trackingnumber.ext.controller.Extend.onCancelar","visible":true,"enabled":true,"requiresSelection":true,"text":"Cancelar"}}}}}}}}},"extends":{"extensions":{"sap.ui.controllerExtensions":{"sap.fe.templates.ListReport.ListReportController":{"controllerName":"agr.fs.trackingnumber.ext.controller.Extend"}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"control-tower"}}'
});
//# sourceMappingURL=Component-preload.js.map
