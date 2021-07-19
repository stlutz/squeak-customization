*stlutz-base-override
tryInvokeKeyboardShortcut: aKeyboardEvent

	aKeyboardEvent commandKeyPressed ifFalse: [^ self].
	
	aKeyboardEvent keyCharacter caseOf: {
		[$R] -> [Utilities browseRecentSubmissions].
		[$L] -> [self findAFileList: aKeyboardEvent].
		[$O] -> [self findAMonticelloBrowser].
		[$P] -> [self findAPreferencesPanel: aKeyboardEvent].
		"[$Z] -> [ChangeList browseRecentLog]."
		[$S] -> [Smalltalk snapshot: true andQuit: false]. "save image with Ctrl+Shift+S"
	} otherwise: [^ self "no hit"].
	
	aKeyboardEvent ignore "hit!".