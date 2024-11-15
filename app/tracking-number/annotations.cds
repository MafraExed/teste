using RastreioService as service from '../../srv/service';
annotate service.ContractConversion with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : processType,
            },
            {
                $Type : 'UI.DataField',
                Value : processStatus,
            },
            {
                $Type : 'UI.DataField',
                Value : trackingNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : salesContract,
            },
            {
                $Type : 'UI.DataField',
                Value : salesContractItem,
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Value : distributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Value : organizationDivision,
            },
            {
                $Type : 'UI.DataField',
                Value : requestedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Value : soldToParty,
            },
            {
                $Type : 'UI.DataField',
                Value : purchaseOrderByCustomer,
            },
            {
                $Type : 'UI.DataField',
                Value : customerPaymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Value : paymentMethod,
            },
            {
                $Type : 'UI.DataField',
                Value : material,
            },
            {
                $Type : 'UI.DataField',
                Value : requestedQuantity,
            },
            {
                $Type : 'UI.DataField',
                Value : requestedQuantityUnit,
            },
            {
                $Type : 'UI.DataField',
                Value : transactionCurrency,
            },
            {
                $Type : 'UI.DataField',
                Value : partnerReceiver,
            },
            {
                $Type : 'UI.DataField',
                Value : partnerUnload,
            },
            {
                $Type : 'UI.DataField',
                Value : partnerSales,
            },
            {
                $Type : 'UI.DataField',
                Value : partnerBroker,
            },
            {
                $Type : 'UI.DataField',
                Value : pickingDate,
            },
            {
                $Type : 'UI.DataField',
                Value : customerReferenceDate,
            },
            {
                $Type : 'UI.DataField',
                Value : harvest,
            },
            {
                $Type : 'UI.DataField',
                Value : fixedValueDate,
            },
            {
                $Type : 'UI.DataField',
                Value : pricingListType,
            },
            {
                $Type : 'UI.DataField',
                Value : grossAmount,
            },
            {
                $Type : 'UI.DataField',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Value : purchaseOrderType,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier,
            },
            {
                $Type : 'UI.DataField',
                Value : purchasingOrganization,
            },
            {
                $Type : 'UI.DataField',
                Value : purchasingGroup,
            },
            {
                $Type : 'UI.DataField',
                Value : incotermsClassification,
            },
            {
                $Type : 'UI.DataField',
                Value : paymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Value : plant,
            },
            {
                $Type : 'UI.DataField',
                Value : storageLocation,
            },
            {
                $Type : 'UI.DataField',
                Value : taxCode,
            },
            {
                $Type : 'UI.DataField',
                Value : requisitionerName,
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrderIndustriaECE,
            },
            {
                $Type : 'UI.DataField',
                Value : purchaseOrderECEIndustria,
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrderECEReceiver,
            },
            {
                $Type : 'UI.DataField',
                Value : intercompanySalesContract,
            },
            {
                $Type : 'UI.DataField',
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
    UI.DeleteHidden : true,
);

