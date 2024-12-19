Class {
	#name : 'VocReporterTest',
	#superclass : 'TestCase',
	#category : 'Vocanalyzer',
	#package : 'Vocanalyzer'
}

{ #category : 'tests' }
VocReporterTest >> testPackagePatterns [

	| voc |
	voc := VocReporter new. 
	voc packagePatterns: #('Voc*').
	voc computedMatchedPatterns.
	self assert: (voc matchedPatterns collect: [ :each | each packageName ]) asArray equals: #('Vocanalyzer').
]
