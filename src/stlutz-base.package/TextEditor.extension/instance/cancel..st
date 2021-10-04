*stlutz-base-override
cancel: aKeyboardEvent
	"Cancel unsubmitted changes."

	(UIManager default
		confirm: 'Discard changes?') ifFalse: [^ false].
	self cancel.
	^ true