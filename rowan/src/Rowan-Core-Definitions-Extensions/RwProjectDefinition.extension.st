Extension { #name : 'RwProjectDefinition' }

{ #category : '*rowan-core-definitions-extensions' }
RwProjectDefinition >> compareAgainstBase: aDefinition [

	| modification packagesModification |
	modification := RwProjectModification before: aDefinition after: self.
	modification
		propertiesModification: (self comparePropertiesAgainstBase: aDefinition).
	packagesModification := RwPackagesModification new.
	self
		compareDictionary: packages
		againstBaseDictionary: aDefinition packages
		into: packagesModification
		elementClass: RwPackageDefinition.
	modification packagesModification: packagesModification.
	^ modification
]
