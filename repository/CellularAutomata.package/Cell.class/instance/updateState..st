state
updateState: aNumber 
	(0 <= aNumber
			and: [aNumber < self numberOfStates])
		ifTrue: [self state: aNumber]
		ifFalse: [self error: aNumber asString , ' is not a valid state  (' , self numberOfStates asString , ')']