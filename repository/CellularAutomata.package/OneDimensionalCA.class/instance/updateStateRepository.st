state
updateStateRepository
	self automataState: (self state collect: [:each | each state])
