
soma (x,y) = x*y
produtoEscalar xs ys = sum $ map soma (zip xs ys)