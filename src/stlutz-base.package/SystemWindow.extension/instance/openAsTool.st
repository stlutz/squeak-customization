*stlutz-base-override
openAsTool
	"Open this window as a tool, that is, honor the preferences such as #reuseWindows and #openToolsAttachedToMouseCursor."
	
	| meOrSimilarWindow |
	meOrSimilarWindow := self openInWorldExtent: self extent.
	Project uiManager openToolsAttachedToMouseCursor ifTrue: [
		"we don't care what kind of event (keyboard or mouse) this is"
		meOrSimilarWindow setProperty: #initialDrop toValue: true.
		meOrSimilarWindow hasDropShadow: false.
		self currentHand attachMorph: meOrSimilarWindow].
	^ meOrSimilarWindow
