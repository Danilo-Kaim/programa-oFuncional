
tamanho xs = sum $ map fn xs
    where
        fn x = 1




tamanho_recur xs = tamanho_r 0 xs
    where
        tamanho_r acc [] = acc
        tamanho_r acc xs = tamanho_r (acc+1) (tail xs)

tamanho_fold xs = foldl fn 0 xs
    where
        fn y xs = y+1
