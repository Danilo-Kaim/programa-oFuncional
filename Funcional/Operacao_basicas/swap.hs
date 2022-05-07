swap xs a b = if b <= (length xs) then fn xs a b else xs
    where
        fn xs a b = take a xs ++ [xs!!b] ++ take (b-a-1) (drop (a+1) xs) ++ [xs!!a] ++ drop (b+1) xs