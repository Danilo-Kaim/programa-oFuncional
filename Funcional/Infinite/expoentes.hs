import Data.List

expoentes x y = result (iterate fn (x,0))
    where
        result xs = if snd (head xs) == 0 then 1 + result (tail xs) else -1  
        fn (a,b) = divMod a y

main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5         