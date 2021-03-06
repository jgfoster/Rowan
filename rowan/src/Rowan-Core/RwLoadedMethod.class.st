"
No class-specific documentation for CypLoadedMethod, hierarchy is: 
Object
  CypLoadedThing( properties name handle)
    CypLoadedMethod

"
Class {
	#name : 'RwLoadedMethod',
	#superclass : 'RwLoadedThing',
	#instVars : [
		'loadedClass',
		'classIsMeta'
	],
	#category : 'Rowan-Core'
}

{ #category : 'definitions' }
RwLoadedMethod >> asDefinition [
	"Create a Definition corresponding to what I define in the image."

	^RwMethodDefinition withProperties: self propertiesForDefinition
		source: self source
]

{ #category : 'accessing' }
RwLoadedMethod >> classIsMeta [

	^classIsMeta
]

{ #category : 'accessing' }
RwLoadedMethod >> classIsMeta: aBoolean [

	classIsMeta := aBoolean
]

{ #category : 'queries' }
RwLoadedMethod >> loadedClass [

	^loadedClass
]

{ #category : 'accessing' }
RwLoadedMethod >> loadedClass: aLoadedClass [

	loadedClass := aLoadedClass
]

{ #category : 'queries' }
RwLoadedMethod >> loadedPackage [

	^self loadedClass loadedPackage
]

{ #category : 'private' }
RwLoadedMethod >> markPackageDirty [
	"LoadedClass may still be nil if we're creating a new LoadedMethod."

	loadedClass ifNotNil: [loadedClass markPackageDirty]
]

{ #category : 'definitions' }
RwLoadedMethod >> propertiesForDefinition [

	| props |
	props := super propertiesForDefinition.
	props at: 'selector' put: name.
	^props
]

{ #category : 'accessing' }
RwLoadedMethod >> selector [

	^ properties at: 'selector'
]

{ #category : 'accessing' }
RwLoadedMethod >> source [

	self subclassResponsibility
]
