SystemOrganization addCategory: 'Cypress-Definitions'!

Error subclass: #CypressError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

Error subclass: #CypressLoaderError
	instanceVariableNames: 'patchOperation exception'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressLoaderError commentStamp: '' prior: 0!
CypressLoaderError is used to report a failure applying a specific CypressPatchOperation.

!CypressLoaderError class methodsFor: 'instance creation' stamp: ''!
patchOperation: aPatchOperation exception: anException

!CypressLoaderError methodsFor: 'accessing' stamp: ''!
exception

!CypressLoaderError methodsFor: 'updating' stamp: ''!
exception: anException

!CypressLoaderError methodsFor: 'initializing - private' stamp: ''!
initialize

!CypressLoaderError methodsFor: 'initializing - private' stamp: ''!
initializeMessageText

!CypressLoaderError methodsFor: 'initializing - private' stamp: ''!
initializePatchOperation: aPatchOperation exception: anException

!CypressLoaderError methodsFor: 'handling' stamp: ''!
logNotification: aString

!CypressLoaderError methodsFor: 'accessing' stamp: ''!
patchOperation

!CypressLoaderError methodsFor: 'updating' stamp: ''!
patchOperation: aCypressPatchOperation

Error subclass: #CypressLoaderMissingClasses
	instanceVariableNames: 'requirementsMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressLoaderMissingClasses class methodsFor: 'instance creation' stamp: ''!
missingRequirementsMap: aDictionary

!CypressLoaderMissingClasses methodsFor: 'initializing - private' stamp: ''!
initialize

!CypressLoaderMissingClasses methodsFor: 'initializing - private' stamp: ''!
initializeMessageText

!CypressLoaderMissingClasses methodsFor: 'initializing - private' stamp: ''!
initializeRequirementsMap: aDictionary

!CypressLoaderMissingClasses methodsFor: 'accessing' stamp: ''!
requirementsMap

!CypressLoaderMissingClasses methodsFor: 'updating' stamp: ''!
requirementsMap: aDictionary

!Class methodsFor: '*Cypress-Definitions' stamp: ''!
asCypressClassDefinition

!Class methodsFor: '*Cypress-Definitions' stamp: ''!
subclassType

Notification subclass: #CypressLoaderErrorNotification
	instanceVariableNames: 'patchOperation exception'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressLoaderErrorNotification commentStamp: '' prior: 0!
CypressLoaderErrorNotification is used to notify a consumer of the CypressLoader that a particular CypressPatchOperation failed.

!CypressLoaderErrorNotification class methodsFor: 'instance creation' stamp: ''!
patchOperation: aPatchOperation exception: anException

!CypressLoaderErrorNotification methodsFor: 'handling' stamp: ''!
defaultAction

!CypressLoaderErrorNotification methodsFor: 'accessing' stamp: ''!
exception

!CypressLoaderErrorNotification methodsFor: 'updating' stamp: ''!
exception: anException

!CypressLoaderErrorNotification methodsFor: 'initializing - private' stamp: ''!
initializeMessageText

!CypressLoaderErrorNotification methodsFor: 'initializing - private' stamp: ''!
initializePatchOperation: aPatchOperation exception: anException

!CypressLoaderErrorNotification methodsFor: 'handling' stamp: ''!
logNotification: aString

!CypressLoaderErrorNotification methodsFor: 'accessing' stamp: ''!
patchOperation

!CypressLoaderErrorNotification methodsFor: 'updating' stamp: ''!
patchOperation: aCypressPatchOperation

!GsNMethod methodsFor: '*Cypress-Definitions' stamp: ''!
asCypressMethodDefinition

Object subclass: #CypressObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

CypressObject subclass: #CypressDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

CypressDefinition subclass: #CypressClassDefinition
	instanceVariableNames: 'name superclassName category comment instVarNames classInstVarNames classVarNames poolDictionaryNames subclassType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressClassDefinition class methodsFor: 'instance creation' stamp: ''!
