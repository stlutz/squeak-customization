*stlutz-base
pasteEscaped: aKeyboardEvent 
	"Replace the current text selection by an authorship name/date stamp; invoked by cmd-shift-v, easy way to put an authorship stamp in the comments of an editor."
	self insertAndCloseTypeIn.
	self openTypeIn.
	self
		replace: self selectionInterval
		with: self clipboardText asString storeString asText
		and: [self selectAt: self pointIndex].
	self closeTypeIn.
	^ true