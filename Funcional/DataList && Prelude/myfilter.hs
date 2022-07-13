myfilter fn [] = []
myfilter fn xs = if fn (head xs) then [(head xs)] ++ myfilter fn (tail xs) else myfilter fn (tail xs)