name: aClassName superclassName: aSuperclassName category: aCategory instVarNames: someInstanceVariableNames classInstVarNames: someClassInstanceVariableNames classVarNames: someClassVariableNames poolDictionaryNames: somePoolDictionaryNames comment: aComment subclassType: subclassType

!CypressClassDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
actualClass

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
actualClassOrNil

!CypressClassDefinition methodsFor: 'converting' stamp: ''!
asCypressClassDefinition

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
category

!CypressClassDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock

!CypressClassDefinition methodsFor: 'private' stamp: ''!
classInstanceVariablesString

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
classInstVarNames

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
className

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
classNeedingMigration: aClass

!CypressClassDefinition methodsFor: 'private' stamp: ''!
classVariablesString

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
classVarNames

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
comment

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
createOrReviseByteClass

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
createOrReviseClass

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
createOrReviseIndexableClass

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
createOrReviseRegularClass

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
description

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
failedCompiledMethods: someCompiledMethods

!CypressClassDefinition methodsFor: 'comparing' stamp: ''!
hash

!CypressClassDefinition methodsFor: 'private' stamp: ''!
instanceVariablesString

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
instVarNames

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
name

!CypressClassDefinition methodsFor: 'initialization' stamp: ''!
name: aClassName superclassName: aSuperclassName category: aCategory instVarNames: someInstanceVariableNames classInstVarNames: someClassInstanceVariableNames classVarNames: someClassVariableNames poolDictionaryNames: somePoolDictionaryNames comment: aComment subclassType: aSubclassType

!CypressClassDefinition methodsFor: 'private' stamp: ''!
poolDictionariesString

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
poolDictionaryNames

!CypressClassDefinition methodsFor: 'printString' stamp: ''!
printDetailsOn: aStream

!CypressClassDefinition methodsFor: 'dependency' stamp: ''!
provisions

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
recompileWithSubclassesFrom: oldClass to: newClass symbolList: aSymbolList

!CypressClassDefinition methodsFor: 'dependency' stamp: ''!
requirements

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
subclassType

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
superclassName

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
unloadDefinition

!CypressDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition

!CypressDefinition methodsFor: 'loading' stamp: ''!
actualClass

!CypressDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock

!CypressDefinition methodsFor: 'accessing' stamp: ''!
description

!CypressDefinition methodsFor: 'comparing' stamp: ''!
hash

!CypressDefinition methodsFor: 'testing' stamp: ''!
isSameRevisionAs: aDefinition

!CypressDefinition methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressDefinition methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressDefinition methodsFor: 'loading' stamp: ''!
postLoad

!CypressDefinition methodsFor: 'loading' stamp: ''!
postLoadOver: aDefinition

!CypressDefinition methodsFor: 'dependency' stamp: ''!
provisions

!CypressDefinition methodsFor: 'dependency' stamp: ''!
requirements

!CypressDefinition methodsFor: 'loading' stamp: ''!
unloadDefinition

CypressDefinition subclass: #CypressMethodDefinition
	instanceVariableNames: 'classIsMeta source category selector className'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressMethodDefinition class methodsFor: 'instance creation' stamp: ''!
className: aName classIsMeta: isMetaclass selector: aSelector category: aCategory source: aSource

!CypressMethodDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
actualClass

!CypressMethodDefinition methodsFor: 'converting' stamp: ''!
asCypressMethodDefinition

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
category

!CypressMethodDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
classIsMeta

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
className

!CypressMethodDefinition methodsFor: 'initialization' stamp: ''!
className: aName classIsMeta: isMetaclass selector: aSelector category: aCategory source: aSource

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
description

!CypressMethodDefinition methodsFor: 'comparing' stamp: ''!
hash

!CypressMethodDefinition methodsFor: 'visiting' stamp: ''!
instanceMethod: instanceBlock classMethod: classBlock

!CypressMethodDefinition methodsFor: 'testing' stamp: ''!
isInitializer

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
postLoadOver: aDefinition

!CypressMethodDefinition methodsFor: 'printing' stamp: ''!
printDetailsOn: aStream

!CypressMethodDefinition methodsFor: 'dependency' stamp: ''!
requirements

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
selector

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
source

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
theNonMetaClass

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
unloadDefinition

