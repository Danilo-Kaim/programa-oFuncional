
fib n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fib (n-1) + fib (n-2)


vetFib 0 = []    
vetFib x = vetFib (x-1) ++ [fib (x-1)]