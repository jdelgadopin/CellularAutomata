state
computeNeighbors: position 
	^ self stateSliceFrom: position - self neighborhood to: position + self neighborhood.

