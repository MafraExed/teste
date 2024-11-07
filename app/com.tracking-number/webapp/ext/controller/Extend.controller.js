sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
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
			const Selecionados = this.base.getExtensionAPI().getSelectedContexts()
			
			sap.m.MessageBox.information("Reprocessar em desenvolvimento")
		},
		onCancelar: function() {
			sap.m.MessageBox.information("Cancelar em desenvolvimento")
		},
		onEditar: function() {
			this.Editar = sap.ui.xmlfragment("agr.fs.com.trackingnumber.ext.Fragmentos.Editar", this)
			this.getView().addDependent(this.Editar)
			this.Editar.open()
		},

		closeDialog: function(){
			this.Editar.close()
			this.Editar.destroy()
		}
	});
});
