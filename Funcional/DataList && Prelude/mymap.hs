
mymap fn [] = []
mymap fn xs = [fn (head xs)] ++ mymap (fn) (tail xs)