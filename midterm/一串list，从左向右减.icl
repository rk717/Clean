// 2. Write a function that will subtract numbers in a list from the first one. Your solution must use 'foldr' or 'foldl'.

// Return 0 for an empty list.

f2 :: [Int] -> Int
f2 [] = 0
f2 [a:b] = foldl (-) a b

//Start = f2 [10,1,2,3] //4

//Start = f2 [1,2,3,4] //-8

//Start = f2 [1000,500,250,125] //125

//Start = f2 [] //0
