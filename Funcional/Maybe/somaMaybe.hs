import Data.Maybe


somaMaybe :: Maybe Int -> Maybe Int -> Maybe Int
somaMaybe x y
    | isJust x && isJust y = Just $ fromJust x + fromJust y
    | isJust x && isNothing y = x
    | isNothing x && isJust y =  y
    | otherwise = Nothing