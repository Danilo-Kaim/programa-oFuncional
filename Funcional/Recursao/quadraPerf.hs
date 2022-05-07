quadperf y = if quadrad 1 y then True else False
    where
        quadrad x y
            | x*x == y = True
            | x*x > y = False
            | otherwise = quadrad (x+1) y