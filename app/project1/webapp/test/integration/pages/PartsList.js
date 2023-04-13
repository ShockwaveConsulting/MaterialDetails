sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.shockwaveConsulting.project1',
            componentId: 'PartsList',
            entitySet: 'Parts'
        },
        CustomPageDefinitions
    );
});