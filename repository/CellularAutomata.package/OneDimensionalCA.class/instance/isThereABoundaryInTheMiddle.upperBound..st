support
isThereABoundaryInTheMiddle: aLowerBound upperBound: anUpperBound 
	(aLowerBound <= 0
			or: [self sizeCA <= anUpperBound])
		ifTrue: [^ 1]
		ifFalse: [^ 0]