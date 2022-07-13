import Data.List


contador (x:xs)
    | null xs = 1
    | x == head xs = 1  + contador xs
    | otherwise = 1


compac [] = []
compac xs = a ++ compac (snd $ (splitAt (contador xs) xs))
    where
        a = if (contador xs) == 1 then [[head xs]] else [[head xs,contador xs]]

