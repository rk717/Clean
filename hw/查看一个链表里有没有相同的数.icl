
f2. Check if a list contains 2 equal elements one after the other
(they can be anywhere in the list)
for [1,2,3,3,2,4,5] is True for [1 .. 5] is False

f2_aux :: Int [Int] -> Bool
f2_aux x [] = False
f2_aux x [h:t]
| x == h = True
| x <> h = f2_aux x t

//Start = f2_aux 10 [1..10]

f2 :: [Int] -> Bool
f2 [] = False
f2 [h:t]
| f2_aux h t = True
| otherwise = f2_aux (hd t) (tl t)

//Start = f2 [1,2,2,3,4,5]
