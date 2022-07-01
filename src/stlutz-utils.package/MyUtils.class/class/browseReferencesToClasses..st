utils
browseReferencesToClasses: collectionOfClasses

	| bindings |
	bindings := collectionOfClasses collect: [:cls | cls binding].
	self browseReferencesTo: bindings.