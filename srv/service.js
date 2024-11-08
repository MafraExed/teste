const cds = require('@sap/cds')

const Exportacao = function() {

  const SalesOrderServices = [
    'RastreioService.ZMME_SALESORDER_CANCELSet',
    'RastreioService.AbgruHelpSet'
  ]

  this.on('READ', "RastreioService.RastreioEntity", async request => {
    const contr = await cds.connect.to('ZI_SD_RASTREIO_CT_CDS')
    return contr.run(request.query)
  })

  this.on('READ', SalesOrderServices, async request => {
    const contr = await cds.connect.to('ZGW_SD_SALESORDER_CANCEL_SRV')
    return contr.run(request.query)
  })
  this.on('READ', "RastreioService.ZC_SD_MM_STATUS_CT", async request => {
    const contr = await cds.connect.to('ZC_SD_MM_STATUS_CT_CDS')
    return contr.run(request.query)
  })

}

module.exports = Exportacao