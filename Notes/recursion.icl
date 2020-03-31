module recusion
import StdEnv

//Starting with Recursion
/*
recursion is repeating something.
recursion has two parts.
----1.waht is the repeated action?
        a. what are we doing over and over again?
        b. How does it repeat?
    2. What is the stop condition?
        a.when do we stop the recursion?
        b.how do we stop the recursion?
        c.what do we do after we stop the recursion?
*/

factorial :: Int -> Int  //factorial 4 = 4*3*2*1
factorial 1 = 1
factorial 0 = 1
factorial n 
| n < 0 = 0
= n*factorial (n-1)
//factorial 4 = 4 * factorial 3 = 4 * 3 * factorial 2.....


//Nested recursion
//we want to square a number repeadly
//(((5)^2)^2)^2

squaringThis :: Int Int -> Int
squaringThis num 0 = num
squaringThis num howMany = (squaringTis num (howMany - 1))^2

Start = squaringThis 2 3  


//recursion with lists
//rewite the funciton repeat n 
//repeat :: Int a -> [a]
//Start = repeat 10 "hello" //["hello",..."hello"]

//slide recursion
//repeated action: putting elements into a list.
//Stop condition: when we've put enough elements into the list.
//Start = [1,2,3,4,5] ++ [6] //[1,2,3,4,5,6]
repeatnSide :: Int Int -> [Int]
repeatnSide 0 _ = []
repeatnSide howMany elem 
| howMany < 0 = []
= [elem] ++ repeatnSide (howMany -1) elem

Start = repeatnSide 10 5
//[5,5,5,5,5,5,5,5,5,5,5]


//Nested recursion
//Start = [5:[5] //[5,5]
//Start = [5:[4:[3:[2:[1]]]]] //[5,4,3,2,1]

repeatnNest :: Int Int -> [Int]
repeatnNest 0 _ = []
repeatnNest howMany elem 
|howMany < 0 = []
= [elem:repeatnNest (howMany -1) elem]]

Start = repeatnNest 10 5
//[5,5,5,5,5,5,5,5,5,5]


!!!//Tail recursion!!!
//Tail recursion is recursion that is linear in time.
//it takes advantage of tail recursion optimization which 
//is done by almost every modern compiler.
//It requires an additional variable, called an accumulator.

//we must complete evaluation at  each step

repeatnTail :: Int Int -> [Int]
repeatNtail howMany elem
|elem < 0 = []
=re[eatnTailAux howMany elem []

repeatnTailAux :: Int Int [Int] -> [Int]
repeatnTailAux 0 _ accum = accum    
repeatnTailAus howMany elem accum = repeatnTailAux (howMany -1 ) elem (accum ++ [elem])
Start = repeatnTail 3 5
/*
f 3 5 = fa 3 5 []
fa 3 5 []
fa 2 5 [5]
fa 1 5 [5,5]
fa 0 5 [5,5,5]
*/

//addUp 2 5 = 2 + 3 + 4 + 5
addUp :: Int Int -> Int
addUp a b 
| a > b = addUp b a 
= addUpAux a b []

addUpAux :: Int Int [Int] -> Int
addUpAux a b accum 
| a > b = sum accum 
= addUpAux (a+1) b (accum ++ [a])
/*
au 2 5
aua 2 5 []
aua 3 5 [2]
aua 4 4 [2,3]
aua 5 5 [2,3,4]
aua 6 5 [2,3,4,5]
*/

/*
Given a list of sublists numbers, keep the sublists that have all prime numbers.
*/ 

//filter :: (a->Bool) [a] -> [a]
//Start = filter isEven [1,2,3,4,5] //[2,4]

//Start = filter condEven [[2,4..20],[23,25],[1..5],[2,4,6]]  //[[2,4,6,,8,10,12,14,16,18,20],[2,4,6]]
condEven :: [Int] -> Bool
condEven ourList = and(map isEven ourList)
//Start = condEven [2,4,6,8]
// map func [a,b,c] -> [func a, func b, func c]



//Start = primeListFilter[[1,2,3], [4,9,25], [1,3,7,12,14], []]
primeListFilter :: [[Int]] -> [[Int]]
primeListFilter ourList = filter condPrime (filter notEmpty ourList)

notEmpty :: [Int] -> Bool
notEmpty someList = not(isEmpty someList)

condPrime :: [Int] -> Bool
condPrime ourList = and(map isPrime ourList)


isPrime :: Int -> Bool
isPrime n = not(or(map dividable [2..(n-1)]))


dividable :: Int Int -> Bool
dividable n check = n rem check == 0




/*
map something (map someotherthing somelist)
map (map something) somelist
*/
add3 n = n + 3
times2 n = n * 2
Start = map add3 (map times2 [1..5])  //[5,7,9,11.13]

map add3 [2,4,6] //[5,7,9]

Start = map(map add3) [[1..5], [5,8,3], [],[0]]  //[[4,5,6,7,8],[8,11,6],[],[3]]

