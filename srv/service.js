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

  this.on('READ', "RastreioService.ContractConversion", async request => {
    const service = await cds.connect.to('db')
    const {ContractConversion} = service.entities

    try { 
      const sQuery = cds.parse.cql(`SELECT FROM ${ContractConversion.name}`)

      return await service.run(sQuery)
    }catch(err){
      console.log(`Erro ao buscar dados => ${err.message}`)
    }
  })

}

module.exports = Exportacao