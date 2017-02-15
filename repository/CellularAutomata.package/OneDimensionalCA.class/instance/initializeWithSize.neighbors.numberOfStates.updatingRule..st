initialize-release
initializeWithSize: size neighbors: numberOfNeighbors numberOfStates: nStates updatingRule: rule 
	"numberOfNeighbors means how many neighbors has a cell on
	one side"
	sizeCA := size.
	numberOfStates := nStates.
	neighborhood := numberOfNeighbors.
	self initializeCellRandomState.
	automataState := self state
				collect: [:each | each state].
	updatingRule := rule