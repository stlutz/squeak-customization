class initialization
initialize

	self initializePreferences.
	SmalltalkEditor initializeShiftCmdKeyShortcuts. "for Ctrl+Shift+M"
	Project current
		showWorldMainDockingBar: false;
		showWorldMainDockingBar: true.