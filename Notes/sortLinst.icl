module test
import StdEnv

mySort:: [Int] -> [Int]
mySort [] = []
mySort [x:xs] = left ++ [x] ++ right
where
	left = mySort [y \\ y <- xs | y > x]
    right = mySort [y \\ y <- xs | y < x]

Start = mySort [2,3,2,1,4,3,3,5]
