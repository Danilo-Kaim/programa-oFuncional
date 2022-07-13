import Data.Maybe


filterMaybe :: [Maybe Int] -> [Int]
filterMaybe [] = []
filterMaybe xs = if isJust (head xs) then [fromJust (head xs)] ++ filterMaybe (tail xs) else filterMaybe (tail xs)