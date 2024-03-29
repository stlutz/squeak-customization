*stlutz-refactoring-override
defineSetterMethod
	| selector definingClass string |
	definingClass := self definingClass.
	string := self needsReturnForSetter 
				ifTrue: ['<1s> anObject<n><n><t>^ <2s> := anObject']
				ifFalse: ['<1s> anObject<n><n><t><2s> := anObject.'].
	selector := self safeMethodNameFor: definingClass
				basedOn: variableName asString , ':'.
	definingClass 
		compile: (string expandMacrosWith: selector with: variableName)
		classified: #accessing.
	^selector