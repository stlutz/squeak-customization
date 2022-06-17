*stlutz-base
saveTimestampedImage

	| now name fullPath |
	now := DateAndTime now.
	name := String streamContents: [:stream |
		now printYMDOn: stream.
		stream nextPut: $_.
		now hour24 printOn: stream base: 10 length: 2 padded: true.
		stream nextPut: $-.
		now minute printOn: stream base: 10 length: 2 padded: true.
		stream nextPutAll: '.image'].
	fullPath := (FileDirectory on: Smalltalk imagePath) fullNameFor: name.
	Smalltalk saveAs: fullPath.