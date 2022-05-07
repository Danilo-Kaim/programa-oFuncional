elemento x xs = xs !! (fn x)
    where
        fn x
            | x < 0 = length xs + x
            | otherwise = x

elemento_recur y xs = if y < 0 then recur ((-y)-1) (reverse xs) else recur y xs 
    where 
        recur 0 xs = head xs
        recur y xs = recur (y-1) (tail xs)                      