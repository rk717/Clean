module test
import StdEnv


/*
	Given a list of Tuples of 3 of Integers, keep only the Pythagorean triples.
	A Pythagorean triple consists of three positive integers a, b, and c, such that a^2 + b^2 = c^2.
*/

pyth :: [(Int,Int,Int)]->[(Int,Int,Int)]
pyth myList
=filter(\(a, b, c) = (a^2 + b^2 == c^2)) myList

Start = pyth [(1,2,3),(3,4,5),(6,7,8)]//[(3,4,5)]
//Start = pyth [(6,8,10),(5,12,13),(1,1,1)] //[(6,8,10),(5,12,13)]
//Start = pyth [(1,1,1),(2,3,4),(9,10,20)] //[]


------------------------
module test
import StdEnv


/*
	Given a list of Tuples of 3 of Integers, keep only the Pythagorean triples.
	A Pythagorean triple consists of three positive integers a, b, and c, such that a^2 + b^2 = c^2.
*/

pyth :: [(Int,Int,Int)]->[(Int,Int,Int)]
pyth myList
= [ (a,b,c)\\(a,b,c) <- myList | (a^2 + b^2) == (c^2) ]
