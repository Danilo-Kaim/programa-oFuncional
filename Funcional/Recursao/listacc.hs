listacc [] = []
listacc (x:xs) = (x:listacc' x xs)
    where
        listacc' x [] = []
        listacc' x xs = ((x + (head xs)):listacc' (x + (head xs)) (tail xs)) 