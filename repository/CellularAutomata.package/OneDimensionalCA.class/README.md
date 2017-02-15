1D CA definition:
	sizeCA: number of cells in the CA
	numberOfStates: number of states of every cell
	updatingRule: a block that will update the state of a cell, given de 1D-CA and the
	              neighborhood
	neighborhood: how many neighbors per cell at every side (if its value is k, the cells
	              at locations i-k i-k+1 i-k+2 ... i-1 i i+1 ... i+k-2 i+k-1 i+k will be 
					the neighbors of cell i)
IMPORTANT!   
I am assuming *PERIODIC* boundary conditions
