def parte_entera_raiz(n):
    if n == 0 or n == 1:
        return n

    low = 1
    high = n

    while low <= high:
        mid = (low + high) // 2
        if mid * mid <= n and (mid + 1) * (mid + 1) > n:
            return mid
        elif mid * mid < n:
            low = mid + 1
        else:
            high = mid - 1

n = 10
raiz = parte_entera_raiz(n)
print("La parte entera de la raíz cuadrada de", n, "es", raiz)