accessing-cookies
cookies
	^ cookies ifNil: [ cookies := adaptor ifNotNil: [ adaptor requestCookiesFor: nativeRequest ] ifNil: [ #() ] ]