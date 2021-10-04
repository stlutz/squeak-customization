*stlutz-base-override
spawnIt: aKeyboardEvent
	"Triggered by Cmd-o; spawn a new code window, if it makes sense."

	(UIManager default
		confirm: 'Spawn new code window?') ifFalse: [^ false].
	self spawn.
	^ true