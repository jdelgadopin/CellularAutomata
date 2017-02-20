initialize-release
initializeElementary: size withRule: aRuleNumber maxTimeDisplay: aTimeNumber 
	super initialize.
	self cellularAutomata: (OneDimensionalCA elementary: size withRule: aRuleNumber).
	self maxDisplayTime: aTimeNumber.
	self initializeMorphFeatures.
	