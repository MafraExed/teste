sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'agr/fs/app/trackingnumber/test/integration/FirstJourney',
		'agr/fs/app/trackingnumber/test/integration/pages/ContractConversionList',
		'agr/fs/app/trackingnumber/test/integration/pages/ContractConversionObjectPage'
    ],
    function(JourneyRunner, opaJourney, ContractConversionList, ContractConversionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('agr/fs/app/trackingnumber') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheContractConversionList: ContractConversionList,
					onTheContractConversionObjectPage: ContractConversionObjectPage
                }
            },
            opaJourney.run
        );
    }
);