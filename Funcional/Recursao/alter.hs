
alter x
    | x == 1 = [1,-1]
    |otherwise = alter (x-1) ++ [x, (-x)]