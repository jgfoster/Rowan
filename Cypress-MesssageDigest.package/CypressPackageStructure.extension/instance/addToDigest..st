*Cypress-MesssageDigest
addToDigest: aMessageDigestStream

	aMessageDigestStream
		nextPutAll: self class name; cr;
		tab; nextPutAll: 'name:'; nextPutAll: self name; cr;
		tab; nextPutAll: 'properties:'; cr;
		tab; tab.
	self properties writeCypressJsonOn: aMessageDigestStream indent: 2.
	aMessageDigestStream
		cr;
		tab; nextPutAll: 'classes:'; cr.
	(self classes asSortedCollection: [:a :b | a name < b name])
		do: [:each | each addToDigest: aMessageDigestStream].
	aMessageDigestStream
		tab; nextPutAll: 'extensions:'; cr.
	(self extensions asSortedCollection: [:a :b | a name < b name])
		do: [:each | each addToDigest: aMessageDigestStream].