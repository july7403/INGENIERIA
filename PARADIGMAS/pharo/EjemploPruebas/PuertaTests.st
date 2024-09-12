TestCase subclass: #PuertaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PuertaTests'!

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 20:57'!
test05EmpujoLaPuertaSinGirarManijaPuertaPermaneceCerrada
	|unaPuerta|
	
	"Arrange"
	unaPuerta := Puerta new.
	unaPuerta empujar.
	
	"Assert"
	self assert: (unaPuerta estaAbierta) not.! !

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 20:48'!
test03DeberiaAbrirseLaPuertaAlGirarLaManijaYEmpujar

	|unaPuerta|
	
	"Arrange"
	unaPuerta := Puerta new.
	
	"Act"
	unaPuerta girarManija. 
	unaPuerta empujar.
	
	"Assert"
	self assert: unaPuerta estaAbierta.! !

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 21:01'!
test06DeberiaNoAbrirLaPuertaSinGirarLaManijaDespuesDeAbrirlaUnaVez
	|unaPuerta|
	
	"Arrange"
	unaPuerta := Puerta new.
	unaPuerta girarManija.
	unaPuerta empujar.
	
	unaPuerta tirarManija.
	
	unaPuerta empujar.
	
	"Assert"
	self assert: (unaPuerta estaAbierta) not.! !

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 20:54'!
test04PuedoCerrarLaPuertaTirandoDeLaManija
	|unaPuerta|
	
	"Arrange"
	unaPuerta := Puerta new.
	unaPuerta girarManija.
	unaPuerta empujar.
	unaPuerta tirarManija.
	
	"Assert"
	self assert: (unaPuerta estaAbierta) not.! !

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 20:45'!
test02PuertaDeberiaSeguirCerradaSoloGirandoLaManijaAlEmpezar
	|unaPuerta|
	
	"Arrange"
	unaPuerta := Puerta new.
	unaPuerta girarManija. 
	
	"Assert"
	self assert: (unaPuerta estaAbierta) not.! !

!PuertaTest methodsFor: 'tests' stamp: 'Pablo 9/13/2018 20:38'!
test01PuertaDeberiaEmpezarCerrada
	|unaPuerta resultado|

	"Arrange"
	unaPuerta := Puerta new.
	
	"Act"
	resultado := (unaPuerta estaAbierta) not.
	
	"Assert"
	self assert: resultado.! 