sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'agr.fs.app.trackingnumber',
            componentId: 'ContractConversionObjectPage',
            contextPath: '/ContractConversion'
        },
        CustomPageDefinitions
    );
});