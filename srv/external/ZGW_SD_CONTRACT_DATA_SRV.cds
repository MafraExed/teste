/* checksum : e6091c8a5f16c6f502ea24c628dcc17f */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZGW_SD_CONTRACT_DATA_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Parceiro de negócios'
entity ZGW_SD_CONTRACT_DATA_SRV.I_BusinessPartner {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessPartnerName'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.parc.negócios'
  @sap.quickinfo : 'Categoria do parceiro de negócios'
  BusinessPartnerCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
  @sap.label : 'GUID PN'
  @sap.quickinfo : 'GUID de um parceiro de negócios'
  BusinessPartnerUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  PersonNumber : String(10);
  @sap.display.format : 'UpperCase'
  ETag : String(26);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome do parceiro de negócios'
  @sap.quickinfo : 'NOME DE PARCEIRO DE NEGÓCIOS'
  BusinessPartnerName : String(81);
  @sap.display.format : 'UpperCase'
  BusinessPartnerFullName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Usuário que criou o objeto'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data, na qual o objeto foi criado'
  CreationDate : Date;
  @sap.label : 'Criado às'
  @sap.quickinfo : 'Hora a que o objeto foi criado'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Modificado por'
  @sap.quickinfo : 'Usuário que modificou o objeto pela última vez'
  LastChangedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Modificado em'
  @sap.quickinfo : 'Data da última modificação do objeto'
  LastChangeDate : Date;
  @sap.label : 'Modificado às'
  @sap.quickinfo : 'Hora a que o objeto foi modificado pela última vez'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloqueio central'
  @sap.quickinfo : 'Bloqueio central para parceiro de negócios'
  BusinessPartnerIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mot.operação cumpr.'
  @sap.quickinfo : 'Código para cumprimento do motivo da operação'
  IsBusinessPurposeCompleted : String(1);
  @sap.label : '1º nome'
  @sap.quickinfo : '1º nome do parceiro de negócios (pessoa)'
  FirstName : String(40);
  @sap.label : 'Sobrenome'
  @sap.quickinfo : 'Sobrenome do parceiro de negócios (pessoa)'
  LastName : String(40);
  @sap.label : 'Nome completo'
  PersonFullName : String(80);
  @sap.label : 'Nome 1'
  @sap.quickinfo : 'Nome 1 da organização'
  OrganizationBPName1 : String(40);
  @sap.label : 'Nome 2'
  @sap.quickinfo : 'Nome 2 da organização'
  OrganizationBPName2 : String(40);
  @sap.label : 'Nome 3'
  @sap.quickinfo : 'Nome 3 da organização'
  OrganizationBPName3 : String(40);
  @sap.label : 'Nome 4'
  @sap.quickinfo : 'Nome 4 da organização'
  OrganizationBPName4 : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.1'
  @sap.quickinfo : 'Nº global de localização (parte 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.2'
  @sap.quickinfo : 'Número global de localização (parte 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dígito de controle'
  @sap.quickinfo : 'Dígito de controle da matrícula internacional da empresa'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Forma jurídica'
  @sap.quickinfo : 'PN: forma jurídica da organização'
  LegalForm : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Data de fundação'
  @sap.quickinfo : 'Data de fudação da organização'
  OrganizationFoundationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data da liquidação'
  @sap.quickinfo : 'Data de liquidação da organização'
  OrganizationLiquidationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  Industry : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa física'
  @sap.quickinfo : 'Parceiro negócios é válido como pessoa física a nível fiscal'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Feminino'
  @sap.quickinfo : 'Seleção: parceiro de negócios feminino'
  IsFemale : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Masculino'
  @sap.quickinfo : 'Seleção: parceiro de negócios masculino'
  IsMale : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Desconhecido'
  @sap.quickinfo : 'Seleção: sexo do parceiro de negócios desconhecido'
  IsSexUnknown : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Forma de tratamento'
  @sap.quickinfo : 'Chave de forma de tratamento'
  FormOfAddress : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AcademicTitle_Text'
  @sap.label : 'Título acadêmico 1'
  @sap.quickinfo : 'Título acadêmico: chave'
  AcademicTitle : String(4);
  @sap.label : 'Descrição tít.acad.'
  @sap.quickinfo : 'Descrição do título académico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AcademicTitle_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato edição nomes'
  @sap.quickinfo : 'Formato para a edição de nomes'
  NameFormat : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País para edição'
  @sap.quickinfo : 'País para regra de edição de nomes'
  NameCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agrupamento'
  @sap.quickinfo : 'Agrupamento de parceiros de negócios'
  BusinessPartnerGrouping : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo PN'
  @sap.quickinfo : 'Tipo de parceiro de negócios'
  BusinessPartnerType : String(4);
  @sap.label : '2º nome'
  @sap.quickinfo : '2º nome ou nome do meio da pessoa'
  MiddleName : String(40);
  @sap.label : '2º sobrenome'
  @sap.quickinfo : '2º sobrenome da pessoa'
  AdditionalLastName : String(40);
  @sap.label : 'Nome 1'
  @sap.quickinfo : 'Nome 1 (grupo)'
  GroupBusinessPartnerName1 : String(40);
  @sap.label : 'Nome 2'
  @sap.quickinfo : 'Nome 2 (grupo)'
  GroupBusinessPartnerName2 : String(40);
  @sap.label : 'Idioma correspondên.'
  @sap.quickinfo : 'Parceiro de negócio: idioma de correspondência'
  CorrespondenceLanguage : String(2);
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Parceiro de negócio: idioma'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 1'
  @sap.quickinfo : 'Termo de pesquisa 1 para parceiro de negócios'
  SearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 2'
  @sap.quickinfo : 'Termo de pesquisa 2 para parceiro de negócios'
  SearchTerm2 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome1/sobrenome'
  @sap.quickinfo : 'Campo ajuda p/pesquisa 1 (nome 1/sobrenome)'
  BPLastNameSearchHelp : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome2/primeiro nome'
  @sap.quickinfo : 'Campo ajuda p/pesquisa 2 (nome 2/primeiro nome)'
  BPFirstNameSearchHelp : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº do endereço'
  IndependentAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Está ativo'
  @sap.quickinfo : 'Esboço - Código - É documento ativo'
  IsActiveEntity : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data de nascimento'
  @sap.quickinfo : 'Data de nascimento do parceiro de negócios'
  BirthDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Marcação arquivmto.'
  @sap.quickinfo : 'Marcação para arquivamento central'
  IsMarkedForArchiving : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contato'
  @sap.quickinfo : 'Parceiro de negócios: permissão de contato'
  ContactPermission : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº parceiro externo'
  @sap.quickinfo : 'Nº parceiro de negócios no sistema externo'
  BusinessPartnerIDByExtSystem : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa jurídica'
  @sap.quickinfo : 'Pessoa jurídica da organização'
  LegalEntityOfOrganization : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utilização militar'
  @sap.quickinfo : 'Código: sobretudo utilização militar'
  TrdCmplncLicenseIsMilitarySctr : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor nuclear'
  @sap.quickinfo : 'Setor nuclear (código)'
  TrdCmplncLicenseIsNuclearSctr : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato impressão'
  @sap.quickinfo : 'Formato da impressão parceiro de negócios'
  BusinessPartnerPrintFormat : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origem dos dados'
  @sap.quickinfo : 'Tipos de origem dos dados'
  BusinessPartnerDataOriginType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Não liberado'
  @sap.quickinfo : 'Código: não liberado'
  BusinessPartnerIsNotReleased : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Não compet.legalmnt.'
  @sap.quickinfo : 'Código: não competente legalmente'
  IsNotContractuallyCapable : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Empresa'
entity ZGW_SD_CONTRACT_DATA_SRV.I_CompanyCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome da firma'
  @sap.quickinfo : 'Denominação da firma ou empresa'
  CompanyCodeName : String(25);
  @sap.label : 'Local'
  CityName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país'
  Country : String(3);
  @sap.label : 'Moeda'
  @sap.quickinfo : 'Código da moeda'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Código de idioma'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plano de contas'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante exercício'
  @sap.quickinfo : 'Variante de exercício'
  FiscalYearVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sociedade'
  Company : String(6);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Área controle créd.'
  @sap.quickinfo : 'Área de controle de créditos'
  @sap.value.list : 'standard'
  CreditControlArea : String(4);
  @sap.label : 'Denominação'
  @sap.quickinfo : 'Denominação da área de controle de crédito'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plano ctas.país'
  @sap.quickinfo : 'Plano de contas segundo a legislação do país'
  CountryChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área de AF'
  @sap.quickinfo : 'Área de administração financeira'
  FinancialManagementArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo IVA'
  TaxableEntity : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal de IVA'
  @sap.quickinfo : 'Nº de identificação fiscal de IVA'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process.ampliado IRF'
  @sap.quickinfo : 'Código: processamento ampliado do IRF ativo'
  ExtendedWhldgTaxIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingArea_Text'
  @sap.label : 'Área contab.custos'
  @sap.quickinfo : 'Área de contabilidade de custos'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Nome da área de contabilidade de custos'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var.status campo'
  @sap.quickinfo : 'Variante do status do campo'
  FieldStatusVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código IVA liq.'
  @sap.quickinfo : 'Código de imposto p/operação não tributável IVA liquidado'
  NonTaxableTransactionTaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Determ.impost.c/data doc.'
  @sap.quickinfo : 'Código: data do documento como base p/determin.de imposto'
  DocDateIsUsedForTaxDetn : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data do imposto'
  @sap.quickinfo : 'Data da declaração de impostos ativa em documentos'
  TaxRptgDateIsActive : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Empresa'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome da firma'
  @sap.quickinfo : 'Denominação da firma ou empresa'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Área de contabilidade de custos'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_ControllingAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'ACC'
  @sap.quickinfo : 'Área de contabilidade de custos'
  key ControllingArea : String(4) not null;
  @sap.label : 'Nome da área de contabilidade de custos'
  ControllingAreaName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Área de controle de créditos'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_CreditControlAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Área controle créds.'
  @sap.quickinfo : 'Área de controle de créditos'
  key CreditControlArea : String(4) not null;
  @sap.label : 'Denominação'
  @sap.quickinfo : 'Denominação da área de controle de crédito'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Entradas possíveis para cliente'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_Customer_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.label : 'Nome 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Nome 2'
  OrganizationBPName2 : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País'
  @sap.quickinfo : 'Chave do país'
  Country : String(3);
  @sap.label : 'Cidade'
  @sap.quickinfo : 'Local'
  CityName : String(35);
  @sap.label : 'Rua'
  @sap.quickinfo : 'Rua e nº'
  StreetName : String(35);
  @sap.label : 'Nome do cliente'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do cliente'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Marcação objetivo concluído'
  @sap.quickinfo : 'Código para objetivo empresarial cumprido'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Canal de distribuição'
entity ZGW_SD_CONTRACT_DATA_SRV.I_DistributionChannel {
  @sap.display.format : 'UpperCase'
  @sap.text : 'DistributionChannel_Text'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.label : 'Descrição do canal de distribuição'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DistributionChannel_Text : String(20);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_DistributionChannelText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Texto do canal de distribuição'
entity ZGW_SD_CONTRACT_DATA_SRV.I_DistributionChannelText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Descrição do canal de distribuição'
  DistributionChannelName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Setor de atividade'
entity ZGW_SD_CONTRACT_DATA_SRV.I_Division {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.label : 'Descrição do setor de atividade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_DivisionText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Texto do setor de atividade'
entity ZGW_SD_CONTRACT_DATA_SRV.I_DivisionText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Descrição do setor de atividade'
  DivisionName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Classificação de incoterms'
entity ZGW_SD_CONTRACT_DATA_SRV.I_IncotermsClassification {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsClassification_Text'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  key IncotermsClassification : String(3) not null;
  @sap.label : 'Descrição'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IncotermsClassification_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cidade obrigatória'
  @sap.quickinfo : 'É obrigatório indicar a cidade'
  LocationIsMandatory : Boolean;
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_IncotermsClassificationText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Texto de classificação de incoterms'
entity ZGW_SD_CONTRACT_DATA_SRV.I_IncotermsClassificationText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  key IncotermsClassification : String(3) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Descrição'
  IncotermsClassificationName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material'
entity ZGW_SD_CONTRACT_DATA_SRV.I_Material {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  key Material : String(40) not null;
  @sap.label : 'Texto breve material'
  @sap.quickinfo : 'Texto breve de material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de material'
  MaterialType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de mercadorias'
  MaterialGroup : String(9);
  @sap.label : 'Unid.medida básica'
  @sap.quickinfo : 'Unidade de medida básica'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.unit : 'MaterialWeightUnit'
  @sap.label : 'Peso bruto'
  MaterialGrossWeight : Decimal(13, 3);
  @sap.unit : 'MaterialWeightUnit'
  @sap.label : 'Peso líquido'
  MaterialNetWeight : Decimal(13, 3);
  @sap.label : 'Unidade de peso'
  @sap.semantics : 'unit-of-measure'
  MaterialWeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fabricante'
  @sap.quickinfo : 'Nº de um fabricante'
  MaterialManufacturerNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº peça fabric.'
  @sap.quickinfo : 'Nº peça de fabricante'
  MaterialManufacturerPartNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AdminLotObrig.'
  @sap.quickinfo : 'Código para administração em lote obrigatória'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat.configuráv.geral'
  @sap.quickinfo : 'Material configurável geral'
  CrossPlantConfigurableProduct : String(40);
  @sap.label : 'Cor'
  @sap.quickinfo : 'Valor da característica para cores em variantes'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Tamanho principal'
  @sap.quickinfo : 'Valor da característica p/tamanho principal em variantes'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Tamanho secundário'
  @sap.quickinfo : 'Valor da característica p/tamanho secundário em variantes'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nºint.característica'
  @sap.quickinfo : 'Nº interno de característica para cores'
  ProdCharc1InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nºint.característica'
  @sap.quickinfo : 'Nº interno em características para tamanhos principais'
  ProdCharc2InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nºint.característica'
  @sap.quickinfo : 'Nº interno em características p/tamanhos secundários'
  ProdCharc3InternalNumber : String(30);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_MaterialText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  key Material : String(40) not null;
  @sap.label : 'Texto breve material'
  @sap.quickinfo : 'Texto breve de material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Texto para material'
entity ZGW_SD_CONTRACT_DATA_SRV.I_MaterialText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  key Material : String(40) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Texto breve material'
  @sap.quickinfo : 'Texto breve de material'
  MaterialName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Método de pagamento para país'
entity ZGW_SD_CONTRACT_DATA_SRV.I_PaymentMethod {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país'
  key Country : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'PaymentMethodName'
  @sap.label : 'Forma de pagamento'
  key PaymentMethod : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome forma pagamento'
  @sap.quickinfo : 'Nome da forma de pagamento'
  PaymentMethodName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cheque é emitido'
  @sap.quickinfo : 'Código: é emitido um cheque nesta forma de pagamento'
  PaymentMethodIsUsedForCheck : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'L/C será emitida'
  @sap.quickinfo : 'Código: Criar um lançamento de L/C ?'
  PaytMethIsUsdForBillOfExchange : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Letra de câmbio/cheque'
  @sap.quickinfo : 'Código: meio de pagamento de letra de câmbio/cheque'
  PaytMethIsUsdForChkBillOfExch : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Condições de pagamento'
entity ZGW_SD_CONTRACT_DATA_SRV.I_PaymentTerms {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PaymentTerms_Text'
  @sap.label : 'Condições pagamento'
  @sap.quickinfo : 'Chave de condições de pagamento'
  key PaymentTerms : String(4) not null;
  @sap.label : 'Descrição'
  @sap.quickinfo : 'Descrição de condições de pagamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaymentTerms_Text : String(30);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_PaymentTermsText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Texto de condições de pagamento'
entity ZGW_SD_CONTRACT_DATA_SRV.I_PaymentTermsText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pagamento'
  @sap.quickinfo : 'Chave de condições de pagamento'
  key PaymentTerms : String(4) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Descrição'
  @sap.quickinfo : 'Descrição de condições de pagamento'
  PaymentTermsName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro'
entity ZGW_SD_CONTRACT_DATA_SRV.I_Plant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Centro'
  key Plant : String(4) not null;
  @sap.label : 'Nome do centro'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área de avaliação'
  ValuationArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº cliente do centro'
  @sap.value.list : 'standard'
  PlantCustomer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº fornecedor centro'
  @sap.quickinfo : 'Número do fornecedor do centro'
  @sap.value.list : 'standard'
  PlantSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendário fábrica'
  @sap.quickinfo : 'Chave do calendário de fábrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização compras'
  @sap.quickinfo : 'Organização de compras'
  DefaultPurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas para faturamento interno'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.centro'
  PlantCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CanDist p/FatInterno'
  @sap.quickinfo : 'Canal de distribuição para faturamento interno'
  DistributionChannel : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Grupo de compradores'
entity ZGW_SD_CONTRACT_DATA_SRV.I_PurchasingGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Grupo de compradores'
  key PurchasingGroup : String(3) not null;
  @sap.label : 'Nome grp.compradores'
  @sap.quickinfo : 'Nome do grupo de compradores'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel.do grupo compras'
  @sap.quickinfo : 'Nº telefone do grupo compradores'
  PurchasingGroupPhoneNumber : String(12);
  @sap.label : 'Nº de telefax'
  @sap.quickinfo : 'Nº telefax do grupo compradores'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telefone'
  @sap.quickinfo : 'Nº telefone: código telefónico+nº'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extensão'
  @sap.quickinfo : 'Nº de telefone: extensão'
  PhoneNumberExtension : String(10);
  @sap.label : 'Endereço de e-mail'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Organização de compras'
entity ZGW_SD_CONTRACT_DATA_SRV.I_PurchasingOrganization {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Organização de compras'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Nome orgiz.compras'
  @sap.quickinfo : 'Nome da organização de compras'
  PurchasingOrganizationName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  CompanyCode : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Organização de vendas'
entity ZGW_SD_CONTRACT_DATA_SRV.I_SalesOrganization {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOrganization_Text'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.label : 'Descrição de organização de vendas'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrganization_Text : String(20);
  @sap.label : 'Moeda da estatística'
  @sap.semantics : 'currency-code'
  SalesOrganizationCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  @sap.quickinfo : 'Empresa da organização de vendas'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº cliente-fat.int.'
  @sap.quickinfo : 'Nº cliente para faturamento interno'
  @sap.value.list : 'standard'
  IntercompanyBillingCustomer : String(10);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_SalesOrganizationText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Texto organização de vendas'
entity ZGW_SD_CONTRACT_DATA_SRV.I_SalesOrganizationText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Descrição de organização de vendas'
  SalesOrganizationName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Entradas possíveis para fornecedor'
@sap.value.list : 'true'
entity ZGW_SD_CONTRACT_DATA_SRV.I_Supplier_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  SupplierName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do fornecedor'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.obj.empr.cumpr.'
  @sap.quickinfo : 'Código para objetivo empresarial cumprido'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unidade de medida'
entity ZGW_SD_CONTRACT_DATA_SRV.I_UnitOfMeasure {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Unid.medida interna'
  @sap.quickinfo : 'Unidade de medida'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Texto unid.med.'
  @sap.quickinfo : 'Texto relativo à unidade de medida (30 caracteres no máximo)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimensão'
  @sap.quickinfo : 'Chave da dimensão'
  UnitOfMeasureDimension : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código ISO'
  @sap.quickinfo : 'Cód.ISO unid.medida'
  UnitOfMeasureISOCode : String(3);
  @sap.label : 'Decimais p/arredond.'
  @sap.quickinfo : 'Número de casas decimais para arredondamento'
  UnitOfMeasureNumberOfDecimals : Integer;
  @sap.label : 'Casas decimais'
  @sap.quickinfo : 'Núm.de casas decimais na representação de números'
  UnitOfMeasureDspNmbrOfDcmls : Integer;
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.I_UnitOfMeasureText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Texto de unidade de medida'
entity ZGW_SD_CONTRACT_DATA_SRV.I_UnitOfMeasureText {
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Unid.medida interna'
  @sap.quickinfo : 'Unidade de medida'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Texto unid.med.'
  @sap.quickinfo : 'Texto relativo à unidade de medida (30 caracteres no máximo)'
  UnitOfMeasureLongName : String(30);
  @sap.label : 'Texto unid.med.'
  @sap.quickinfo : 'Texto relativo à unidade de medida (10 caracteres no máximo)'
  UnitOfMeasureName : String(10);
  @sap.label : 'Técnico'
  @sap.quickinfo : 'Unidade de medida externa, apresentação técnica (6 car.)'
  UnitOfMeasureTechnicalName : String(6);
  @sap.label : 'Apresentação comerc.'
  @sap.quickinfo : 'Unidade de medida externa, apresentação comercial (3 car.)'
  UnitOfMeasure_E : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Contract Data'
entity ZGW_SD_CONTRACT_DATA_SRV.ZC_SD_TRANS_ContractData {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contrato de Vendas'
  @sap.quickinfo : 'Contrato de venda'
  key SalesContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesContractItemText'
  @sap.label : 'Item do Contrato de Vendas'
  @sap.quickinfo : 'Item contrato de venda'
  key SalesContractItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  @sap.quickinfo : 'Empresa a ser faturada'
  @sap.value.list : 'standard'
  Company : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Emissor da ordem'
  @sap.value.list : 'standard'
  SoldToParty : String(10);
  @sap.label : 'Referência Cliente'
  @sap.quickinfo : 'Referência de cliente'
  PurchaseOrderByCustomer : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Data de Criação'
  @sap.quickinfo : 'Data de criação do registro'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Material/Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.label : 'Descrição do Material'
  @sap.quickinfo : 'Texto breve do item da ordem do cliente'
  SalesContractItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Centro'
  @sap.quickinfo : 'Centro (próprio ou externo)'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.label : 'Diferencial Logístico'
  @sap.quickinfo : 'Montante/porcentagem de condição no caso de não haver escala'
  LogisticalDifference : Decimal(12, 3);
  @sap.label : 'Prêmio'
  @sap.quickinfo : 'Montante/porcentagem de condição no caso de não haver escala'
  Prize : Decimal(12, 3);
  @sap.label : 'Quantidade Total - Unidade'
  @sap.quickinfo : 'UM qtd.prevista'
  @sap.semantics : 'unit-of-measure'
  TargetQuantityUnit : String(3);
  @sap.unit : 'TargetQuantityUnit'
  @sap.label : 'Quantidade Total'
  @sap.quickinfo : 'Quantidade da ordem acumulada em unidade de venda'
  OrderQuantity : Decimal(15, 3);
  @sap.label : 'Quantidade Disponível - Unidade'
  @sap.quickinfo : 'Unidade de medida básica'
  @sap.semantics : 'unit-of-measure'
  ScheduledQuantityUnit : String(3);
  @sap.unit : 'ScheduledQuantityUnit'
  @sap.label : 'Quantidade Programada'
  @sap.quickinfo : 'Quantidade referenciada em unidade medida básica'
  ScheduledQuantity : Decimal(15, 3);
  @sap.unit : 'TargetQuantityUnit'
  @sap.label : 'Quantidade Disponível'
  AvailableQuantity : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Harvest_Text'
  @sap.label : 'Safra'
  @sap.value.list : 'standard'
  Harvest : String(3);
  @sap.label : 'Safra - Descrição'
  @sap.quickinfo : 'Denominação'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Harvest_Text : String(20);
  to_BusinessPartner : Association to ZGW_SD_CONTRACT_DATA_SRV.I_BusinessPartner {  };
  to_CompanyCode : Association to ZGW_SD_CONTRACT_DATA_SRV.I_CompanyCode {  };
  to_Harvest : Association to ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_Harverst {  };
  to_Material : Association to ZGW_SD_CONTRACT_DATA_SRV.I_Material {  };
  to_Plant : Association to ZGW_SD_CONTRACT_DATA_SRV.I_Plant {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Tax Code'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_MM_TRANS_TaxCode {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esquema'
  @sap.quickinfo : 'Esquema (determinação preço, mensagens, determ.contas, ...)'
  key CalculationSchema : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de imposto'
  @sap.quickinfo : 'Código do IVA'
  key TaxCode : String(2) not null;
  to_TaxCodeText : Association to many ZGW_SD_CONTRACT_DATA_SRV.ZI_MM_TRANS_TaxCodeText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Tax Code Text'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_MM_TRANS_TaxCodeText {
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esquema'
  @sap.quickinfo : 'Esquema (determinação preço, mensagens, determ.contas, ...)'
  key CalculationSchema : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de imposto'
  @sap.quickinfo : 'Código do IVA'
  key TaxCode : String(2) not null;
  @sap.label : 'Significado'
  @sap.quickinfo : 'Denominação do IVA'
  Description : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Contract Data'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_ContractData {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contrato de Vendas'
  @sap.quickinfo : 'Contrato de venda'
  key SalesContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesContractItemText'
  @sap.label : 'Item do Contrato de Vendas'
  @sap.quickinfo : 'Item contrato de venda'
  key SalesContractItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  @sap.quickinfo : 'Empresa a ser faturada'
  @sap.value.list : 'standard'
  Company : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Emissor da ordem'
  @sap.value.list : 'standard'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safra'
  Harvest : String(3);
  @sap.label : 'Referência Cliente'
  @sap.quickinfo : 'Referência de cliente'
  PurchaseOrderByCustomer : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Data de Criação'
  @sap.quickinfo : 'Data de criação do registro'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Nº do material'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização de Vendas'
  @sap.quickinfo : 'Organização de vendas'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal de Distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisão'
  @sap.quickinfo : 'Setor de atividade'
  OrganizationDivision : String(2);
  @sap.label : 'Descrição do Material'
  @sap.quickinfo : 'Texto breve do item da ordem do cliente'
  SalesContractItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  @sap.quickinfo : 'Centro (próprio ou externo)'
  Plant : String(4);
  @sap.label : 'Diferencial Logístico'
  @sap.quickinfo : 'Montante/porcentagem de condição no caso de não haver escala'
  LogisticalDifference : Decimal(12, 3);
  @sap.label : 'Prêmio'
  @sap.quickinfo : 'Montante/porcentagem de condição no caso de não haver escala'
  Prize : Decimal(12, 3);
  @sap.label : 'Quantidade Total - Unidade'
  @sap.quickinfo : 'UM qtd.prevista'
  @sap.semantics : 'unit-of-measure'
  TargetQuantityUnit : String(3);
  @sap.unit : 'TargetQuantityUnit'
  @sap.label : 'Quantidade Total'
  @sap.quickinfo : 'Quantidade da ordem acumulada em unidade de venda'
  OrderQuantity : Decimal(15, 3);
  @sap.label : 'Quantidade Programada - Unidade'
  @sap.quickinfo : 'Unidade de medida básica'
  @sap.semantics : 'unit-of-measure'
  ScheduledQuantityUnit : String(3);
  @sap.unit : 'ScheduledQuantityUnit'
  @sap.label : 'Quantidade Programada'
  @sap.quickinfo : 'Quantidade referenciada em unidade medida básica'
  ScheduledQuantity : Decimal(15, 3);
  @sap.unit : 'TargetQuantityUnit'
  @sap.label : 'Quantidade Disponível'
  AvailableQuantity : Decimal(16, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Safra'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_Harverst {
  @sap.display.format : 'UpperCase'
  @sap.text : 'HarvestDescription'
  @sap.label : 'Safra'
  key Harvest : String(3) not null;
  @sap.label : 'Safra - Descrição'
  @sap.quickinfo : 'Denominação'
  HarvestDescription : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Payment Terms'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_PaymentTerms {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PaymentTerms_Text'
  @sap.label : 'Condições pagamento'
  @sap.quickinfo : 'Chave de condições de pagamento'
  key PaymentTerms : String(4) not null;
  @sap.label : 'Explicação própria'
  @sap.quickinfo : 'Explicação própria para as condições de pagamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaymentTerms_Text : String(50);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_PaymentTermsText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Payment Term Text'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_PaymentTermsText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pagamento'
  @sap.quickinfo : 'Chave de condições de pagamento'
  key PaymentTerms : String(4) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Explicação própria'
  @sap.quickinfo : 'Explicação própria para as condições de pagamento'
  PaymentTermsName : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Payment Terms'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_Pricelist {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Pricelist_Text'
  @sap.label : 'Tp.lista prçs.'
  @sap.quickinfo : 'Tipo de lista de preços'
  key Pricelist : String(2) not null;
  @sap.label : 'Denominação'
  @sap.quickinfo : 'Texto (comprimento 20)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Pricelist_Text : String(20);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_PricelistText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Price List'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_PricelistText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.lista prçs.'
  @sap.quickinfo : 'Tipo de lista de preços'
  key Pricelist : String(2) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Denominação'
  @sap.quickinfo : 'Texto (comprimento 20)'
  PricelistName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Storage Location'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_StorageLocation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Depósito'
  key StorageLocation : String(4) not null;
  @sap.label : 'Descrição'
  @sap.quickinfo : 'Descrição do depósito'
  StorageLocationDescription : String(16);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Tax Code'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_TaxCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TaxCode_Text'
  @sap.label : 'Código do IVA'
  key TaxCode : String(2) not null;
  @sap.label : 'Significado'
  @sap.quickinfo : 'Denominação do IVA'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxCode_Text : String(50);
  to_Text : Association to many ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_TaxCodeText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Control Tower - Tax Code Texts'
entity ZGW_SD_CONTRACT_DATA_SRV.ZI_SD_TRANS_TaxCodeText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de imposto'
  @sap.quickinfo : 'Código do IVA'
  key TaxCode : String(2) not null;
  @sap.label : 'Código de idioma'
  key Language : String(2) not null;
  @sap.label : 'Significado'
  @sap.quickinfo : 'Denominação do IVA'
  TaxCodeName : String(50);
};

@cds.external : true
type ZGW_SD_CONTRACT_DATA_SRV.TrackingNumberData {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TrackingNumber : LargeString not null;
};

@cds.external : true
function ZGW_SD_CONTRACT_DATA_SRV.getNextTrackingNumber() returns ZGW_SD_CONTRACT_DATA_SRV.TrackingNumberData;

