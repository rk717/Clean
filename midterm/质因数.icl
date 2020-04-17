// 3. Write a function that returns all prime divisors of a number. e.g. f3 36 = [1,2,3]

f3 :: Int -> [Int]
f3 0 = []
f3 x = removeDup(f3aux x 2 [1])

f3aux :: Int Int [Int] -> [Int]
f3aux x y list
| x == 1 = list
| x rem y == 0 = f3aux (x/y) 2 (list++[y])
= f3aux x (y+1) list

//Start = f3 36 //[1,2,3]

//Start = f3 524287  //[1,524287]

//Start = f3 0 //[]
