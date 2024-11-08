/* checksum : 76c595cc8b6c61f88bdeeaff0b139b4d */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZGW_SD_SALESORDER_CANCEL_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZGW_SD_SALESORDER_CANCEL_SRV.ZMME_SALESORDER_CANCELSet {
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key OrderNumber : LargeString not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Reason : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
entity ZGW_SD_SALESORDER_CANCEL_SRV.AbgruHelpSet {
  @sap.unicode : 'false'
  @sap.label : 'Motivo recusa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Abgru : String(2) not null;
  @sap.unicode : 'false'
  @sap.label : 'Denominação'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bezei : String(40) not null;
};

