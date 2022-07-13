
concatmap fn xs = foldl fn1 [] xs
    where
        fn1 acc x = acc ++ (fn x) 