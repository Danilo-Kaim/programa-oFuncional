import Data.List
import Data.Maybe

--iterate

gerador1 = (iterate (\x -> if x>0 then x*(-1) else x*(-1)+1) 0)

gerador2 = (iterate (\x -> if x>0 then (x+1)*(-1) else x*(-1)+1) 1)

gerador3 = take 10 (iterate (*2) 1)

--unfold

gera1 = (unfoldr (\x -> if x>0 then Just (x,x*(-1)) else Just (x, x*(-1)+1)) 0 )

gera2 = (unfoldr (\x -> if x>0 then Just (x,(x+1)*(-1)) else Just (x,x*(-1)+1)) 1)

gera3 = (unfoldr (\x -> Just (x,x*2)) 1)

--recursao

gr1 = ([0] ++ ger1 1)
    where
        ger1 x = if x>0 then [x] ++ ger1 (x*(-1)) else [x] ++ ger1 (x*(-1)+1)

gr2 = (ger2 1)
    where
        ger2 x = if x>0 then [x] ++ ger2 ((x+1)*(-1)) else [x] ++ ger2 (x*(-1)+1)
        
gr3 = (ger3 1)
    where
        ger3 x = [x] ++ ger3 (x*2)
        
gera4 x xs
    | x == 1 || x == 0 = xs
    | otherwise = [div x 2] ++ gera4 (div x 2) xs

gerador4 x = [x] ++ gera4 x []



