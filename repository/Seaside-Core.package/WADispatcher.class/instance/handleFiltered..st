handling
handleFiltered: aRequestContext
	aRequestContext isRequestBad
		ifTrue: [ 
			aRequestContext responseGenerator
				badRequest;
				respond ]
		ifFalse: [ 
			| consumer |
			consumer := aRequestContext consumer.
			consumer atEnd
				ifTrue: [ self handleDefault: aRequestContext ]
				ifFalse: [ self handleFiltered: aRequestContext named: consumer next ] ]