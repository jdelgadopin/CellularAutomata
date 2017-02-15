state
update
	self updateStateRepository.
	(1 to: self sizeCA)
		do: [:i | (self state at: i) updateCell]