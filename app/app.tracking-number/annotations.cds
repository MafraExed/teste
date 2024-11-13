using RastreioService as service from '../../srv/service';
annotate service.ContractConversion with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'processType',
                Value : processType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'processStatus',
                Value : processStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'trackingNumber',
                Value : trackingNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesContract',
                Value : salesContract,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesContractItem',
                Value : salesContractItem,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesOrganization',
                Value : salesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'distributionChannel',
                Value : distributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'organizationDivision',
                Value : organizationDivision,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requestedDeliveryDate',
                Value : requestedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'soldToParty',
                Value : soldToParty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchaseOrderByCustomer',
                Value : purchaseOrderByCustomer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerPaymentTerms',
                Value : customerPaymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Label : 'paymentMethod',
                Value : paymentMethod,
            },
            {
                $Type : 'UI.DataField',
                Label : 'material',
                Value : material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requestedQuantity',
                Value : requestedQuantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requestedQuantityUnit',
                Value : requestedQuantityUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'transactionCurrency',
                Value : transactionCurrency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partnerReceiver',
                Value : partnerReceiver,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partnerUnload',
                Value : partnerUnload,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partnerSales',
                Value : partnerSales,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partnerBroker',
                Value : partnerBroker,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pickingDate',
                Value : pickingDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerReferenceDate',
                Value : customerReferenceDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'harvest',
                Value : harvest,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fixedValueDate',
                Value : fixedValueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pricingListType',
                Value : pricingListType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'grossAmount',
                Value : grossAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'companyCode',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchaseOrderType',
                Value : purchaseOrderType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier',
                Value : supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchasingOrganization',
                Value : purchasingOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchasingGroup',
                Value : purchasingGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'incotermsClassification',
                Value : incotermsClassification,
            },
            {
                $Type : 'UI.DataField',
                Label : 'paymentTerms',
                Value : paymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Label : 'plant',
                Value : plant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'storageLocation',
                Value : storageLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'taxCode',
                Value : taxCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requisitionerName',
                Value : requisitionerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesOrderIndustriaECE',
                Value : salesOrderIndustriaECE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchaseOrderECEIndustria',
                Value : purchaseOrderECEIndustria,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesOrderECEReceiver',
                Value : salesOrderECEReceiver,
            },
            {
                $Type : 'UI.DataField',
                Label : 'intercompanySalesContract',
                Value : intercompanySalesContract,
            },
            {
                $Type : 'UI.DataField',
                Label : 'intercompanySalesContractItem',
                Value : intercompanySalesContractItem,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'processType',
            Value : processType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'processStatus',
            Value : processStatus,
        },
        {
            $Type : 'UI.DataField',
            Label : 'trackingNumber',
            Value : trackingNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'salesContract',
            Value : salesContract,
        },
        {
            $Type : 'UI.DataField',
            Label : 'salesContractItem',
            Value : salesContractItem,
        },
    ],
);

