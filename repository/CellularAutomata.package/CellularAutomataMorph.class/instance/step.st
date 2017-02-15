stepping
step
	"Only works for binary CA"
	| automataStates |
	self time: 1 + self time.
	self time > self maxDisplayTime
		ifTrue: [Cursor wait
				showWhile: [self submorphsDo: [:each | each delete].
					Smalltalk garbageCollectMost.
					self time: 1]].
	self cellularAutomata update.
	automataStates := self cellularAutomata automataState.
	self lines at: self time put: (self newLineAt: self time andState: automataStates).