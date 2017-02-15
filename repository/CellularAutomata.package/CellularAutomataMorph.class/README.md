Attention! Only binary automata allowed!

Up to now, there are twodifferent kinds of CA that may be created:

(CellularAutomataMorph elementary: <size> withRule: <ruleNumber>)  openInWindowLabeled: 'Rule  <ruleNumber>'
(CellularAutomataMorph selfModifying: <size>) openInWindowLabeled: 'Selfmodifying'

ex:
(CellularAutomataMorph elementary: 250 withRule: 145) openInWindowLabeled: 'Rule 145'
(CellularAutomataMorph selfModifying: 75) openInWindowLabeled: 'Selfmodifying'

One mouse-click over the morph stops the simulation.
Shift + mouse-click to grab and move the CA morph
