def posicion_pico(v, ini, fin):
    if ini == fin:
        return ini
    mid = (ini + fin) // 2
    if v[mid] > v[mid+1]:
        return posicion_pico(v, ini, mid)
    else:
        return posicion_pico(v, mid+1, fin)

v = [-3, -2, -1, 0, 20]
pico = posicion_pico(v, 0, len(v)-1)
print("La posición del pico es:", pico)