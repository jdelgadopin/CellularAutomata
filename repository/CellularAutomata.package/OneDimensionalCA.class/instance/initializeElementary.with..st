initialize-release
initializeElementary: size with: aNumber 
	self
		initializeWithSize: size
		neighbors: 1
		numberOfStates: 2
		updatingRule: nil.
	self updatingRule: (ElementaryRule withNumber: aNumber andCA: self).
	