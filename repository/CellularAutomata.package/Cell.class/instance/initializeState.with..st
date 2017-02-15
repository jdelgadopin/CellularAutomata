initialize-release
initializeState: aNumberOfStates with: aNumber 
	super initialize.
	(0 <= aNumber
			and: [aNumber < aNumberOfStates])
		ifTrue: [self numberOfStates: aNumberOfStates.
			self state: aNumber]
		ifFalse: [self error: aNumber asString , ' is not a valid state  (' , aNumberOfStates asString , ')'].
	^ self