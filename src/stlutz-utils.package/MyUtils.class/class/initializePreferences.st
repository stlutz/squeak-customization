class initialization
initializePreferences

	(UIManager default confirm: 'Load Preferences?') ifFalse: [^ self].
	
	TranscriptStream characterLimit: 10000000. "10MB"
	Workspace shouldStyle: true.
	Model useColorfulWindows: true.
	Model windowActiveOnFirstClick: true.
	Preferences disable: #traceMessages.
	Preferences disable: #showSharedFlaps.
	UIManager openToolsAttachedToMouseCursor: true.
	TextEditor autoEnclose: false.
	TextEditor encloseSelection: true.
	Utilities authorInitials: 'stlu'.
	(UserInterfaceTheme named: 'Community (dark)') apply.