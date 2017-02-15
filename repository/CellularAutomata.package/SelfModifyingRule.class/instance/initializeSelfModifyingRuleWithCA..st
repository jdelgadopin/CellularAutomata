initialize-release
initializeSelfModifyingRuleWithCA: aCA 
	| halfDomainSize |
	super initialize.
	self cellularAutomata: aCA.
	halfDomainSize := (aCA numberOfStates raisedTo: 2 * aCA neighborhood + 1)
				/ 2.
	self
		rule: [:pos | 
			| temporalRule neighbors | 
			temporalRule := aCA stateSliceFrom: pos - halfDomainSize + 1 to: pos + halfDomainSize.
			neighbors := aCA computeNeighbors: pos.
			temporalRule at: 1 + (neighbors
						inject: 0
						into: [:subTotal :next | subTotal * aCA numberOfStates + next])
			"it will be calculated in real-time"]