def parte_entera_raiz(n):
    def buscar_raiz_cuadrada(inicio, fin):
        if inicio > fin:
            return inicio - 1
        mit = (inicio + fin) // 2
        if mit * mit <= n and (mit + 1) * (mit + 1) > n:
            return mit
        elif mit * mit < n:
            return buscar_raiz_cuadrada(mit + 1, fin)
        else:
            return buscar_raiz_cuadrada(inicio, mit - 1)

    if n == 0 or n == 1:
        return n

    return buscar_raiz_cuadrada(1, n)

n = 10
raiz = parte_entera_raiz(n)
print("La parte entera de la raíz cuadrada de", n, "es", raiz)