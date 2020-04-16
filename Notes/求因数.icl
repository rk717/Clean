module test
import StdEnv

//Given number, find it's all divisors

Fdiv :: Int -> [Int]
Fdiv num
=filter (\x = num rem x == 0) [1 .. num]

Start = Fdiv 15
