def max_subarray(arr):
    if len(arr) == 1:
        return arr[0]
    
    mitad= len(arr)//2
    izq=arr[0:mitad]
    der=arr[mitad:]
 
    maximo=max(max_subarray(izq),max_subarray(der))

    max_arreglo_izq=arr[mitad-1]
    sum_izq=arr[mitad-1]
    for i in range(mitad-2,-1,-1):
        sum_izq+=arr[i]
        max_arreglo_izq=max(max_arreglo_izq,sum_izq)

       
       
    max_arreglo_der=arr[mitad]
    sum_der=arr[mitad]
    for i in range(mitad,len(arr)):
        sum_der+=arr[i]
        max_arreglo_der=max(max_arreglo_der,sum_der)

    return max(maximo,max_arreglo_der+max_arreglo_izq)

# Ejemplo de uso
arr = [-8, 9, 7, 5,-2,10]
resultado = max_subarray(arr)
print("El subarreglo de máxima suma es:", resultado)
