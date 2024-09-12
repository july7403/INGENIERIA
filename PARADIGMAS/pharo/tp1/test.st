TestCase subclass: #AlgoOlimpicosTest
	instanceVariableNames: 'precision'
	classVariableNames: ''
	package: 'TP1-Tests'!

!AlgoOlimpicosTest methodsFor: 'running' stamp: 'JG 8/25/2024 20:22'!
setUp
	super setUp.
	precision := 1e-3.
	"Put here a common initialization logic for tests"! !
#Este método setUp es parte de un test en Pharo, 
y se utiliza para inicializar el entorno de prueba antes de ejecutar cada test. 
Aquí, se define una variable precision con un valor de 1e-3 (0.001), que probablemente se use en los casos de prueba para comparar resultados numéricos con una cierta precisión.

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'JG 9/6/2024 17:17'!
test08UnAtletaConCiertoPesoYEdadPuedeLevantarCiertosKilosEnLaLuna		
	
	"Arrange"	
	| pesoEnLunaEsperado algoOlimpicos pesoMaximoObtenido |
	pesoEnLunaEsperado := 47.48.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	"El atleta es de un pais lejano a Francia por lo que no lo apoya mucha gente." 
	"Por ser joven (30 años o menos) puede levantar un 175% de su peso"
	algoOlimpicos registrarAtletaConNombre: 'Lasha Talakhadze' dePeso: 150 yAltura: 1.97 yEdad: 30 yNacionalidad: 'Georgia'.
	
	"Act"	
	pesoMaximoObtenido := algoOlimpicos pesoMaximoDe: 'Lasha Talakhadze'.
		
	"Assert"
	"Peso en la Luna = Peso en la Tierra × (1.625 / 9.81)"
	self assert: (pesoMaximoObtenido compararPesoEnLunaCon: pesoEnLunaEsperado  precision: precision )
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'JG 8/25/2024 20:04'!
test07EntreVariosAtletasDetectoAlMasDebil
	| atletaMasDebilEsperado atletaMasDebilObtenido algoOlimpicos  |
	
	"Arrange"	
	atletaMasDebilEsperado := 'Antonino Pizzolato'.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Debil'.
	
	algoOlimpicos registrarAtletaConNombre: 'Romain Imadouchene' dePeso: 96 yAltura: 1.83 yEdad: 28 yNacionalidad: 'Francia'.
	algoOlimpicos registrarAtletaConNombre: 'Lasha Talakhadze' dePeso: 150 yAltura: 1.97 yEdad: 30 yNacionalidad: 'Georgia'.
	algoOlimpicos registrarAtletaConNombre: 'Antonino Pizzolato' dePeso: 89 yAltura: 1.75 yEdad: 28 yNacionalidad: 'Italia'.
	algoOlimpicos registrarAtletaConNombre: 'Yu Dongju' dePeso: 88 yAltura: 1.77 yEdad: 31 yNacionalidad: 'Corea del Sur'.
	
	"Act"	
	atletaMasDebilObtenido := algoOlimpicos obtenerAtletaSegunCriterio.
	
	"Assert"
	self assert: atletaMasDebilEsperado equals: atletaMasDebilObtenido
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'DS 9/4/2024 12:21'!
test01UnAtletaConCiertoPesoYEdadPuedeLevantarCiertosKilos		
	| pesoMaximoEsperado pesoMaximoObtenido algoOlimpicos |
	
	"Arrange"	
	pesoMaximoEsperado := 286.635.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	"El atleta es de un pais lejano a Francia por lo que no lo apoya mucha gente." 
	"Por ser joven (30 años o menos) puede levantar un 175% de su peso"
	algoOlimpicos registrarAtletaConNombre: 'Lasha Talakhadze' dePeso: 150 yAltura: 1.97 yEdad: 30 yNacionalidad: 'Georgia'.
	
	"Act"	
	pesoMaximoObtenido := algoOlimpicos pesoMaximoDe: 'Lasha Talakhadze'.
		
	"Assert"
	self assert: (pesoMaximoObtenido compararCon: pesoMaximoEsperado precision: precision )
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'DS 9/4/2024 12:23'!
test03UnAtletaFrancesConCiertoPesoYEdadPuedeLevantarCiertosKilos		
	| pesoMaximoEsperado pesoMaximoObtenido algoOlimpicos  |
	
	"Arrange"	
	pesoMaximoEsperado := 182.268.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	"El atleta es de Francia por lo que mucha gente lo va a apoyar. Va a poder levantar un 25% mas"
	"Por ser joven (30 años o menos) puede levantar un 175% de su peso"
	algoOlimpicos registrarAtletaConNombre: 'Romain Imadouchene' dePeso: 96 yAltura: 1.83 yEdad: 28 yNacionalidad: 'Francia'.
	
	"Act"	
	pesoMaximoObtenido := algoOlimpicos pesoMaximoDe: 'Romain Imadouchene'.
	
	"Assert"
	self assert: (pesoMaximoObtenido compararCon: pesoMaximoEsperado precision: precision )
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'JG 8/25/2024 20:04'!
test06EntreVariosAtletasDetectoAlMasFuerte
	| atletaMasFuerteEsperado atletaMasFuerteObtenido algoOlimpicos  |
	
	"Arrange"	
	atletaMasFuerteEsperado := 'Lasha Talakhadze'.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	algoOlimpicos registrarAtletaConNombre: 'Romain Imadouchene' dePeso: 96 yAltura: 1.83 yEdad: 28 yNacionalidad: 'Francia'.
	algoOlimpicos registrarAtletaConNombre: 'Lasha Talakhadze' dePeso: 150 yAltura: 1.97 yEdad: 30 yNacionalidad: 'Georgia'.
	algoOlimpicos registrarAtletaConNombre: 'Antonino Pizzolato' dePeso: 89 yAltura: 1.75 yEdad: 28 yNacionalidad: 'Italia'.
	algoOlimpicos registrarAtletaConNombre: 'Yu Dongju' dePeso: 88 yAltura: 1.77 yEdad: 31 yNacionalidad: 'Corea del Sur'.
	
	"Act"	
	atletaMasFuerteObtenido := algoOlimpicos obtenerAtletaSegunCriterio.
	
	"Assert"
	self assert: atletaMasFuerteEsperado equals: atletaMasFuerteObtenido
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'JG 8/25/2024 20:03'!
test04EntreUnAtletaYOtroDetectaAlMasFuerte
	| atletaMasFuerteEsperado atletaMasFuerteObtenido algoOlimpicos  |
	
	"Arrange"	
	atletaMasFuerteEsperado := 'Lasha Talakhadze'.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	algoOlimpicos registrarAtletaConNombre: 'Romain Imadouchene' dePeso: 96 yAltura: 1.83 yEdad: 28 yNacionalidad: 'Francia'.
	algoOlimpicos registrarAtletaConNombre: 'Lasha Talakhadze' dePeso: 150 yAltura: 1.97 yEdad: 30 yNacionalidad: 'Georgia'.
	
	"Act"	
	atletaMasFuerteObtenido := algoOlimpicos obtenerAtletaSegunCriterio.
	
	"Assert"
	self assert: atletaMasFuerteEsperado equals: atletaMasFuerteObtenido
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'DS 9/4/2024 12:19'!
test05UnAtletaVeteranoConCiertoPesoYEdadPuedeLevantarCiertosKilos		
	| pesoMaximoEsperado pesoMaximoObtenido algoOlimpicos  |
	
	"Arrange"	
	pesoMaximoEsperado := 155.76.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	"El atleta es de un pais lejano a Francia por lo que no lo apoya mucha gente." 
	"Por ser veterano (31 años o mas) puede levantar un 195% de su peso"
	algoOlimpicos registrarAtletaConNombre: 'Yu Dongju' dePeso: 88 yAltura: 1.77 yEdad: 31 yNacionalidad: 'Corea del Sur'.
	
	"Act"	
	pesoMaximoObtenido := algoOlimpicos pesoMaximoDe: 'Yu Dongju'.
	
	"Assert"
	self assert: (pesoMaximoObtenido compararCon: pesoMaximoEsperado precision: precision )
! !

!AlgoOlimpicosTest methodsFor: 'tests' stamp: 'DS 9/4/2024 12:23'!
test02UnAtletaDePaisLimitrofeConCiertoPesoYEdadPuedeLevantarCiertosKilos		
	| pesoMaximoEsperado pesoMaximoObtenido algoOlimpicos  |
	
	"Arrange"	
	pesoMaximoEsperado := 128.493.
	algoOlimpicos  := AlgoOlimpicos conCriterioMas: 'Fuerte'.
	
	"El atleta es de un pais limitrofe a Francia por lo que el apoyo del publico lo ayuda. Va a poder levantar un 10% mas"
	"Por ser joven (30 años o menos) puede levantar un 175% de su peso"
	algoOlimpicos registrarAtletaConNombre: 'Antonino Pizzolato' dePeso: 89 yAltura: 1.75 yEdad: 28 yNacionalidad: 'Italia'.
	
	"Act"	
	pesoMaximoObtenido := algoOlimpicos pesoMaximoDe: 'Antonino Pizzolato'.
	
	"Assert"
	self assert: (pesoMaximoObtenido compararCon: pesoMaximoEsperado precision: precision )
! !
