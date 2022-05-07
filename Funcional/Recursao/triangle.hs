triangle 1 = [[1]]
triangle n = triangle (n-1) ++ [line n]
    where
        line x = reverse $ line' x x
            where
                line' x 0 = []
                line' x y = [sum[1..x-1]+y] ++ line' x (y-1)