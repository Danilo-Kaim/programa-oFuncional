pertence x xs = if elem x xs then True else False

pertence_filter x xs = (length $ filter (==x) xs,if elem x xs then True else False) --(Quantidades de Aparições de x em xs,Se pertence)


pertence_recur x [] = False
pertence_recur x xs = if x == head xs then True else pertence_recur x (tail xs) 