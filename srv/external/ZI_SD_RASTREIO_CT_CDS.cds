/* checksum : a3751638ca070909f7e6cd9446ddd53d */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZI_SD_RASTREIO_CT_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Rastreio Control Tower'
entity ZI_SD_RASTREIO_CT_CDS.ZI_SD_RASTREIO_CT {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Número de Rastreio'
  key Rastreio : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Data'
  DataCriacao : Date;
  @sap.label : 'Hora'
  HoraCriacao : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : ''
  @sap.quickinfo : 'Status Global - Control Tower'
  StatusGlobal : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Processo - CT'
  @sap.quickinfo : 'Processo - Control Tower'
  Processo : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Controle de Pátio - Status'
  StatusProcesso : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento precedente'
  @sap.quickinfo : 'Documento de vendas e distribuição precedente'
  ContratoEtanol : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  ContratoData : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.lista prçs.'
  @sap.quickinfo : 'Tipo de lista de preços'
  ContratoTpListPreco : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safra'
  ContratoSafra : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento de vendas'
  RemessaCo : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  RemessaData : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  RemessaEmpresa : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  RemessaEmissor : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  RemessaRecebedor : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CNPJ'
  RemessaCnpj : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  RemessaIncoterms : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item (SD)'
  @sap.quickinfo : 'Nº item do documento de vendas e distribuição'
  RemessaItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  RemessaMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  RemessaCentro : String(4);
  @sap.unit : 'RemessaUnidade'
  @sap.label : 'Qtd.ordem'
  @sap.quickinfo : 'Quantidade da ordem acumulada em unidade de venda'
  RemessaQuantidade : Decimal(15, 3);
  @sap.label : 'Unidade de venda'
  @sap.semantics : 'unit-of-measure'
  RemessaUnidade : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento de compras'
  @sap.quickinfo : 'Nº do documento de compras'
  PedidoIntercompany : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  PedidoFornecedor : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CNPJ'
  PedidoCnpj : String(16);
  @sap.display.format : 'Date'
  @sap.label : 'Modificado em'
  @sap.quickinfo : 'Data da última modificação'
  PedidoData : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  PedidoMaterial : String(40);
  @sap.unit : 'PedidoUnidade'
  @sap.label : 'Qtd.do pedido'
  @sap.quickinfo : 'Quantidade do pedido'
  PedidoQuantidade : Decimal(13, 3);
  @sap.label : 'UM pedido'
  @sap.quickinfo : 'Unidade de medida do pedido'
  @sap.semantics : 'unit-of-measure'
  PedidoUnidade : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  PedidoCentro : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento precedente'
  @sap.quickinfo : 'Documento de vendas e distribuição precedente'
  ContratoEtanol2 : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  ContratoData2 : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.lista prçs.'
  @sap.quickinfo : 'Tipo de lista de preços'
  ContratoTpListPreco2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safra'
  ContratoSafra2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento de vendas'
  Ordem : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  OrdemData : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  OrdemEmpresa : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  OrdemEmissor : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  OrdemRecebedor : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  OrdemCliDescarga : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safra'
  OrdemSafra : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item (SD)'
  @sap.quickinfo : 'Nº item do documento de vendas e distribuição'
  OrdemItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  OrdemMaterial : String(40);
  @sap.unit : 'OrdemUnidade'
  @sap.label : 'Qtd.ordem'
  @sap.quickinfo : 'Quantidade da ordem acumulada em unidade de venda'
  OrdemQuantidade : Decimal(15, 3);
  @sap.label : 'Unidade de venda'
  @sap.semantics : 'unit-of-measure'
  OrdemUnidade : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  OrdemCentro : String(4);
  @sap.display.format : 'UpperCase'
  OrdemValidCom : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'St.global bloqueio'
  @sap.quickinfo : 'Status geral de bloqueio'
  OrdemBloqueioGl : String(1);
  @sap.display.format : 'UpperCase'
  OrdemWorkflow : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status de crédito'
  @sap.quickinfo : 'Status global das verificações de crédito'
  OrdemCredito : String(1);
  @sap.display.format : 'UpperCase'
  OrdemTarifaFrete : String(17);
};

