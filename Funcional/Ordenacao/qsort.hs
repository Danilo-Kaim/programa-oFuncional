inserir' x xs ys
    | null xs = [x]
    | x <= head xs = [x] ++ xs
    | x >= last xs = xs ++ [x]
    | x > head xs && x <= head (tail xs) = ys ++ [head xs] ++ [x] ++ (tail xs)
    | otherwise = inserir' x (tail xs) (ys ++ [head xs])

inserir x xs = inserir' x xs []

ordena [] ys = ys
ordena xs ys = ordena (tail xs) (inserir (head xs) ys)

qsort xs = ordena xs []