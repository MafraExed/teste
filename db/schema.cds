using {
  managed,
  cuid
} from '@sap/cds/common';

namespace fs.agr.ct.trackingnumber.db;

@cds.persistence.exists
entity ContractConversion : cuid, managed {
  processType                   : String(20);
  processStatus                 : String(5);
  trackingNumber                : String(10);
  salesContract                 : String(10);
  salesContractItem             : String(6);
  // Sales Order Data
  salesOrganization             : String(4);
  distributionChannel           : String(2);
  organizationDivision          : String(2);
  requestedDeliveryDate         : DateTime;
  soldToParty                   : String(10);
  purchaseOrderByCustomer       : String(80);
  customerPaymentTerms          : String(4);
  paymentMethod                 : String(1);
  material                      : String(18);
  requestedQuantity             : String(18);
  requestedQuantityUnit         : String(3);
  transactionCurrency           : String(5);
  partnerReceiver               : String(10);
  partnerUnload                 : String(10);
  partnerSales                  : String(10);
  partnerBroker                 : String(10);
  pickingDate                   : Date;
  customerReferenceDate         : Date;
  harvest                       : String(20);
  fixedValueDate                : Date;
  pricingListType               : String(2);
  grossAmount                   : String(18);
  // Purchase Order Data
  companyCode                   : String(4);
  purchaseOrderType             : String(4);
  supplier                      : String(10);
  purchasingOrganization        : String(4);
  purchasingGroup               : String(3);
  incotermsClassification       : String(6);
  paymentTerms                  : String(4);
  plant                         : String(4);
  storageLocation               : String(4);
  taxCode                       : String(2);
  requisitionerName             : String(80);
  // Generated Documents
  salesOrderIndustriaECE        : String(10);
  purchaseOrderECEIndustria     : String(10);
  salesOrderECEReceiver         : String(10);
  // Intercompany Contract Data
  intercompanySalesContract     : String(10);
  intercompanySalesContractItem : String(6);
}
