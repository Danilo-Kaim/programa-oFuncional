
frequencia_filter x xs = length $ filter (==x) xs

frequencia_compreesaoLista x xs = sum[1|y<-xs,x == y]

frequencia_recursao x xs
    | null xs = 0
    | x == head xs = 1 + frequencia_recursao x (tail xs)
    | otherwise = 0 + frequencia_recursao x (tail xs)

frequencia x xs = foldl fn 0 xs
    where
        fn acc y = if x == y then acc+1 else acc 