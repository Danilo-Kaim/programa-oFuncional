reverso xs
    | null xs = []
    | otherwise = reverso (tail xs) ++ [head xs]