initialize-release
initializeWithCAMorph: aCAMorph state: aState 
	| sizeCA numberOfOnes minorityState |
	super initialize.
	self caMorph: aCAMorph.
	self state: aState.
	self useSquareCorners.
	self borderWidth: 0.
	sizeCA := self caMorph cellularAutomata sizeCA.
	self
		cells: (Array new: sizeCA).
	self
		bounds: (0 @ 0 extent: sizeCA * self caMorph pixelsPerCell @ self caMorph pixelsPerCell).
	numberOfOnes := self state
				inject: 0
				into: [:subTotal :next | subTotal + next].
	numberOfOnes > (sizeCA / 2)
		ifTrue: [minorityState := 0.
			self
				foreground: (Color white alpha: 1.0).
			self
				color: (Color black alpha: 1.0)]
		ifFalse: [minorityState := 1.
			self
				foreground: (Color black alpha: 1.0).
			self
				color: (Color white alpha: 1.0)].
	1
		to: sizeCA
		do: [:j | minorityState
					= (self state at: j)
				ifTrue: [self cells
						at: j
						put: (self newCellAt: j)]]