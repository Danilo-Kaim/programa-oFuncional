inserir' x xs ys
    | null xs = [x]
    | x <= head xs = [x] ++ xs
    | x >= last xs = xs ++ [x]
    | x > head xs && x <= head (tail xs) = ys ++ [head xs] ++ [x] ++ (tail xs)
    | otherwise = inserir' x (tail xs) (ys ++ [head xs])

inserir x xs = inserir' x xs []

inserir2 (x,y) xs = inserir' y (inserir' x xs []) []

ordena [] [] zs = zs
ordena [] ys zs = ordena [] (tail ys) (inserir (head ys) zs)
ordena xs [] zs = ordena (tail xs) [] (inserir (head xs) zs)    
ordena xs ys zs = ordena (tail xs) (tail ys) (inserir2 (head xs,head ys) zs) 

merge xs ys = ordena xs ys []