accessing
version
	^ version ifNil: [ version := adaptor ifNotNil: [ adaptor requestVersionFor: nativeRequest ] ]