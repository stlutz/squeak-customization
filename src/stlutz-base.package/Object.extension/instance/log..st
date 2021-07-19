*stlutz-base
log: anObject

	| stream |
	stream := FileStream stdout.
	stream nextPutAll: anObject asString.
	stream perform: stream lineEndConvention.
	stream flush.