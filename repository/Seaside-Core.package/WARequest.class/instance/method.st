accessing
method
	^ method ifNil: [ method := adaptor ifNotNil: [ (adaptor requestMethodFor: nativeRequest) asUppercase ] ]