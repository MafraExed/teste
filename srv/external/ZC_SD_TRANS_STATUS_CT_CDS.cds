/* checksum : 5257e7a9dd8e62930a89ee606d1f2121 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZC_SD_TRANS_STATUS_CT_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Control Tower'
entity ZC_SD_TRANS_STATUS_CT_CDS.ZC_SD_TRANS_STATUS_CT {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Val._inferior dom.'
  @sap.quickinfo : 'Valores p/domínios: valor ind./limite inferior'
  key Status : String(10) not null;
  @sap.label : 'Descrição breve'
  @sap.quickinfo : 'Texto breve para valores fixos'
  StatusDescription : String(60);
};

