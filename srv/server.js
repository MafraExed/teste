const cds = require('@sap/cds')
const proxy = require('@sap/cds-odata-v2-adapter-proxy')

cds.once('bootstrap', async app => {
  app.use(proxy())
})

cds.on('served', () => {
  //const{ ProcessType } = this.entities
})

module.exports = cds.server
