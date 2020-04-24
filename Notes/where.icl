module hw6_3
import StdEnv


/*
Decide if a number is triangular number and write the count of levels of triangle. 
Triangular number is a number that can form a triangle.
The output should be in a tuple.
Note : if it is false the count should be -1. 
examples:
1       3         6          10          15
                                          *
                               *          * *
                  *            * *        * * *
        *         * *          * * *      * * * *
*       * *       * * *        * * * *    * * * * *
Note : 0 is not a triangular number
*/

// Start = isTringularNum -1 // (False,-1)
// Start = isTringularNum 0 // (False,-1)
// Start = isTringularNum 1 // (True,1)
// Start = isTringularNum 5 // (False,-1)
// Start = isTringularNum 10 // (True,4)
// Start = isTringularNum 666 // (True,36)


isTringularNum :: Int -> (Bool, Int)
isTringularNum num
|b == True = (True, cnt)
=(False, -1)
    where
    (b,cnt) = tes 0 1 sum 



tes ::  Int Int Int -> (Bool, Int)
tes num cnt sum
| num < sum = tes (num+cnt) (cnt+1) sum 
| num > sum = (False, cnt)
= (True, cnt)

