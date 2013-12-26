accessing
consumer
	"Answer the path consumer."

	^ consumer ifNil: [ request ifNotNil: [ consumer := WAPathConsumer path: request url path ] ]