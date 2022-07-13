
inserir' x xs ys
    | null xs = [x]
    | x <= head xs = [x] ++ xs
    | x >= last xs = xs ++ [x]
    | x > head xs && x <= head (tail xs) = ys ++ [head xs] ++ [x] ++ (tail xs)
    | otherwise = inserir' x (tail xs) ([head xs] ++ ys)

inserir x xs = inserir' x xs []