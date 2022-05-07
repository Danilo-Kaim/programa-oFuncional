intercal xs ys
    | null xs && null ys = []
    | null xs = ys
    | null ys = xs
    | otherwise = [head xs] ++ [head ys] ++ intercal (tail xs) (tail ys)

intercal_fold xs ys = filter (/=(-1)) $ foldl fn [] (conserta xs ys)
    where
        fn acc x = acc ++ [fst x] ++ [snd x]   
        conserta xs ys
            | length xs < length ys = zip (xs ++ [-1,-1..]) ys
            | length xs > length ys = zip xs (ys ++ [-1,-1..])
            | otherwise = zip xs ys


