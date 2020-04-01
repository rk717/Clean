/**2
  * Write a function that takes a list of integers and returns a list of
  * result integers based on how many integers were in the parameter list.
  * For 1 integer 'a', it will return that integer modulus 2. (a rem 2)
  * For 2 integers 'a','b' , it will return a list of all integers from the first to the second. [a..b]
  * For 3 integers 'a','b','c' , it will return (a*(b^c))
  * For 4 integers 'a','b','c','d', it will return a list of the sum of 'a' and 'b' and the sum of 'c' and 'd'.
  */

  Listing ::[Int] -> [Int]
  Listing [] = []
  Listing[a] = [a rem 2]
  Listing[a,b] = [a..b]
  Listing[a,b,c] = [a+b,c+d]
  Listing[a,b,c,d] = [a+b,c+d]
