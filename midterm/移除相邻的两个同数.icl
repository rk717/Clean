// 8. Write a function that removes consecutive duplicates in a list.

f8 :: [Int] -> [Int]
f8 [] = []
f8 [a] = [a]
f8 [a,b:c]
| a == b = f8 (dropWhile ((==)a) c)
= [a:f8 [b:c]]

//Start = f8 [4,5,6,6,8,2,2,2,4,0,0,0,7,0,5,0,0,4] //[4,5,8,4,7,0,5,4]

//Start = f8 [1,0,0,2,0,3,3,0,6,7,0,7,7] //[1,2,0,0,6,7,0]

//Start = f8 [2,0,0,6,7,5,0,8,0,5,0,0,0] //[2,6,7,5,0,8,0,5] 
