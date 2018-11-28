Class {
	#name : #BaselineOfPlatypus,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlatypus
}

{ #category : #baselines }
BaselineOfPlatypus >> baseline: spec [
	<baseline>

	spec project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/'].
	spec project: 'PetitParser' with: [
				spec
					className: #ConfigurationOfPetitParser;
					versionString: #'development';
					loads: #(  'PetitParser' 'PetitTests' 'PetitSmalltalk' );
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/' ].
	spec 
			project: 'PetitStepExpress' with: [
				spec
					className: #ConfigurationOfPetitStepExpress;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/AlainPlantec/StepExpress/main/' ].	
	spec project: 'Fame' with: [
				spec
					className: #ConfigurationOfFame;
					versionString: #'development';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/Moose/Fame/main/' ].						
			
	spec 
		package: 'Platypus' 
		with: [ spec requires: #('XMLWriter' 'PetitParser' 'PetitStepExpress' ) ].	
]
