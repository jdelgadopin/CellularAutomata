initialize-release
initializeSelfModifying: size maxTimeDisplay: aTimeNumber 
	super initialize.
	self cellularAutomata: (OneDimensionalCA selfModifying: size).
	self maxDisplayTime: aTimeNumber.
	self initializeMorphFeatures