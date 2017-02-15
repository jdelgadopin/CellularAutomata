initialize
initializeWithLineCAMorph: aLineCAMorph location: i
	super initialize.
	self lineCaMorph: aLineCAMorph.
	self location: i.
	self color: Color veryVeryLightGray.
	self borderWidth: 0.
	self useSquareCorners.
	self
		bounds: (0 @ 0 corner: self lineCaMorph caMorph pixelsPerCell @ self lineCaMorph caMorph pixelsPerCell)