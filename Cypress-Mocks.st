SystemOrganization addCategory: 'Cypress-Mocks-Definitions'!

Object subclass: #CypressMockBasic
	instanceVariableNames: 'name'
	classVariableNames: 'Something'
	poolDictionaries: ''
	category: 'Cypress-Mocks-Definitions'!

CypressMockBasic class
	instanceVariableNames: 'current'!

!CypressMockBasic commentStamp: '' prior: 0!
This mock contains basic class and instance method selectors!

!CypressMockBasic class methodsFor: 'accessing' stamp: ''!
current

!CypressMockBasic class methodsFor: 'accessing' stamp: ''!
current: anObject

!CypressMockBasic class methodsFor: 'initialization' stamp: ''!
initialize

!CypressMockBasic methodsFor: 'accessing' stamp: ''!
extra

!CypressMockBasic methodsFor: 'initialization' stamp: ''!
initialize

!CypressMockBasic methodsFor: 'accessing' stamp: ''!
name

!CypressMockBasic methodsFor: 'accessing' stamp: ''!
name: aString

!Object methodsFor: '*Cypress-Mocks-Extensions' stamp: ''!
isCypressMockBasic
CypressMockBasic initialize!