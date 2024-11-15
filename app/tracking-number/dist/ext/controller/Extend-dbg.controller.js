sap.ui.define(['sap/ui/core/mvc/ControllerExtension', "sap/ui/model/json/JSONModel", 'sap/ui/core/format/NumberFormat'], function (ControllerExtension, JSONModel, NumberFormat) {
	'use strict';

	return ControllerExtension.extend('agr.fs.trackingnumber.ext.controller.Extend', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
			 * Called when a controller is instantiated and its View controls (if available) are already created.
			 * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
			 * @memberOf agr.fs.trackingnumber.ext.controller.Extend
			 */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			},
		},

		buscaDados: async function (sUrl) {
			let data
			let oModel = new JSONModel()
			await oModel.loadData(sUrl, null, true, "GET", false, true)
			data = oModel.getData()
			return data
		},

		formatQuantity: function (quantity, unitOfMeasure) {
			const formatOptions = {
				maxFractionDigits: 3,
				minFractionDigits: 3,
				preserveDecimals: true,
				showMeasure: true,
			}
			const unitFormat = NumberFormat.getUnitInstance(formatOptions)
			return unitFormat.format(quantity, unitOfMeasure)
		},

		formataData: function (sDate) {
			let data = new Date(sDate)
			let dataFormatada = `${String(data.getUTCDate()).padStart(2, '0')}/${String(data.getUTCMonth() + 1).padStart(2, '0')}/${data.getUTCFullYear()}`;
			return dataFormatada
		},

		onEdita: async function () {
			let path = this.base.getExtensionAPI().getSelectedContexts()[0].sPath
			let sService = this.base.getExtensionAPI().getModel().sServiceUrl
			let url = sService + path
			let urlContrato = sService
			let urlContratoVenda = sService

			try {
				let Tracking = await this.buscaDados(url)
				Tracking.requestedDeliveryDate = this.formataData(Tracking.requestedDeliveryDate)
				Tracking.fixedValueDate = this.formataData(Tracking.fixedValueDate)

				urlContrato += "Contract/" + Tracking.salesContract + "/" + Tracking.salesContractItem
				let Contrato = await this.buscaDados(urlContrato)
				Contrato.CreationDate = this.formataData(Contrato.CreationDate)

				urlContratoVenda += "Contract/" + Tracking.intercompanySalesContract + "/" + Tracking.intercompanySalesContractItem
				let InterCompanyContratoVenda = await this.buscaDados(urlContratoVenda)
				InterCompanyContratoVenda.CreationDate = this.formataData(InterCompanyContratoVenda.CreationDate)

				let oModelView = new JSONModel()
				let objeto = {
					Editavel: false,
					Tracking,
					Contrato,
					InterCompanyContratoVenda,
					OrderType: [
						{
							key: 'CLIENTE_FINAL',
							value: 'Cliente Final',
						},
						{
							key: 'ARMAZEM_MI',
							value: 'Armazém Mercado Interno',
						},
						{
							key: 'ARMAZEM_ME',
							value: 'Armazém Mercado Externo',
						},
						{
							key: 'IC_FINCUST',
							value: 'FIN CUST'
						}
					]
				}

				oModelView.setData(objeto)
				this.getView().setModel(oModelView, "Aux")

				if (this.Editar) {
					this.Editar.destroy()
				}

				this.Editar = sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Editar", this)
				this.getView().addDependent(this.Editar)
				this.Editar.open()

			} catch (err) {
				sap.m.MessageBox.error("Erro")
			}
		},
		onCancelar: async function () {
			let path = this.base.getExtensionAPI().getSelectedContexts()[0].sPath
			let sService = this.base.getExtensionAPI().getModel().sServiceUrl
			let url = sService + path

			try {
				let Tracking = await this.buscaDados(url)

				if (Tracking.processStatus !== "90") {
					sap.m.MessageBox.error("Não será permitido cancelar o Rastreio, pois existe Romaneio em andamento")
					return
				}

				let oModelAux = new JSONModel();
				let objeto = {
					Editavel: false,
					Dados: Tracking,
					Motivo: ""
				}

				oModelAux.setData(objeto)
				this.getView().setModel(oModelAux, "Aux")

				if (this.Cancela) {
					this.Cancela.destroy();
				}

				this.Cancela = sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Cancelar", this)
				this.getView().addDependent(this.Cancela)
				this.Cancela.open()
			} catch (err) {

			}


			oModelAux.setData(objeto)
			this.getView().setModel(oModelAux, "Aux")

			if (this.Cancela) {
				this.Cancela.destroy();
			}

			this.Cancela = sap.ui.xmlfragment("agr.fs.trackingnumber.ext.Fragmentos.Cancelar", this)
			this.getView().addDependent(this.Cancela)
			this.Cancela.open()
		},
		FechaEditar: function () {
			this.Editar.close()
			this.Editar.destroy()
		},

		FechaCancelar: function () {
			this.Cancela.close()
			this.Cancela.destroy()
		},

		onCancela: function () {
			let oModel = this.getView().getModel("Aux")
			let Data = oModel.getData().Dados
			let Motivo = oModel.getData().Motivo
		},

		onSalvaEdicao: function () {
			let oModel = this.getView().getModel("Aux")

		}
	});
});
