import Data.List
import Data.Maybe

neib xs index lim
    | ((index - lim) < 0) && ((index + lim) > tam) = sublist 0 tam xs
    | ((index - lim) < 0) = sublist 0 (index+lim+1) xs
    | ((index + lim) > tam) = sublist (index-lim) tam xs
    | otherwise = sublist (index-lim) (index+lim+1) xs
    where
        tam = length xs
        sublist a b xs = take (b - a) (drop a xs)

                
exists y xs = elem y xs
                
dig2char xs = map show xs

set xs index value = take index xs ++ show value ++ drop (index+1) xs

getHoles xs = getHoles' 0 xs 
    where
        getHoles' count [] = []
        getHoles' count xs = if head xs == '.' then [count] ++ getHoles' (count+1) (tail xs) else getHoles' (count+1) (tail xs)


fit (xs, lim) index value = not $ exists (head $ show value) (neib (fst(xs,lim)) index (snd(xs,lim)))

solve (xs, lim) holes hindex
    |(length holes) == hindex =  Just xs
    |null (solve' fit') = solve ((xs),lim) holes (hindex-1) 
    |otherwise = solve ((solve' fit'),lim) holes (hindex+1)
       where
          solve' [] = []
          solve' ys = if snd(head ys) then (set xs (holes!!hindex) (fst(head ys))) else solve' (tail ys)  
          fit' = zip [0..lim] (map (fit (xs,lim) (holes!!hindex)) [0..lim])               

mainSolver xs lim = fromJust $ solve (xs,lim) (getHoles xs) 0
         

        
        