CypressObject subclass: #CypressDefinitionIndex
	instanceVariableNames: 'definitionMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressDefinitionIndex class methodsFor: 'instance creation' stamp: ''!
definitions: aCollection

!CypressDefinitionIndex methodsFor: 'adding' stamp: ''!
add: aDefinition

!CypressDefinitionIndex methodsFor: 'adding' stamp: ''!
addAll: aCollection

!CypressDefinitionIndex methodsFor: 'querying' stamp: ''!
definitionLike: aDefinition ifPresent: foundBlock ifAbsent: errorBlock

!CypressDefinitionIndex methodsFor: 'accessing' stamp: ''!
definitionMap

!CypressDefinitionIndex methodsFor: 'accessing' stamp: ''!
definitions

!CypressDefinitionIndex methodsFor: 'removing' stamp: ''!
remove: aDefinition

CypressObject subclass: #CypressDependencySorter
	instanceVariableNames: 'required provided orderedItems'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressDependencySorter methodsFor: 'building' stamp: ''!
add: aPatchOperation

!CypressDependencySorter methodsFor: 'building' stamp: ''!
addAll: aCollection

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addExternalProvisions: aCollection

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addProvision: aGlobalName

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addRequirement: globalName for: aPatchOperation

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addRequirements: aCollection for: aPatchOperation

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addToOrder: aPatchOperation

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
externalRequirements

!CypressDependencySorter methodsFor: 'private' stamp: ''!
itemsRequiring: globalName

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
itemsWithMissingRequirements

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
orderedItems

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
provided

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
required

!CypressDependencySorter methodsFor: 'private' stamp: ''!
unresolvedRequirementsFor: aPatchOperation

CypressObject subclass: #CypressLoader
	instanceVariableNames: 'additions removals unloadable provisions errors methodAdditions requirements exceptionClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressLoader class methodsFor: 'loading' stamp: ''!
updatePackage: aPackage withSnapshot: aSnapshot

!CypressLoader methodsFor: 'updating' stamp: ''!
addFailedPatchOperation: aPatchOperation

!CypressLoader methodsFor: 'accessing' stamp: ''!
additions

!CypressLoader methodsFor: 'loading' stamp: ''!
analyze

!CypressLoader methodsFor: 'loading' stamp: ''!
analyzeAdditions

!CypressLoader methodsFor: 'loading' stamp: ''!
analyzeRemovals

!CypressLoader methodsFor: 'applying' stamp: ''!
applyAddition: aCypressPatchOperation

!CypressLoader methodsFor: 'applying' stamp: ''!
applyModification: aCypressPatchOperation

!CypressLoader methodsFor: 'applying' stamp: ''!
applyRemoval: aCypressPatchOperation

!CypressLoader methodsFor: 'loading' stamp: ''!
attemptInitialLoad

!CypressLoader methodsFor: 'loading' stamp: ''!
errorOnFailedPatchOperations

!CypressLoader methodsFor: 'accessing' stamp: ''!
errors

!CypressLoader methodsFor: 'loading' stamp: ''!
handleCompileError: aCompileError from: aPatchOperation

!CypressLoader methodsFor: 'loading' stamp: ''!
handlePatchOperation: aPatchOperation failure: anException

!CypressLoader methodsFor: 'loading' stamp: ''!
load

!CypressLoader methodsFor: 'loading' stamp: ''!
loadAdditions: somePatchOperations

!CypressLoader methodsFor: 'operations' stamp: ''!
loadClassDefinition: aPatchOperation

!CypressLoader methodsFor: 'operations' stamp: ''!
loadMethodDefinition: aPatchOperation

!CypressLoader methodsFor: 'accessing' stamp: ''!
methodAdditions

!CypressLoader methodsFor: 'loading' stamp: ''!
notifyOnFailedPatchOperations

!CypressLoader methodsFor: 'loading' stamp: ''!
postLoad

!CypressLoader methodsFor: 'operations' stamp: ''!
postLoad: aPatchOperation

