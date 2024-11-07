const cds = require('@sap/cds')

const Exportacao = function() {

  this.on('READ', "RastreioService.RastreioEntity", async request => {
    const contr = await cds.connect.to('ZI_SD_RASTREIO_CT_CDS')
    return contr.run(request.query)
  })

  this.on('READ', "RastreioService.ContractConversionEntity", async request => {
    const contr = await cds.connect.to('db')
    const {ContractConversion} = contr.entities

    try{
      return await contr.run(SELECT.from(ContractConversion));
    }catch(err){
      console.log("Erro ao selecionar ContractConversion")
    }
  })
}

module.exports = Exportacao