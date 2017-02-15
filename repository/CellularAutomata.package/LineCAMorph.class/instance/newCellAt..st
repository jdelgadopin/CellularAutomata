cells
newCellAt: i 
	"remember: the columns of the matrix are represented in
	the x axis and the rows in the y axis"
	| c origin |
	c := CellMorph withLineCAMorph: self location: i.
	origin := self bounds origin.
	c position: i - 1 * self caMorph pixelsPerCell @ 0 + origin.
	c color: self foreground.
	self addMorph: c.
	^ c