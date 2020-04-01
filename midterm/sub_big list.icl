/**10 
Insert sum of elements as last element in every sublist of a list. 
*/

addSum :: [[Int]] -> [[Int]]
addSum bigList = [subList ++ [sum subList]\\subList<-bigList]
