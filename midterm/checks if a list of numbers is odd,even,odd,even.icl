/**3
  * Write a function that checks if a list of numbers is odd,even,odd,even...
  * For exmaple: SeqCheck [1,2,3,4,6] = False because 4 is even, but 6 is not odd.
  */

SeqCheck :: [Int] -> Bool
SeqCheck [] = False
SeqCheck seq = and[isEven (x+y)\\ x <- seq & y <-[1..]]
