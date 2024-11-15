using {fs.agr.ct.trackingnumber.db as DB} from '../db/schema';
using {ZC_SD_TRANS_STATUS_CT_CDS as Status} from './external/ZC_SD_TRANS_STATUS_CT_CDS';
using {ZGW_SD_CONTRACT_DATA_SRV as contract} from './external/ZGW_SD_CONTRACT_DATA_SRV';
using {ZGW_SD_SALESORDER_CANCEL_SRV as CancelSalesOrder} from './external/ZGW_SD_SALESORDER_CANCEL_SRV';

@path: '/Rastreio'
service RastreioService {
    //Tabela BTP
    entity ContractConversion          as projection on DB.ContractConversion;
    // CDS
    entity StatusProcess               as projection on Status.ZC_SD_TRANS_STATUS_CT;
    // Ajudas de pesquisas (SEGW)
    entity AbgruHelpSet                as projection on CancelSalesOrder.AbgruHelpSet;
    entity ZMME_SALESORDER_CANCEL      as projection on CancelSalesOrder.ZMME_SALESORDER_CANCELSet;
    entity Contract                    as projection on contract.ZC_SD_TRANS_ContractData;
    entity BusinessPartner             as projection on contract.I_BusinessPartner;
    entity CompanyCode                 as projection on contract.I_CompanyCode;
    entity CompanyCodeStdVH            as projection on contract.I_CompanyCodeStdVH;
    entity ControllingAreaStdVH        as projection on contract.I_ControllingAreaStdVH;
    entity CreditControlAreaStdVH      as projection on contract.I_CreditControlAreaStdVH;
    entity Customer_VH                 as projection on contract.I_Customer_VH;
    entity DistributionChannel         as projection on contract.I_DistributionChannel;
    entity DistributionChannelText     as projection on contract.I_DistributionChannelText;
    entity Division                    as projection on contract.I_Division;
    entity DivisionText                as projection on contract.I_DivisionText;
    entity IncotermsClassificationText as projection on contract.I_IncotermsClassificationText;
    entity IncotermsClassification     as projection on contract.I_IncotermsClassification;
    entity Material                    as projection on contract.I_Material;
    entity MaterialStdVH               as projection on contract.I_MaterialStdVH;
    entity MaterialText                as projection on contract.I_MaterialText;
    entity PaymentMethod               as projection on contract.I_PaymentMethod;
    entity PaymentTerms                as projection on contract.ZI_SD_TRANS_PaymentTerms;
    entity PaymentTermsText            as projection on contract.I_PaymentTermsText;
    entity Plant                       as projection on contract.I_Plant;
    entity PurchasingGroup             as projection on contract.I_PurchasingGroup;
    entity PurchasingOrganization      as projection on contract.I_PurchasingOrganization;
    entity SalesOrganization           as projection on contract.I_SalesOrganization;
    entity SalesOrganizationText       as projection on contract.I_SalesOrganizationText;
    entity Supplier_VH                 as projection on contract.I_Supplier_VH;
    entity UnitOfMeasure               as projection on contract.I_UnitOfMeasure;
    entity UnitOfMeasureText           as projection on contract.I_UnitOfMeasureText;
    entity TaxCode                     as projection on contract.ZI_SD_TRANS_TaxCode;
    entity TaxCodeText                 as projection on contract.ZI_MM_TRANS_TaxCodeText;
    entity Harvest                     as projection on contract.ZI_SD_TRANS_Harverst;
    entity PriceList                   as projection on contract.ZI_SD_TRANS_Pricelist;
    entity StorageLocation             as projection on contract.ZI_SD_TRANS_StorageLocation;

}


