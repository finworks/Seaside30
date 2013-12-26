testing
isRequestBad
	^ [ 
	"Perhaps self consumer?"
	request url.
	false ]
		on: Error
		do: [ :error | error return: true ]