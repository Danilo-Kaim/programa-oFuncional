maioresQue x xs
    | null xs = []
    | x < head xs = [head xs] ++ maioresQue x (tail xs)
    | otherwise = maioresQue x (tail xs)