!CypressLoader methodsFor: 'accessing' stamp: ''!
provisions

!CypressLoader methodsFor: 'accessing' stamp: ''!
removals

!CypressLoader methodsFor: 'loading' stamp: ''!
reportUnloadableDefinitions

!CypressLoader methodsFor: 'accessing' stamp: ''!
requirements

!CypressLoader methodsFor: 'loading' stamp: ''!
resetErrors

!CypressLoader methodsFor: 'loading' stamp: ''!
retryFailedLoads

!CypressLoader methodsFor: 'accessing' stamp: ''!
unloadable

!CypressLoader methodsFor: 'operations' stamp: ''!
unloadDefinition: aPatchOperation

!CypressLoader methodsFor: 'loading' stamp: ''!
unloadRemovals: somePatchOperations

!CypressLoader methodsFor: 'loading' stamp: ''!
updatePackage: aPackage withSnapshot: aSnapshot

!CypressObject class methodsFor: 'converting' stamp: ''!
normalizeLineEndings: aString

!CypressObject methodsFor: 'sorting' stamp: ''!
addClasses: subs to: order fromRelevantClasses: classSet organizedBy: org

!CypressObject methodsFor: 'accessing' stamp: ''!
allClasses

!CypressObject methodsFor: 'accessing' stamp: ''!
classesInPackageNamed: aString

!CypressObject methodsFor: 'sorting' stamp: ''!
determineClassHierarchicalOrder: someClasses

!CypressObject methodsFor: 'initializing' stamp: ''!
initialize

!CypressObject methodsFor: 'converting' stamp: ''!
normalizeLineEndings: aString

!CypressObject methodsFor: 'printing' stamp: ''!
printDetailsOn: aStream

!CypressObject methodsFor: 'printing' stamp: ''!
printOn: aStream

!CypressObject methodsFor: 'accessing' stamp: ''!
resolveGlobalNamed: aString

!CypressObject methodsFor: 'accessing' stamp: ''!
resolveGlobalNamed: aString or: aBlock

!CypressObject methodsFor: 'converting' stamp: ''!
stringForVariables: variableList

!CypressObject methodsFor: 'accessing' stamp: ''!
symbolDictionaryForClassNamed: aString

!CypressObject methodsFor: 'accessing' stamp: ''!
symbolDictionaryForClassNamed: aString or: aBlock

CypressObject subclass: #CypressPackageDefinition
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressPackageDefinition class methodsFor: 'instance creation' stamp: ''!
named: aString

!CypressPackageDefinition methodsFor: 'comparing' stamp: ''!
= other

!CypressPackageDefinition methodsFor: 'snapshotting' stamp: ''!
addClass: aClass toDefinitions: definitions

!CypressPackageDefinition methodsFor: 'snapshotting' stamp: ''!
addExtensionMethodsFromClass: aClass toMap: classMap

!CypressPackageDefinition methodsFor: 'snapshotting' stamp: ''!
addMethodsFromClass: aClass toDefinitions: definitions

!CypressPackageDefinition methodsFor: 'accessing' stamp: ''!
classes

!CypressPackageDefinition methodsFor: 'accessing' stamp: ''!
name

!CypressPackageDefinition methodsFor: 'accessing' stamp: ''!
name: aString

!CypressPackageDefinition methodsFor: 'printing' stamp: ''!
printDetailsOn: aStream

!CypressPackageDefinition methodsFor: 'snapshotting' stamp: ''!
snapshot

CypressObject subclass: #CypressPatch
	instanceVariableNames: 'operations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressPatch class methodsFor: 'instance creation' stamp: ''!
fromBase: baseSnapshot toTarget: targetSnapshot

!CypressPatch methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

!CypressPatch methodsFor: 'initialization' stamp: ''!
fromBase: baseSnapshot toTarget: targetSnapshot

!CypressPatch methodsFor: 'accessing' stamp: ''!
operations

CypressObject subclass: #CypressPatchOperation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

CypressPatchOperation subclass: #CypressAddition
	instanceVariableNames: 'definition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressAddition class methodsFor: 'instance creation' stamp: ''!
