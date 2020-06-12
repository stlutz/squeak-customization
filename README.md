# squeak-customization

```smalltalk
TranscriptStream characterLimit: 10000000. "10MB"
Workspace shouldStyle: true.
Model useColorfulWindows: true.
Preferences disable: #traceMessages.
UIManager openToolsAttachedToMouseCursor: true.
TextEditor autoEnclose: false.
TextEditor encloseSelection: true.
Utilities authorInitials: 'stlu'.
(UserInterfaceTheme named: 'Community (dark)') apply.

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

Project current
	showWorldMainDockingBar: false;
	showWorldMainDockingBar: true.
```