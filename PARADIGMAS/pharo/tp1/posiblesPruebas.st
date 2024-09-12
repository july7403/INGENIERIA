Object subclass: AlgoOlimpicos [
    | atletas criterio |

    AlgoOlimpicos class >> conCriterioMas: unCriterio [
        ^ self new initializeConCriterio: unCriterio.
    ]

    initializeConCriterio: unCriterio [
        criterio := unCriterio.
        atletas := OrderedCollection new.
    ]

    registrarAtletaConNombre: unNombre dePeso: unPeso yAltura: unaAltura yEdad: unaEdad yNacionalidad: unaNacionalidad [
        | atleta |
        atleta := Dictionary new.
        atleta at: #nombre put: unNombre.
        atleta at: #peso put: unPeso.
        atleta at: #altura put: unaAltura.
        atleta at: #edad put: unaEdad.
        atleta at: #nacionalidad put: unaNacionalidad.
        atletas add: atleta.
    ]

    pesoMaximoDe: unNombre [
        | atleta porcentaje pesoMaximo |
        atleta := atletas detect: [:a | (a at: #nombre) = unNombre].
        porcentaje := (atleta at: #edad) <= 30 ifTrue: [1.75] ifFalse: [1.95].

        "Cálculo adicional para apoyos o nacionalidad"
        (atleta at: #nacionalidad) = 'Francia' ifTrue: [porcentaje := porcentaje + 0.25].
        (atleta at: #nacionalidad) = 'Italia' ifTrue: [porcentaje := porcentaje + 0.10].

        pesoMaximo := (atleta at: #peso) * porcentaje.
        ^ pesoMaximo.
    ]

    obtenerAtletaSegunCriterio [
        ^ criterio = 'Fuerte'
            ifTrue: [atletas max: [:a :b | (self pesoMaximoDe: (a at: #nombre)) > (self pesoMaximoDe: (b at: #nombre))]]
            ifFalse: [atletas min: [:a :b | (self pesoMaximoDe: (a at: #nombre)) < (self pesoMaximoDe: (b at: #nombre))]].
    ]
]
