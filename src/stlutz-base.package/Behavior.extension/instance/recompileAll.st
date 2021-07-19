*stlutz-base
recompileAll

	self withAllSubclassesDo: [:cls |
		cls theNonMetaClass compileAll.
		cls theMetaClass compileAll]