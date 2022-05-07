unico_filter x xs = if (length $ filter (==x) xs) == 1 then True else False

unico_recursao x xs = if frequencia_recursao x xs == 1 then True else False
    where
        frequencia_recursao x xs
            | null xs = 0
            | x == head xs = 1 + frequencia_recursao x (tail xs)
            | otherwise = 0 + frequencia_recursao x (tail xs)