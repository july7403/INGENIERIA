def indice_primer_cero(arr):
    def buscar_primer_cero(low, high):
        if low > high:
            return -1  
        mid = (low + high) // 2
        if arr[mid] == 0:
            if mid == 0 or arr[mid - 1] == 1:
                return mid
            else:
                return buscar_primer_cero(low, mid - 1)
        else:
            return buscar_primer_cero(mid + 1, high)

    if arr[0] == 0:
        return 0

    return buscar_primer_cero(0, len(arr) - 1)

arr = [ 1, 1, 1, 1, 0]
primer_cero = indice_primer_cero(arr)
print("El índice del primer 0 es:", primer_cero)