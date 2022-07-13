base' x y xs
    | x < y = reverse (xs ++ [resto])
    | otherwise = base' number y (xs ++ [resto])    
        where
            number = div x y
            resto = mod x y
base x y = [ snd b | a <- divisores, b <- text, a == fst b ]
    where
        divisores = base' x y []
        text = zip [0..] "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"