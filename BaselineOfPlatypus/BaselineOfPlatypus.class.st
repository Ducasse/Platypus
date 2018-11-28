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
			
	spec package: 'Platypus' with: [ spec requires: #('XMLWriter') ].	
]
