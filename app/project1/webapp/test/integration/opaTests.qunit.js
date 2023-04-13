sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shockwaveConsulting/project1/test/integration/FirstJourney',
		'com/shockwaveConsulting/project1/test/integration/pages/PartsList',
		'com/shockwaveConsulting/project1/test/integration/pages/PartsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PartsList, PartsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shockwaveConsulting/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePartsList: PartsList,
					onThePartsObjectPage: PartsObjectPage
                }
            },
            opaJourney.run
        );
    }
);