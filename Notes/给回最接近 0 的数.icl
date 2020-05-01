module hw07
import StdEnv

fun :: [Int] -> Int
fun [a] = a
fun [a:rest]
|(checkp(a) - 0) > (checkp(b) - 0) = b 
=a 
    where 
    b = fun rest

checkp :: Int -> Int
checkp n 
| n > 0 = n
= -n 

Start fun[4, -7, 8, -3, 6]