of: aDefinition

!CypressAddition methodsFor: 'comparing' stamp: ''!
= aPatchOperation

!CypressAddition methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

!CypressAddition methodsFor: 'accessing' stamp: ''!
definition

!CypressAddition methodsFor: 'initialization' stamp: ''!
definition: aDefinition

!CypressAddition methodsFor: 'accessing' stamp: ''!
description

!CypressAddition methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressAddition methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressAddition methodsFor: 'loading' stamp: ''!
postLoadDefinition

!CypressAddition methodsFor: 'dependency' stamp: ''!
provisions

!CypressAddition methodsFor: 'dependency' stamp: ''!
requirements

CypressPatchOperation subclass: #CypressModification
	instanceVariableNames: 'obsoletion modification'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressModification class methodsFor: 'instance creation' stamp: ''!
of: base to: target

!CypressModification methodsFor: 'initialization' stamp: ''!
= aPatchOperation

!CypressModification methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

!CypressModification methodsFor: 'initialization' stamp: ''!
base: base target: target

!CypressModification methodsFor: 'accessing' stamp: ''!
description

!CypressModification methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressModification methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressModification methodsFor: 'accessing' stamp: ''!
modification

!CypressModification methodsFor: 'accessing' stamp: ''!
obsoletion

!CypressModification methodsFor: 'loading' stamp: ''!
postLoadDefinition

!CypressModification methodsFor: 'dependency' stamp: ''!
provisions

!CypressModification methodsFor: 'dependency' stamp: ''!
requirements

!CypressPatchOperation methodsFor: 'comparing' stamp: ''!
= aPatchOperation

!CypressPatchOperation methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

!CypressPatchOperation methodsFor: 'accessing' stamp: ''!
description

!CypressPatchOperation methodsFor: 'comparing' stamp: ''!
hash

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
postLoadDefinition

!CypressPatchOperation methodsFor: 'printing' stamp: ''!
printDetailsOn: aStream

!CypressPatchOperation methodsFor: 'dependency' stamp: ''!
provisions

!CypressPatchOperation methodsFor: 'dependency' stamp: ''!
requirements

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
unloadDefinition

CypressPatchOperation subclass: #CypressRemoval
	instanceVariableNames: 'definition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressRemoval class methodsFor: 'instance creation' stamp: ''!
of: aDefinition

!CypressRemoval methodsFor: 'comparing' stamp: ''!
= aPatchOperation

!CypressRemoval methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

!CypressRemoval methodsFor: 'accessing' stamp: ''!
definition

!CypressRemoval methodsFor: 'initialization' stamp: ''!
definition: aDefinition

!CypressRemoval methodsFor: 'accessing' stamp: ''!
description

!CypressRemoval methodsFor: 'loading' stamp: ''!
loadClassDefinition

!CypressRemoval methodsFor: 'loading' stamp: ''!
loadMethodDefinition

!CypressRemoval methodsFor: 'loading' stamp: ''!
postLoadDefinition

!CypressRemoval methodsFor: 'dependency' stamp: ''!
provisions

!CypressRemoval methodsFor: 'dependency' stamp: ''!
requirements

!CypressRemoval methodsFor: 'loading' stamp: ''!
unloadDefinition

CypressObject subclass: #CypressSnapshot
	instanceVariableNames: 'definitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!

!CypressSnapshot class methodsFor: 'instance creation' stamp: ''!
definitions: aDefinitions

!CypressSnapshot methodsFor: 'comparing' stamp: ''!
= other

!CypressSnapshot methodsFor: 'enumerating' stamp: ''!
classDefinitions: classBlock methodDefinitions: methodBlock

!CypressSnapshot methodsFor: 'accessing' stamp: ''!
definitions

!CypressSnapshot methodsFor: 'accessing' stamp: ''!
definitions: aDefinitions

!CypressSnapshot methodsFor: 'patching' stamp: ''!
patchRelativeToBase: aSnapshot

!CypressSnapshot methodsFor: 'loading' stamp: ''!
updatePackage: aPackage