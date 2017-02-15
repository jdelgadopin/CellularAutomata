initialize-release
initializeCellMaxInTheMiddleState
	| stateTemp |
	stateTemp := Array new: self sizeCA.
	(1 to: self sizeCA)
		do: [:i | 
			| cell | 
			cell := Cell zero: self numberOfStates.
			cell location: i;
				 cellularAutomata: self.
			stateTemp at: i put: cell].
	(stateTemp at: (self sizeCA / 2)) updateState: (self numberOfStates - 1).
	self state: stateTemp