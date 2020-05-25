module test_10
import StdEnv

//given an operator and two lists, apply the operator to the elements
//of the same position of lists, like in the example
//Start = op2 (*) [2,3] [7,8,9,10] // [14,24]

:: Operator a :== a a -> a

op2 :: (Operator a) [a] [a] -> [a]
op2 op l1 l2 = [op x y \\x<-l1 & y<-l2]
//Start = op2 (*) [2,3,4,5] [7,8,9,10] // [14,24,36,50]
//Start = op2 (*) [2,3,4,5] [7,8] // [14,24]
//Start = op2 (*) [2,3] [7,8,9,10] // [14,24]
//Start :: [Int]
//Start = op2 (*) [] [] // []
//Start = op2 (+) [3,2] [7,8] // [10,10]
