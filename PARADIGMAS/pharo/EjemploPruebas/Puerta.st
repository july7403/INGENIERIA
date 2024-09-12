Object subclass: #Puerta
	instanceVariableNames: 'abierta manijaGirada'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!Puerta methodsFor: 'initialization' stamp: 'Pablo 9/13/2018 20:58'!
initialize
	abierta := false.
	manijaGirada := false.! !


!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 9/13/2018 20:58'!
girarManija
	manijaGirada := true.! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 9/13/2018 20:59'!
empujar
	manijaGirada ifTrue: [ 
		abierta := true. ].! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 9/13/2018 21:03'!
tirarManija
	abierta := false.
	manijaGirada := false.! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 9/13/2018 20:50'!
estaAbierta
 ^abierta.! !