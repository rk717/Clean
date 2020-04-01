/**4
  * Write a function that checks if each elements in the list appear even times.
  
  * For example, checkEven [1,1,2,2,2,2,3,5,3,5] = True
  */

checkEven :: [Int] -> Bool
checkEven nums = and[isEven(length(filter((==)x)nums))\\x<-nums]
