f1. Insert x as second element in every sublist of a list.
If the sublist was empty then x will be the only element in the new sublist.
[[1,2], [3,4,5], [6,5,9,7], [], [8]] 10 -> [[1,10,2], [3,10,4,5], [6,10,5,9,7], [10], [8,10]]

f1_aux :: Int [Int] -> [Int]
f1_aux x [] = [x]
f1_aux x [h:t] = [h:[x:t]]

Start = f1_aux 1337 [1..10]


f1 :: [[Int]] Int -> [[Int]]
f1 x y = map (f1_aux y) x

//Start = f1 [[1,2], [3,4,5], [6,5,9,7], [], [8]] 10
