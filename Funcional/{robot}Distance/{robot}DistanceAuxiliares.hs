neib xs index lim
    | ((index - lim) < 0) && ((index + lim) > tam) = sublist 0 tam xs
    | ((index - lim) < 0) = sublist 0 (index+lim+1) xs
    | ((index + lim) > tam) = sublist (index-lim) tam xs
    | otherwise = sublist (index-lim) (index+lim+1) xs
    where
        tam = length xs
        sublist a b xs = take (b - a) (drop a xs)

        
exists y xs = elem y xs
         
dig2char xs = map show xs

set xs index value = take index xs ++ show value ++ drop (index+1) xs

getHoles xs = getHoles' 0 xs 
    where
        getHoles' count [] = []
        getHoles' count xs = if head xs == '.' then [count] ++ getHoles' (count+1) (tail xs) else getHoles' (count+1) (tail xs)


fit (xs, lim) index value = not $ exists (head $ show value) (neib (fst(xs,lim)) index (snd(xs,lim)))



