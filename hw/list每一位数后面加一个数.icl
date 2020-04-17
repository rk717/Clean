module test
import StdEnv

func1 :: Int [Int] -> [Int]
func1 x [] = []
func1 x [h:t] = [h:[x: (func1 x t)]]

Start = func1 5 [1..10]
