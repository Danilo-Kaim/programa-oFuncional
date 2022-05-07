sublist a b xs
    | a >= 0 && b >= 0 = take (b - a) (drop a xs)
    | a < 0 && b >= 0 && (c + a) < b = sublist (c + a) b xs
    | a >= 0 && b < 0 && a < (c + b) =  sublist a (c + b) xs
    | a < 0 && b < 0 && a < b = sublist (c + a) (c + b) xs 
    where
        c = length xs 