Object subclass: #ManijaGirada
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!ManijaGirada methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 23:01'!
empujar
	^PuertaAbierta new.! !


Object subclass: #ManijaSinGirar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!ManijaSinGirar methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 23:02'!
empujar
	^PuertaCerrada new.! !


Object subclass: #Puerta
	instanceVariableNames: 'condicion manija'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!Puerta methodsFor: 'initialization' stamp: 'Pablo 3/27/2019 22:57'!
initialize
	manija := ManijaSinGirar new.
	condicion := PuertaCerrada new.! !


!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:57'!
girarManija
	manija := ManijaGirada new.! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 23:04'!
tirarManija
	condicion := condicion tirarManija.
	manija := ManijaSinGirar new.! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:59'!
empujar
	condicion := condicion empujarCon: manija.! !

!Puerta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:42'!
estaAbierta
 ^condicion abierta.! !


Object subclass: #PuertaAbierta
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!PuertaAbierta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:49'!
abierta
	^true.! !

!PuertaAbierta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:53'!
tirarManija
	^PuertaCerrada new.! !

!PuertaAbierta methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 23:01'!
empujarCon: unaManija
	^unaManija empujar.! !


Object subclass: #PuertaCerrada
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Puerta'!

!PuertaCerrada methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:49'!
abierta
	^false.! !

!PuertaCerrada methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 22:53'!
tirarManija
	^self.! !

!PuertaCerrada methodsFor: 'as yet unclassified' stamp: 'Pablo 3/27/2019 23:00'!
empujarCon: unaManija
	^ unaManija empujar.! !