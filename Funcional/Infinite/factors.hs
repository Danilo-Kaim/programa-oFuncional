
ehPrimo x = if null (foldl fn [] [2..x-1]) then True else False
    where
        fn acc y = if (mod x y == 0) then acc ++ [y] else acc
 
listaPrimos n = tail[x | x <- [1..n],ehPrimo x]

expoentes x y = if mod x y == 0 then 1 + expoentes (div x y) y else 0

factors' x xs = map fn xs
    where
        fn y = (y,expoentes x y)

factors x = filter (\x -> snd x /= 0 ) (factors' x (listaPrimos x))


