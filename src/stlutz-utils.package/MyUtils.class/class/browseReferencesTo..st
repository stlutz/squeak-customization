utils
browseReferencesTo: collectionOfBindings

	| methodReferences |
	methodReferences := Set new.
	collectionOfBindings do: [:binding |
		methodReferences addAll: (self systemNavigation allCallsOn: binding)].
	
	MessageSet openMessageList: methodReferences asArray name: 'References'.