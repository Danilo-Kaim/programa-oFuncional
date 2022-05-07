rotDir 0 ys = ys
rotDir x ys = rotDir (x-1) ([last ys] ++ (init ys))