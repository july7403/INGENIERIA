import sys
sys.setrecursionlimit(10000)
class Grafo:
    def __init__(self):
        self.adyacencia = {}


class Grafo:
    def __init__(self):
        self.adyacencia = {}

    def agregar_vertice(self, vertice):
        if vertice not in self.adyacencia:
            self.adyacencia[vertice] = []

    def agregar_arista(self, origen, destino):
        self.agregar_vertice(origen)
        self.agregar_vertice(destino)
        self.adyacencia[origen].append(destino)
        self.adyacencia[destino].append(origen)

    def hay_arista(self, origen, destino):
        return destino in self.adyacencia.get(origen, [])

    def adyacentes(self, vertice):
        return self.adyacencia.get(vertice, [])

    def vertices(self):
        return list(self.adyacencia.keys())

def es_bipartito(grafo):
    colores = {}  

    def dfs(vertice, color):
        colores[vertice] = color 
        for vecino in grafo.adyacentes(vertice):
            if vecino not in colores:
                if not dfs(vecino, not color):
                    return False
            elif colores[vecino] == colores[vertice]:
                return False
        return True

    for vertice in grafo.vertices():
        if vertice not in colores:
            if not dfs(vertice, True):
                return False

    return True

grafo = Grafo()

grafo.agregar_arista(1, 2)
grafo.agregar_arista(1, 3)
grafo.agregar_arista(2, 4)
grafo.agregar_arista(3, 4)


resultado = es_bipartito(grafo)
if resultado:
    print("El grafo es bipartito.")
else:
    print("El grafo no es bipartito.")
