deletee x [] = []
deletee x xs = if x == head xs then deletee' (tail xs) else (head xs:deletee x (tail xs))
    where
        deletee' [] = []
        deletee' xs = (head xs: deletee' (tail xs)) 
