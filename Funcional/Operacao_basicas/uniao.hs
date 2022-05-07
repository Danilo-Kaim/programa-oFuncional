uniao xs ys = xs ++ fn xs ys
    where
        fn xs [] = []
        fn xs (y:ys) = if elem y xs then fn xs ys else (y:fn xs ys)