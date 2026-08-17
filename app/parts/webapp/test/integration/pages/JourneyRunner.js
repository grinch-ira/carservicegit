sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"parts/test/integration/pages/PartssList.gen",
	"parts/test/integration/pages/PartsObjectPage.gen"
], function (JourneyRunner, PartsListGenerated, PartsObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('cars') + '/test/flpSandbox.html#parts-tile',
        pages: {
			onTheCarsListGenerated: CarsListGenerated,
			onTheCarsObjectPageGenerated: CarsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

