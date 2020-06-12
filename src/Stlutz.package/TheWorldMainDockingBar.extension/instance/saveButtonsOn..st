*Stlutz
saveButtonsOn: aDockingBar

	| saveButton saveNewVersionButton |
	saveButton := (SimpleButtonMorph newWithLabel: 'Save Image')
		target: self;
		actionSelector: #saveImage;
		vResizing: #spaceFill;
		width: 200.
	saveNewVersionButton := (SimpleButtonMorph newWithLabel: 'Save Image As New Version')
		target: self;
		actionSelector: #saveAsNewVersion;
		vResizing: #spaceFill;
		width: 200.
	aDockingBar
		addMorphBack: saveButton;
		addMorphBack: saveNewVersionButton;
		addDefaultSpace