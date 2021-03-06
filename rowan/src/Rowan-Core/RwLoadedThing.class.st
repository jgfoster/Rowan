"
properties: dictionary of properties
name: name of class or package, selector of method
handle: reference to the class or method object, or to the native package object for dialects that have that.
"
Class {
	#name : 'RwLoadedThing',
	#superclass : 'Object',
	#instVars : [
		'properties',
		'name',
		'handle'
	],
	#classVars : [
		'AbsentToken'
	],
	#category : 'Rowan-Core'
}

{ #category : 'accessing' }
RwLoadedThing class >> absentToken [

	^AbsentToken
]

{ #category : 'class initialization' }
RwLoadedThing class >> initialize [
  "RwLoadedThing initialize"

  AbsentToken := '<absent>'
]

{ #category : 'instance creation' }
RwLoadedThing class >> newNamed: aName [

	^(self new)
		initialize;
		initializeForName: aName;
		yourself
]

{ #category : 'accessing' }
RwLoadedThing >> absentToken [

	^AbsentToken
]

{ #category : 'private' }
RwLoadedThing >> definitionsFor: loadedThings [

	| result |
	result := Dictionary new: loadedThings size.
	loadedThings
		do: [:loadedThing | result at: loadedThing key put: loadedThing asDefinition].
	^result
]

{ #category : 'accessing' }
RwLoadedThing >> handle [
	"Answer a reference to the platform-specific image object for which I hold information."

	^handle
]

{ #category : 'accessing' }
RwLoadedThing >> handle: anObject [
	"Set my reference to the platform-specific image object for which I hold information."

	self markPackageDirty.
	handle := anObject

]

{ #category : 'initialization' }
RwLoadedThing >> initialize [

	properties := Dictionary new
]

{ #category : 'initialization' }
RwLoadedThing >> initializeForName: aName [

	name := aName
]

{ #category : 'accessing' }
RwLoadedThing >> loadedPackage [

	^ self subclassResponsibility: #'loadedPackage'
]

{ #category : 'accessing' }
RwLoadedThing >> loadedProject [

	^ self loadedPackage loadedProject
]

{ #category : 'accessing' }
RwLoadedThing >> name [

	^name
]

{ #category : 'accessing' }
RwLoadedThing >> name: aString [

	self markPackageDirty.
	name := aString
]

{ #category : 'printing' }
RwLoadedThing >> printOn: aStream [

	super printOn: aStream.
	name
		ifNotNil: 
			[aStream
				space;
				nextPutAll: name]
]

{ #category : 'private' }
RwLoadedThing >> propertiesForDefinition [

	^properties copy
]

{ #category : 'accessing' }
RwLoadedThing >> propertyAt: propertyName [

	^properties at: propertyName ifAbsent: [AbsentToken]
]

{ #category : 'accessing' }
RwLoadedThing >> propertyAt: propertyName put: aValue [
	"Value should be a string"

	self markPackageDirty.
	^properties at: propertyName put: aValue
]

{ #category : 'accessing' }
RwLoadedThing >> removeProperty: propertyName [

	self markPackageDirty.
	^properties removeKey: propertyName ifAbsent: [AbsentToken]
]

{ #category : 'accessing' }
RwLoadedThing >> setPropertiesTo: aDictionary [

	properties := aDictionary copy
]
