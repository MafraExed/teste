sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'agr/fs/trackingnumber/test/integration/FirstJourney',
		'agr/fs/trackingnumber/test/integration/pages/ContractConversionList',
		'agr/fs/trackingnumber/test/integration/pages/ContractConversionObjectPage'
    ],
    function(JourneyRunner, opaJourney, ContractConversionList, ContractConversionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('agr/fs/trackingnumber') + '/index.html'
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