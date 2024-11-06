sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'agr/fs/com/trackingnumber/test/integration/FirstJourney',
		'agr/fs/com/trackingnumber/test/integration/pages/RastreioEntityList',
		'agr/fs/com/trackingnumber/test/integration/pages/RastreioEntityObjectPage'
    ],
    function(JourneyRunner, opaJourney, RastreioEntityList, RastreioEntityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('agr/fs/com/trackingnumber') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRastreioEntityList: RastreioEntityList,
					onTheRastreioEntityObjectPage: RastreioEntityObjectPage
                }
            },
            opaJourney.run
        );
    }
);