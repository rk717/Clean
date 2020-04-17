module test
import StdEnv

dInt :: Int -> [Int]
dInt num
| (num / 10 <> 0) = [(num rem 10) : (dInt (num/10))]
= [num]

dInt 234
234 / 10 = 23 != 0, [4: dInt(23)]

dInt 123
= [3 : dInt 12]
= [3 : [2 : dInt 1]]
= [3 : [2 : [1]]] = [3, 2, 1]

// nreminder :: Int -> Int
// nreminder num
// | num rem 10 <> 0 = nreminder(num/10) 

// numbersFrom :: Int -> [Int]
// numbersFrom n = [n : numbersFrom (n + 1)]
