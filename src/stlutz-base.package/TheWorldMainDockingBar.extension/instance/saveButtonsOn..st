*stlutz-base
saveButtonsOn: aDockingBar

	| saveButton saveNewVersionButton |
	saveButton := (SimpleButtonMorph newWithLabel: 'Save Image')
		target: self;
		actionSelector: #saveImage;
		vResizing: #spaceFill;
		width: 120.
	saveNewVersionButton := (SimpleButtonMorph newWithLabel: 'Save New Image')
		target: self;
		actionSelector: #saveTimestampedImage;
		vResizing: #spaceFill;
		width: 120.
	aDockingBar
		addMorphBack: saveButton;
		addMorphBack: saveNewVersionButton;
		addDefaultSpace