sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"cars/test/integration/pages/CarsList.gen",
	"cars/test/integration/pages/CarsObjectPage.gen"
], function (JourneyRunner, CarsListGenerated, CarsObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('cars') + '/test/flpSandbox.html#cars-tile',
        pages: {
			onTheCarsListGenerated: CarsListGenerated,
			onTheCarsObjectPageGenerated: CarsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

