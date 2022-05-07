
maximo (x:xs) = maximo_lista x xs
    where
        maximo_lista x [] = x
        maximo_lista x xs = if x > head xs then maximo_lista x (tail xs) else maximo_lista (head xs) (tail xs) 
