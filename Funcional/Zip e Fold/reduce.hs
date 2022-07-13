
divisao (x,y) xs
    | x < (head xs) || y < (head xs) = (x,y)
    | (mod x (head xs) == 0) && (mod y (head xs) == 0) = divisao (div x (head xs),div y (head xs)) xs
    | otherwise = divisao (x,y) (tail xs)

reduce (x,y) = divisao (x,y) [2..]