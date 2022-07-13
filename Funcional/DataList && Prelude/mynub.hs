

mynub' [] ys = reverse ys
mynub' xs ys = if elem (head xs) ys then mynub' (tail xs) ys else mynub' (tail xs) ([head xs] ++ ys)

mynub xs = mynub' xs []



