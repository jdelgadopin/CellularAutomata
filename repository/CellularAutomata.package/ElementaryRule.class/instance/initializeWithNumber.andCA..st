initialize-release
initializeWithNumber: aNumber andCA: aCellularAutomata 
	"Assuming 1D CA, 1 neighbor to every side, binary state"
	super initialize.
	(0 <= aNumber
			and: [aNumber <= 255])
		ifFalse: [self error: aNumber asString , ' is not an elementary rule'].
	(aCellularAutomata neighborhood = 1
			and: [aCellularAutomata numberOfStates = 2])
		ifFalse: [self error: 'CA is not binary or CA does not have an elementary neighborhood'].
	self
		rule: ((aNumber
				printStringBase: 2
				length: 8
				padded: true) asArray
				collect: [:each | each asInteger - 48]) reverse.
	self cellularAutomata: aCellularAutomata