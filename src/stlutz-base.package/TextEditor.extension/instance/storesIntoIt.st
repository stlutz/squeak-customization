*stlutz-base
storesIntoIt
	"Open a MessageSet with the stores into the selected global or variable name."

	self wordSelectAndEmptyCheck: [^ self].
	self selectedInstanceVariable ifNotNil:
		[:nameToClass | ^ self systemNavigation
			browseAllStoresInto: nameToClass key
			from: nameToClass value].
	self selectedBinding ifNotNil:
		[:binding | ^ self systemNavigation browseAllStoresInto: binding key].
	morph flash.