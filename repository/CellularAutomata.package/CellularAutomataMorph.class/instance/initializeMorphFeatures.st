initialize-release
initializeMorphFeatures
	| rows columns |
	rows := self maxDisplayTime.
	columns := self cellularAutomata sizeCA.
	self pixelsPerCell: 1.
	self borderWidth: 0.
	self
		color: (Color veryVeryLightGray alpha: 0.1).
	self
		bounds: (100 @ 100 extent: columns * self pixelsPerCell @ (rows * self pixelsPerCell)).
	self
		lines: (Array new: rows).
	self time: 0.
	self startStepping