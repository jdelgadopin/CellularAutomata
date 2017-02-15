mandatory
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'CellularAutomata'.
			spec group: 'default' with: #('CellularAutomata') ]
		