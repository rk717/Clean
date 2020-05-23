module test_2
import StdEnv

//Given a tuple of arrays, representing sets of integers,
//return a list containing the result of their symmetric-difference.
//The symmetric-difference between two sets is equivalent
//to the difference between their union and their intersection.

check :: ({Int}, {Int}) -> [Int]
check (arr1, arr2)
=[x \\ x <- l1 | not(isMember x l2)] ++ [x \\ x <- l2 | not(isMember x l1)]
where
    l1 = [x \\ x <-: arr1]
    l2 = [x \\ x <-: arr2]

Start = symmetricDiff ({1,2,3,4},{3,4,5,6}) //[1,2,5,6]
