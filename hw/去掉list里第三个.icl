f3. Extract the second element of the sublists (if there is no such element, ignore that sublist)
[[1,2,3], [3,4,5,6], [], [5,7,8,11], [1], [8,9]]-> [2,4,7,9]
You can test the functions separately as you wish,
but at the end please include the following start expression as well:
Start = (f1 [[1,2], [3,4,5], [6,5,9,7], [], [8]] 66, f2 [1,2,3,4,2,2], f3 [[1,2,3], [3,4,5,6], [], [5,7,8,11], [1], [8,9]])

f3_aux :: [Int] -> [Int]
f3_aux [] = []
f3_aux [x] = []
f3_aux [a:b] = [hd b]

//Start = f3_aux [1..5]
//Start = f3_aux []

f3 :: [[Int]] -> [Int]
f3 [] = []
f3 x = flatten (map (f3_aux) x)

//Start = f3 [[1,2,3], [3,4,5,6], [], [5,7,8,11], [1], [8,9]]

Start = (f1 [[1,2], [3,4,5], [6,5,9,7], [], [8]] 66, f2 [1,2,3,4,2,2], f3 [[1,2,3], [3,4,5,6], [], [5,7,8,11], [1], [8,9]])
