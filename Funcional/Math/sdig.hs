decompor [] = []
decompor xs = [read(take 1 xs)::Int] ++ decompor (tail xs) 


separa x = decompor a
    where
       a = show x


sdig x = sum $ separa x