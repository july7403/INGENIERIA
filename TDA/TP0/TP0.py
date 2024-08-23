def indice_mas_bajo(alumnos):
    fin=len(alumnos) - 1
    inicio = 0
    
    while fin > inicio:
        mitad = (inicio + fin) // 2
        if alumnos[mitad].altura > alumnos[mitad + 1].altura:
            inicio = mitad + 1
        else:
            fin = mitad
    
    return inicio

def validar_mas_bajo(alumnos, indice):
    if indice <= 0 or indice >= len(alumnos) - 1:
        return False
    
    return alumnos[indice - 1].altura > alumnos[indice].altura < alumnos[indice + 1].altura

class Alumno:
    def __init__(self, nombre, altura):
        self.nombre = nombre
        self.altura = altura


alumnos = [
    Alumno("Alumno 1", 1.70),
    Alumno("Alumno 2", 1.15),
    Alumno("Alumno 3", 0.04),
    Alumno("Alumno 2", 0.12),
    Alumno("Alumno 5", 0.98),
    Alumno("Alumno 6", 0.99),
    Alumno("Alumno 7", 1.18),
    Alumno("Alumno 8", 1.23)
]

indice_bajo = indice_mas_bajo(alumnos)
print(f"Índice del alumno más bajo: {indice_bajo}")  

print(validar_mas_bajo(alumnos, indice_bajo))  
