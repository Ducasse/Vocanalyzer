Class {
	#name : 'VocReporter',
	#superclass : 'Object',
	#instVars : [
		'packagePatterns',
		'matchedPackages'
	],
	#category : 'Vocanalyzer',
	#package : 'Vocanalyzer'
}

{ #category : 'as yet unclassified' }
VocReporter >> classPackageRatio [
	
	^ (self numberOfClasses / self matchedPackages size) asFloat
]

{ #category : 'as yet unclassified' }
VocReporter >> computedMatchedPatterns [
	
	
	self packageOrganizer packageNamesDo: [ :each | (packagePatterns anySatisfy: [ :pat | pat match: each ])
																	ifTrue: [ matchedPackages add: (self packageOrganizer packageNamed: each) ] ]
]

{ #category : 'initialization' }
VocReporter >> initialize [

	super initialize.
	matchedPackages := OrderedCollection new.
]

{ #category : 'accessing' }
VocReporter >> matchedPackages [

	^ matchedPackages
]

{ #category : 'accessing' }
VocReporter >> matchedPackages: anObject [

	matchedPackages := anObject
]

{ #category : 'as yet unclassified' }
VocReporter >> numberOfClasses [
	
	| n |
	n := 0.
	matchedPackages do: [ :each | 
		n := n + each definedClasses size]. 
	^ n 
]

{ #category : 'as yet unclassified' }
VocReporter >> packagePatterns: aCollection [ 
	packagePatterns := aCollection
]
