isPrime :: Int -> Bool
isPrime n
 | n <= 1 = False
 = check n 2
 
check :: Int Int -> Bool
check n i 
 | i < n && n rem i == 0 = False 
 | i < n && n rem i <> 0 = check n (i+1)
 | i >= n = True

Start = isPrime 5 // True

------------------------------------------
isEmpty (filter (\x -> num rem x == 0) [1..num-1])

---------------------------------------
isPrime :: Int -> Bool
isPrime n
| n <= 1= False
= isEmpty[x\\x<-[2..(n-1)] | n rem x == 0]

----------------------------------------------------
isPrime :: Int -> Bool
isPrime n
| n <= 1= False
= isEmpty[filter(\x -> num rem x == 0)[2..num-1]]