annotate RastreioService.ContractConversion with @(UI: {
    //Filtros
    SelectionFields: [
        trackingNumber,
        processType,
        processStatus,
        salesOrderIndustriaECE,
        companyCode,
        plant,
        purchaseOrderECEIndustria
    ],
    //Linhas da tabela
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: trackingNumber,
        },
        {
            $Type: 'UI.DataField',
            Value: requestedDeliveryDate,
        },
        {
            $Type: 'UI.DataField',
            Value: processType,
        },
        {
            $Type: 'UI.DataField',
            Value: processStatus,
        },
        {
            $Type: 'UI.DataField',
            Value: requestedDeliveryDate,
        }
    ],
}) {
    processType                   @title: 'Tipo do Processo';
    processStatus                 @(
        title : 'Status do Processo',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'StatusProcess',
            Label         : 'Status do Processo',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: processStatus,
                    ValueListProperty: 'Status',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'StatusDescription',
                },
            ],
        }, }
    );
    trackingNumber                @(
        title : 'N° Rastreio',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'ContractConversion',
            Label         : 'N° Rastreio',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterOut',
                LocalDataProperty: trackingNumber,
                ValueListProperty: 'trackingNumber',
            }, ],
        }, }
    );
    salesContract                 @(
        title : 'Contrato',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Contract',
            Label         : 'Contrato',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: salesContract,
                    ValueListProperty: 'SalesContract',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'SalesContractItem',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'SalesContractItemText',
                },
            ],
        }, }
    );
    salesContractItem             @(
        title : 'Item do Contrato',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Contract',
            Label         : 'Item do Contrato',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: salesContractItem,
                    ValueListProperty: 'SalesContractItem',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'SalesContractItemText',
                },
            ],
        }, }

    );
    salesOrganization             @(
        title : 'Organização de venda',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'SalesOrganizationText',
            Label         : 'Organização de venda',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: salesOrganization,
                    ValueListProperty: 'SalesOrganization',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'SalesOrganizationName',
                },
            ],
        }, }
    );
    distributionChannel           @(
        title : 'Canal de distribuição',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'DistributionChannelText',
            Label         : 'Canal de distribuição',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: distributionChannel,
                    ValueListProperty: 'DistributionChannel',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'DistributionChannelName',
                },
            ],
        }, }
    );
    organizationDivision          @(
        title : 'Divisão de organização',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'DivisionText',
            Label         : 'Divisão de organização',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: organizationDivision,
                    ValueListProperty: 'Division',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'DivisionName',
                },
            ],
        }, }
    );
    requestedDeliveryDate         @title: 'Data delivery';
    soldToParty                   @title: 'Vendida para';
    purchaseOrderByCustomer       @title: 'Pedido de Compras';
    customerPaymentTerms          @(
        title : 'Condição de pagamento',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'PaymentTermsText',
            Label         : 'Condição de pagamento',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: customerPaymentTerms,
                    ValueListProperty: 'PaymentTerms',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PaymentTermsName',
                },
            ],
        }, }
    );
    paymentMethod                 @(
        title : 'Método de pagamento',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'PaymentMethod',
            Label         : 'Método de pagamento',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: paymentMethod,
                    ValueListProperty: 'PaymentMethod',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PaymentMethodName',
                },
            ],
        }, }
    );
    material                      @(
        title : 'Material',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'MaterialText',
            Label         : 'Material',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: material,
                    ValueListProperty: 'Material',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'MaterialName',
                },
            ],
        }, }
    );
    requestedQuantity             @title: 'Quantidade';
    requestedQuantityUnit         @title: 'Unidade de Medida';
    transactionCurrency           @title: 'Moeda';
    partnerReceiver               @title: 'Parceiro recebedor';
    partnerUnload                 @title: 'Parceiro descargar';
    partnerSales                  @title: 'Parceiro de venda';
    partnerBroker                 @title: 'Parceiro corretora';
    pickingDate                   @title: 'Data';
    customerReferenceDate         @title: 'Dara de referencia para venda';
    harvest                       @title: 'Colheita';
    fixedValueDate                @title: 'Data fixa';
    pricingListType               @title: 'Tipo da lista de preço';
    grossAmount                   @title: 'Valor bruto';
    companyCode                   @(
        title : 'Empresa',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'CompanyCode',
            Label         : 'Empresa',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: companyCode,
                    ValueListProperty: 'CompanyCode',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'CompanyCodeName',
                },
            ],
        }, }
    );
    purchaseOrderType             @title: 'Tipo do pedido de compras';
    supplier                      @title: 'Fornecedor';
    purchasingOrganization        @(
        title : 'Organização de compras',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'PurchasingOrganization',
            Label         : 'Organização de compras',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: purchasingOrganization,
                    ValueListProperty: 'PurchasingOrganization',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PurchasingOrganizationName',
                },
            ],
        }, }
    );
    purchasingGroup               @(
        title : 'Grupo de compras',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'PurchasingGroup',
            Label         : 'Grupo de compras',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: purchasingGroup,
                    ValueListProperty: 'PurchasingGroup',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PurchasingGroupName',
                },
            ],
        }, }
    );
    incotermsClassification       @(
        title : 'Incoterms',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'IncotermsClassificationText',
            Label         : 'Incoterms',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: incotermsClassification,
                    ValueListProperty: 'IncotermsClassification',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'IncotermsClassificationName',
                },
            ],
        }, }
    );
    paymentTerms                  @(
        title : 'Termo de pagamento',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'PaymentTermsText',
            Label         : 'Termo de pagamento',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: paymentTerms,
                    ValueListProperty: 'PaymentTerms',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PaymentTermsName',
                },
            ],
        }, },
    );
    plant                         @(
        title : 'Centro',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Plant',
            Label         : 'Centro',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: plant,
                    ValueListProperty: 'Plant',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PlantName',
                },
            ],
        }, }
    );
    storageLocation               @title: 'Localização';
    taxCode                       @(
        title : 'Código da taxa',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'TaxCodeText',
            Label         : 'Código da taxa',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: taxCode,
                    ValueListProperty: 'TaxCode',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'Description',
                },
            ],
        }, }
    );
    requisitionerName             @title: 'Requisitante';
    salesOrderIndustriaECE        @title: 'Ordem de venda (Industria ECE)';
    purchaseOrderECEIndustria     @title: 'Pedido de compras (Industria ECE)';
    salesOrderECEReceiver         @title: 'Ordem de venda (Recebedor ECE)';
    intercompanySalesContract     @title: 'Contrato de venda intercompany';
    intercompanySalesContractItem @title: 'Item do contrato de venda intercompany'
}
