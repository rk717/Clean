module test
import StdEnv

Homework1 :: Int->Int
Homework1 n
| n==1 =1
| n>1 = (n*n) + Homework1 (n-1)

Start = Homework1 5

