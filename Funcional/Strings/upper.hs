import Data.List
upper xs = intercalate " " (map upper' b)
    where
        b = words xs
        upper' xs = [snd y | z <- xs, y <- a , z == fst y || z == snd y]
        a = (zip ['a'..'z'] ['A'..'Z']) ++ zip ['1'..'9'] ['1'..'9']