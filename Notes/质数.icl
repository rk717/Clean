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
