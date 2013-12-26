accessing-body
postFields
	^ postFields
		ifNil: [ postFields := adaptor ifNotNil: [ adaptor requestFieldsFor: nativeRequest ] ifNil: [ Dictionary new ] ]