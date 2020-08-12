*stlutz
recompileAll

	self withAllSubclassesDo: [:cls |
		cls theNonMetaClass compileAll.
		cls theMetaClass compileAll]