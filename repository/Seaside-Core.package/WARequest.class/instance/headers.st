accessing
headers
	^ headers
		ifNil: [ headers := adaptor ifNotNil: [ adaptor requestHeadersFor: nativeRequest ] ifNil: [ WAHeaderFields new ] ]