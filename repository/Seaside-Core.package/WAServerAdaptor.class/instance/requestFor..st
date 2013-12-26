converting
requestFor: aNativeRequest
	"Answer a request object for aNativeRequest."

	^ WARequest basicNew
		adaptor: self;
		nativeRequest: aNativeRequest;
		yourself