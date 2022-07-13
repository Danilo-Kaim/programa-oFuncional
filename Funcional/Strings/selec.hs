selec xs ys = [ fst x | y <- ys,x <- a, y == snd x]
    where
        a = zip xs [0..] 