initialize-release
initializeCellRandomState
	| stateTemp |
	stateTemp := Array new: self sizeCA.
	(1 to: self sizeCA)
		do: [:i | 
			| cell | 
			cell := Cell random: self numberOfStates.
			cell location: i;
				 cellularAutomata: self.
			stateTemp at: i put: cell].
	self state: stateTemp.