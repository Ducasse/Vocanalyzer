Class {
	#name : 'VocReporter',
	#superclass : 'Object',
	#instVars : [
		'packagePatterns',
		'matchedPatterns'
	],
	#category : 'Vocanalyzer',
	#package : 'Vocanalyzer'
}

{ #category : 'as yet unclassified' }
VocReporter >> computedMatchedPatterns [
	
	
	self packageOrganizer packageNamesDo: [ :each | (packagePatterns anySatisfy: [ :pat | pat match: each ])
																	ifTrue: [ matchedPatterns add: (self packageOrganizer packageNamed: each) ] ]
]

{ #category : 'as yet unclassified' }
VocReporter >> matchedPatterns [
	
	^ matchedPatterns 
]

{ #category : 'as yet unclassified' }
VocReporter >> packagePatterns: aCollection [ 
	packagePatterns := aCollection
]
