accessing
remoteAddress
	"answer the IP address of the client (String)"

	^ remoteAddress ifNil: [ remoteAddress := adaptor ifNotNil: [ adaptor requestAddressFor: nativeRequest ] ]