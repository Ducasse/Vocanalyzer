Class {
	#name : 'VocReporterTest',
	#superclass : 'TestCase',
	#category : 'Vocanalyzer',
	#package : 'Vocanalyzer'
}

{ #category : 'tests' }
VocReporterTest >> testNumberOfClasses [

	| voc |
	voc := VocReporter new. 
	voc packagePatterns: #('Voc*').
	voc computedMatchedPatterns.
	self 
		assert: voc numberOfClasses equals: 5
		
]

{ #category : 'tests' }
VocReporterTest >> testPackagePatterns [

	| voc |
	voc := VocReporter new. 
	voc packagePatterns: #('Voc*').
	voc computedMatchedPatterns.
	self 
		assert: (voc matchedPackages collect: [ :each | each name ]) asSet 
		equals: #('Vocanalyzer' 'VocanalyzerDataPackage1' 'VocanalyzerDataPackage2') asSet.
]
