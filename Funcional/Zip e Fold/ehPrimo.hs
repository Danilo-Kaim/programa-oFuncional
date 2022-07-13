ehPrimo x = if null (foldl fn [] [2..x-1]) then True else False
    where
        fn acc y = if (mod x y == 0) then acc ++ [y] else acc 