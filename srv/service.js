const cds = require('@sap/cds')

const Exportacao = function() {
  this.on('READ', "RastreioService.RastreioEntity", async request => {
    const contr = await cds.connect.to('ZI_SD_RASTREIO_CT_CDS')
    return contr.run(request.query)
  })
}

module.exports = Exportacao