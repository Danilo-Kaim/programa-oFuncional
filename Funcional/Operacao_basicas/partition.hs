
splitints fn xs = ([x | x <- xs ,fn x],[x | x <- xs , not $ fn x])