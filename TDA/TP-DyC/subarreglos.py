def max_subarray(arr):
    if len(arr) == 1:
        return arr

    mitad = len(arr) // 2
    izq = arr[0:mitad]
    der = arr[mitad:]

    max_sub_izq = max_subarray(izq)
    max_sub_der = max_subarray(der)

    max_arreglo_izq = [arr[mitad - 1]]
    sum_izq = arr[mitad - 1]
    max_suma_izq = sum_izq

    for i in range(mitad - 2, -1, -1):
        sum_izq += arr[i]
        if sum_izq > max_suma_izq:
            max_suma_izq = sum_izq
            max_arreglo_izq = arr[i:mitad]

    max_arreglo_der = [arr[mitad]]
    sum_der = arr[mitad]
    max_suma_der = sum_der

    for i in range(mitad + 1, len(arr)):
        sum_der += arr[i]
        if sum_der > max_suma_der:
            max_suma_der = sum_der
            max_arreglo_der = arr[mitad:i + 1]

    max_sub_cruzado = max_arreglo_izq + max_arreglo_der

    if sum(max_sub_izq) >= sum(max_sub_der) and sum(max_sub_izq) >= sum(max_sub_cruzado):
        return max_sub_izq
    elif sum(max_sub_der) >= sum(max_sub_izq) and sum(max_sub_der) >= sum(max_sub_cruzado):
        return max_sub_der
    else:
        return max_sub_cruzado

# Ejemplo de uso
arr = [-8, 9, 7, 5, -2, 0]
resultado = max_subarreglo(arr)
print("El subarreglo de máxima suma es:", resultado)
