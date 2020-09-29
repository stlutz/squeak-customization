*Stlutz-override
fillDockingBar: aDockingBar 
	"Private - fill the given docking bar"
	
	self menusOn: aDockingBar.
	aDockingBar addSpacer.
	self saveButtonsOn: aDockingBar.
	self rightSideOn: aDockingBar.
	aDockingBar
		setProperty: #mainDockingBarTimeStamp 
		toValue: self class timeStamp.