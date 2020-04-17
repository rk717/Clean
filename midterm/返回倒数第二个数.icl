// 1. Write a function that will return the second to last digit in a number. Return 0 if there is no second digit.

f1 :: Int -> Int
f1 x = abs((x/10) rem 10)

//Start = f1 1234 //3

//Start = f1 5 //0

//Start = f1 -5564 //6
