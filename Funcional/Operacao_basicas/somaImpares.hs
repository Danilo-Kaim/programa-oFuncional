somaImpares xs = sum $ filter odd xs
somaImpares_compreesaoLista xs = sum $ [if mod x 2 == 1 then x else 0| x <- xs]