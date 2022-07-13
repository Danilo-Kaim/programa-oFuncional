ordenada [_] = True
ordenada xs = if head xs > head (tail xs) then False else ordenada (tail xs)