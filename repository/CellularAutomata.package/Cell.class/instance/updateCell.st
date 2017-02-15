state
updateCell
	self updateState:
	(self cellularAutomata updatingRule applyInPosition: self location)
	