support
stateSliceFrom: lowerBound to: upperBound 
	"It would be much easier without *periodic* boundary
	conditions! "
	| slice frontier |
	slice := Array new: upperBound - lowerBound + 1.
	frontier := self isThereABoundaryInTheMiddle: lowerBound upperBound: upperBound.
	(lowerBound to: upperBound)
		do: [:k | slice
				at: k - lowerBound + 1
				put: (self automataState at: k - frontier \\ self sizeCA + frontier)].
	^ slice