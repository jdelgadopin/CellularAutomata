initialize-release
initializeSelfModifying: size 
	self
		initializeWithSize: size
		neighbors: 1
		numberOfStates: 2
		updatingRule: nil.
	self updatingRule: (SelfModifyingRule withCA: self).
	