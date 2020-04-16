module test
import StdEnv

Psquare :: Int -> Bool
Psquare a
| (toReal(a)^0.5) == toReal(toInt(toReal(a)^0.5)) = True
= False 

Start = Psquare 9
