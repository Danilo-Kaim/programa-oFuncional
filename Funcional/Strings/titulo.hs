import Data.List
titulo xs = intercalate " " (map minusculo b)
    where
        b = words xs
        minusculo (x:xs) = maiusculo [x] ++ [fst y | z <- xs, y <- a , z == fst y || z == snd y]
        maiusculo xs = [snd y | z <- xs, y <- a , z == fst y || z == snd y]
        a = (zip ['a'..'z'] ['A'..'Z']) ++ zip ['1'..'9'] ['1'..'9']