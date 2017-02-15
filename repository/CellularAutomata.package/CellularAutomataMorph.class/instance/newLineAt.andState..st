lines
newLineAt: i andState: aState 
	"remember: the columns of the matrix are represented in
	the x axis and the rows in the y axis"
	| line origin |
	line := LineCAMorph withCAMorph: self andState: aState.
	origin := self bounds origin.
	line position: 0 @ (i - 1 * self pixelsPerCell) + origin.
	self addMorph: line.
	^ line