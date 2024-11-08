sap.ui.define(['sap/ui/core/mvc/ControllerExtension',"sap/ui/model/json/JSONModel"], function (ControllerExtension, JSONModel) {
	'use strict';

	return ControllerExtension.extend('agr.fs.com.trackingnumber.ext.controller.Extend', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf agr.fs.com.trackingnumber.ext.controller.Extend
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			},
		},

		onReprocessa: function() {
			sap.m.MessageBox.information("Reprocessar em desenvolvimento")
		},
		onCancelar: function() {
			let dados = this.base.getExtensionAPI().getSelectedContexts()[0].getObject()
			let oModelAux = new JSONModel();
			let objeto = {
				Editavel: false,
				Dados: dados
			}

			oModelAux.setData(objeto)
			this.getView().setModel(oModelAux, "Aux")

			if (this.Cancela){
				this.Cancela.destroy()
			}

			this.Cancela = sap.ui.xmlfragment("agr.fs.com.trackingnumber.ext.Fragmentos.Cancelar", this)
			this.getView().addDependent(this.Cancela)
			this.Cancela.open()
		},
		onEditar: function() {
			let dados = this.base.getExtensionAPI().getSelectedContexts()[0].getObject()
			let oModelAux = new JSONModel();
			let objeto = {
				Editavel: false,
				Dados: dados
			}

			oModelAux.setData(objeto)
			this.getView().setModel(oModelAux, "Aux")

			if (this.Editar){
				this.Editar.destroy()
			}

			this.Editar = sap.ui.xmlfragment("agr.fs.com.trackingnumber.ext.Fragmentos.Editar", this)
			this.getView().addDependent(this.Editar)
			this.Editar.open()
		},

		FechaEditar: function(){
			this.Editar.close()
			this.Editar.destroy()
		},

		FechaCancelar: function(){
			this.Cancela.close()
			this.Cancela.destroy()
		}
	});
});
