accessing
uri
	^ uri ifNil: [ uri := adaptor ifNotNil: [ (adaptor requestUrlFor: nativeRequest) seasideUrl ] ]