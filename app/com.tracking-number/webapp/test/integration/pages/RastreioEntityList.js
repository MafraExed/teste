sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'agr.fs.com.trackingnumber',
            componentId: 'RastreioEntityList',
            contextPath: '/RastreioEntity'
        },
        CustomPageDefinitions
    );
});