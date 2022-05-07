rotEsq 0 ys = ys
rotEsq x ys = rotEsq (x-1) ((tail ys) ++ [head ys])
