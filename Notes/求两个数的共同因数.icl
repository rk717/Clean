module test
import StdEnv


commond :: Int Int -> [Int]
commond  a b 
= colist  (fdiv a) (fdiv b) 

fdiv :: Int -> [Int]
fdiv num
= filter (\x = num rem x == 0)[1..num]

colist :: [Int] [Int]-> [Int]
colist myli1 myli2 
=[ x \\x <- myli1, y <- myli2 | x == y ]

Start = commond 90 24
