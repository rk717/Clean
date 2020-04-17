module hw05_1
import StdEnv

// find the sum of all odd squares that are smaller than 10,000
f1 :: Int
f1 = sum(map(\x=x^2)[1,3..100])

Start = f1 // 166650
