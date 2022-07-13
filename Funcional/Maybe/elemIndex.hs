
indices v xs = map snd (filter (\x -> (fst x)==v) (zip xs [0..]))

myelemIndex x xs = if null (indices x xs) then Nothing else Just (head (indices x xs))