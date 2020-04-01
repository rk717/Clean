/**7
 Given a list of lists, for each list, extract the first, middle and last element. */
//Start = Points3 [[1..9], [2..6], [3..11], [1..10]] // [(1,5,9),(2,4,6),(3,7,11),(1,6,10)]

Points3 :: [[Int]] -> [(Int, Int, Int)]
Points3 bigList = [(hd subList, subList!!((length subList)/2), last subList)\\subList<-bigList]
