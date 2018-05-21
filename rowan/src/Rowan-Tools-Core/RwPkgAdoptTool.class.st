Class {
	#name : 'RwPkgAdoptTool',
	#superclass : 'RwPackageTool',
	#category : 'Rowan-Tools-Core'
}

{ #category : 'smalltalk api' }
RwPkgAdoptTool >> adoptClassExtensionNamed: className  instanceSelectors: instanceSelectors classSelectors: classSelectors intoPackageNamed: packageName [

	"adopt extension methods for the class named <className> into the package named <packageName>"

	self 
		adoptClassNamed: className 
		classExtension: true 
		instanceSelectors: instanceSelectors 
		classSelectors: classSelectors 
		intoPackageNamed: packageName

]

{ #category : 'smalltalk api' }
RwPkgAdoptTool >> adoptClassNamed: className classExtension: classExtension instanceSelectors: instanceSelectors classSelectors: classSelectors intoPackageNamed: packageName [

	"adopt the methods for class named <className> and it's methods into the package named <packageName>, 
		if it is not a <classExtension>, adopt the class into the package as well"

	| loadedPackage loadedProject gemstoneSpec packageSymDictName theClass theSymbolDictionary registry 
		theBehavior |
	loadedPackage := Rowan image loadedPackageNamed: packageName.
	loadedProject := loadedPackage loadedProject.

	
	gemstoneSpec := loadedProject specification platformSpec at: 'gemstone'.
	packageSymDictName := gemstoneSpec symbolDictNameForPackageNamed: packageName.

	theClass := Rowan globalNamed: className.
	(Rowan image symbolList dictionariesAndSymbolsOf: theClass)
		do: [:ar |
			(ar at: 1) name == packageSymDictName
				ifTrue: [ theSymbolDictionary := (ar at: 1). ] ].
	theSymbolDictionary 
		ifNil: [ 
			self error: 'The symbol dictionary for class ', 
				className printString, 
				' does not match the symbol dictionary for the package ', 
				packageName printString, 
				'. REQUIRED.'.]. 

	registry := theSymbolDictionary rowanSymbolDictionaryRegistry.

	classExtension
		ifFalse: [
			registry
				addClassAssociation: (theSymbolDictionary associationAt: theClass name) 
				forClass: theClass 
				toPackageNamed: packageName ].

	theBehavior := theClass.
	instanceSelectors do: [:methodSelector |
		| theCompiledMethod |
		theCompiledMethod := theBehavior compiledMethodAt: methodSelector.
		registry
			adoptCompiledMethod: theCompiledMethod
			classExtension: classExtension
			for: theBehavior 
			protocol: (theBehavior categoryOfSelector: methodSelector) 
			toPackageNamed: packageName ].

	theBehavior := theClass class.
	classSelectors do: [:methodSelector |
		| theCompiledMethod |
		theCompiledMethod := theBehavior compiledMethodAt: methodSelector.
		registry
			adoptCompiledMethod: theCompiledMethod 
			classExtension: classExtension
			for: theBehavior 
			protocol: (theBehavior categoryOfSelector: methodSelector) 
			toPackageNamed: packageName ].

]

{ #category : 'smalltalk api' }
RwPkgAdoptTool >> adoptClassNamed: className  instanceSelectors: instanceSelectors classSelectors: classSelectors intoPackageNamed: packageName [

	"adopt the class named <className> and it's methods into the package named <packageName>"

	self 
		adoptClassNamed: className 
		classExtension: false 
		instanceSelectors: instanceSelectors 
		classSelectors: classSelectors 
		intoPackageNamed: packageName

]

{ #category : 'smalltalk api' }
RwPkgAdoptTool >> adoptClassNamed: className  intoPackageNamed: packageName [

	"adopt the class named <className> and it's methods into the package named <packageName>"

	| theClass |

	theClass := Rowan globalNamed: className.
	self 
		adoptClassNamed: className 
		instanceSelectors: theClass selectors 
		classSelectors: theClass class selectors 
		intoPackageNamed: packageName

]

{ #category : 'smalltalk api' }
RwPkgAdoptTool >> adoptMethod: methodSelector protocol: protocolString inClassNamed: className  isMeta: isMeta intoPackageNamed: packageName [

	"adopt the method <methodSelector> in class named <className> and it's methods into the package named <packageName>.
		move the method into protocol <protocolString> "

	| loadedPackage loadedProject gemstoneSpec packageSymDictName theClass theSymbolDictionary registry 
		theBehavior theCompiledMethod |
	loadedPackage := Rowan image loadedPackageNamed: packageName.
	loadedProject := loadedPackage loadedProject.

	gemstoneSpec := loadedProject specification platformSpec at: 'gemstone'.
	packageSymDictName := gemstoneSpec symbolDictNameForPackageNamed: packageName.

	theClass := Rowan globalNamed: className.
	theSymbolDictionary := Rowan globalNamed: packageSymDictName.

	registry := theSymbolDictionary rowanSymbolDictionaryRegistry.

	theClass rowanProjectName = Rowan unpackagedName
		ifFalse: [ self error: 'The class ', className printString, ' is already packaged ... no need to adopt' ].

	theBehavior := isMeta
		ifTrue: [ theClass class ]
		ifFalse: [ theClass ].

	theCompiledMethod := theBehavior compiledMethodAt: methodSelector.
	registry
		addExtensionCompiledMethod: theCompiledMethod 
		for: theBehavior 
		protocol: protocolString 
		toPackageNamed: packageName

]