
concatena xs ys 
    | null ys = xs
    | otherwise = concatena (reverse (head ys: reverse xs)) (tail ys)