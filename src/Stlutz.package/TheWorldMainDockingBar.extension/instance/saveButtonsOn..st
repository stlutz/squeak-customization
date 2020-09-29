*Stlutz
saveButtonsOn: aDockingBar

	| saveButton saveNewVersionButton |
	saveButton := (SimpleButtonMorph newWithLabel: 'Save Image')
		target: self;
		actionSelector: #saveImage;
		vResizing: #spaceFill;
		width: 120.
	saveNewVersionButton := (SimpleButtonMorph newWithLabel: 'Save Image As ...')
		target: self;
		actionSelector: #saveAs;
		vResizing: #spaceFill;
		width: 120.
	aDockingBar
		addMorphBack: saveButton;
		addMorphBack: saveNewVersionButton;
		addDefaultSpace