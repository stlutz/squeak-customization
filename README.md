# squeak-customization
#### Settings
```smalltalk
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
```

#### Projects
```smalltalk
PreferenceWizardMorph new
	installLatestUpdates;
	installMetacello;
	installFFI;
	installOSProcess;
	installRefactoringTools.

Metacello new
	repository: 'github://squeak-smalltalk/squeak-tonel:squeak';
	baseline: 'Tonel';
	load.

Metacello new
	repository: 'github://MrModder/Autocompletion:master/packages';
	baseline: 'Autocompletion';
	get;
	load.

Metacello new
	baseline: 'Squot';
	repository: 'github://hpi-swa/Squot:develop/src';
	load.
```

#### Modifications
* save buttons in docking bar
* tools attach to mouse even if opened by non-mouse events
* save Squeak image by pressing `Ctrl+Shift+S`
* various utility methods
	* `Behavior >> recompileAll`
	* `Object >> log:`
* change `RefactoringBrowser`s accessor generation to be in line with Squeak's
* ask for confirmation on annoying / destructive text editor shortcuts (`spawn` & `cancel`)


##### After Installation
```smalltalk
Project current
	showWorldMainDockingBar: false;
	showWorldMainDockingBar: true.
```
