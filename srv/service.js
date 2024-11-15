const cds = require('@sap/cds')

const Exportacao = function () {

  const entidadesCancelaSalesOrders = [
    "RastreioService.AbgruHelpSet",
    "RastreioService.ZMME_SALESORDER_CANCEL"
  ];

  const entidadesContrato = [
    "RastreioService.Contract",
    "RastreioService.BusinessPartner",
    "RastreioService.CompanyCode",
    "RastreioService.CompanyCodeStdVH",
    "RastreioService.ControllingAreaStdVH",
    "RastreioService.CreditControlAreaStdVH",
    "RastreioService.Customer_VH",
    "RastreioService.DistributionChannel",
    "RastreioService.DistributionChannelText",
    "RastreioService.Division",
    "RastreioService.DivisionText",
    "RastreioService.IncotermsClassificationText",
    "RastreioService.IncotermsClassification",
    "RastreioService.Material",
    "RastreioService.MaterialStdVH",
    "RastreioService.MaterialText",
    "RastreioService.PaymentMethod",
    "RastreioService.PaymentTerms",
    "RastreioService.PaymentTermsText",
    "RastreioService.Plant",
    "RastreioService.PurchasingGroup",
    "RastreioService.PurchasingOrganization",
    "RastreioService.SalesOrganization",
    "RastreioService.SalesOrganizationText",
    "RastreioService.Supplier_VH",
    "RastreioService.UnitOfMeasure",
    "RastreioService.UnitOfMeasureText",
    "RastreioService.TaxCode",
    "RastreioService.TaxCodeText",
    "RastreioService.Harvest",
    "RastreioService.PriceList",
    "RastreioService.StorageLocation"
  ]

  this.on('READ', "RastreioService.ContractConversion", async request => {
    const service = await cds.connect.to('db')
    const { ContractConversion } = service.entities

    try {
      const sQuery = cds.parse.cql(`SELECT FROM ${ContractConversion.name}`)

      return await service.run(sQuery)
    } catch (err) {
      console.log(`Erro ao buscar dados => ${err.message}`)
    }
  })

  this.on('READ', "RastreioService.StatusProcess", async request => {
    const service = await cds.connect.to("ZC_SD_TRANS_STATUS_CT_CDS")
    return service.run(request.query)
  })

  this.on('READ', entidadesContrato, async request => {
    const service = await cds.connect.to("ZGW_SD_CONTRACT_DATA_SRV")
    return service.run(request.query)
  })

  this.on('READ', entidadesCancelaSalesOrders, async request => {
    const service = await cds.connect.to("ZGW_SD_SALESORDER_CANCEL_SRV")
    return service.run(request.query)
  })

}

module.exports = Exportacao