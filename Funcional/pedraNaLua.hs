import Control.Monad (replicateM)

calculaPontos (z,(x,y)) = (z,cal)
    where
        cal = (max x y) - (min x y)
qualifica (z,(x,y))
    | x>=10 && y>=10 = (z,(x,y))
    | otherwise = (-1,(x,y))

competir (ind1,cal1) (ind2,cal2)
    | cal1 < cal2 = (ind1,cal1)
    | otherwise = (ind2,cal2)

     

desempacota line = (a, b)
    where
      [a,b] = map toInt . words $ line

toInt :: String -> Int
toInt x = read x :: Int


processa vet
    | null b = "sem ganhador"
    | otherwise = show ganhador

    where
        ganhador = fst $ foldl1 competir c
        c = map calculaPontos b
        b = (filter (\(x,y) -> x > 0) a)
        a = (map qualifica (zip [1..] (map desempacota vet)))  

main :: IO ()
main = do
    size <- readLn :: IO Int
    vet <- replicateM size getLine -- [String]
    print $ processa vet