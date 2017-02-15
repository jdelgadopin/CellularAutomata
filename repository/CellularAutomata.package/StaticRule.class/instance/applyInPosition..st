application
applyInPosition: position 
	| ca neighbors |
	ca := self cellularAutomata.
	neighbors := ca computeNeighbors: position.
	^ self rule at: 1 + (neighbors
				inject: 0
				into: [:subTotal :next | subTotal * ca numberOfStates + next])