
aux = zip ['A'..'Z'] [0..]

aux2 index = fst $ head (filter (\x -> index == snd x) aux)

aux3 char = snd $ head (filter (\x -> char == fst x) aux)

teste x y = aux2 ((aux3 x + aux3 y) `mod` 26)

vigenere x y = zipWith teste x (cycle y)