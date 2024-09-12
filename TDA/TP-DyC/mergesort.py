def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    
    mid = len(arr) // 2
    fin = arr[:mid]
    inicio = arr[mid:]
    
    fin = merge_sort(fin)
    inicio = merge_sort(inicio)
    
    return merge(fin, inicio)

def merge(fin, inicio):
    result = []
    i = j = 0
    
    while i < len(fin) and j < len(inicio):
        if fin[i] <= inicio[j]:
            result.append(fin[i])
            i += 1
        else:
            result.append(inicio[j])
            j += 1
    
    result.extend(fin[i:])
    result.extend(inicio[j:])
    
    return result

arr = [5, 2, 8, 3, 1, 6, 4]
arr_ordenado = merge_sort(arr)
print("Arreglo ordenado:", arr_ordenado)