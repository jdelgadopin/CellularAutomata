instance creation
size: size neighbors: numberOfNeighbors numberOfStates: nStates updatingRule: rule 
	^ (self new) 
		initializeWithSize: size
		neighbors: numberOfNeighbors
		numberOfStates: nStates
		updatingRule: rule; yourself