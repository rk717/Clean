/**9
Use foldr to check if the square root of each integer in a list are all integers. */

f9 :: [Int] -> Bool
f9 myList = foldr (\x y = y && ((sqrt(toReal x)) == (toReal(toInt(sqrt(toRealx)))))) True myList
