def karatsuba(x, y):
    n = max(len(str(x)), len(str(y)))
    if n == 1:
        return x * y

    n_2 = n // 2
    a = x // 10**n_2
    b = x % 10**n_2
    c = y // 10**n_2
    d = y % 10**n_2

    ac = karatsuba(a, c)
    bd = karatsuba(b, d)
    ad_bc = karatsuba(a + b, c + d) - ac - bd

    return ac * 10**(2*n_2) + (ad_bc * 10**n_2) + bd