/* checksum : b957fbb0796bac3af3d687492bb3c6b9 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZC_SD_MM_STATUS_CT_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Control Tower'
entity ZC_SD_MM_STATUS_CT_CDS.ZC_SD_MM_STATUS_CT {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Val._inferior dom.'
  @sap.quickinfo : 'Valores p/domínios: valor ind./limite inferior'
  key Status : String(10) not null;
  @sap.label : 'Descrição breve'
  @sap.quickinfo : 'Texto breve para valores fixos'
  StatusDescription : String(60);
};

