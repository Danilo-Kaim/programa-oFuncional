removerMaior xs
    | null xs = []
    | head xs == maximum xs = tail xs
    | otherwise = [head xs] ++ removerMaior (tail xs)