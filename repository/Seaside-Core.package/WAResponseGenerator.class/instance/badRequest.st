generation
badRequest
	"The http request is bad."

	self response
		badRequest;
		contentType: WAMimeType textPlain;
		nextPutAll: 'bad request'