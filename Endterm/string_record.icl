module string_record
import StdEnv

:: Person = { name :: String, age :: Int }
// parse a string into a record
// format is firstName lastName age

//takeWhile :: (a -> Bool) [a] -> [a]


check :: Char -> Bool
check a
|a == " " = False
=True

dcheck :: Char -> Bool
dcheck a
|a == " "= False
=True

takeName :: String -> String
takeName info
=takeWhile check [a \\ a <-: info]  //Alice

takeLastN :: Stirng -> String
takeLastN info
=takeWhile check (tl (dropWhile dcheck [a \\ a <-: info]))

takeNum :: String -> Int
takeNum info
=toInt(takeWhile check (tl (dropWhile check (tl (dropWhile check [a \\ a <-: info])))))

parse :: String -> Person
parse info
={name = takeName info, age = }

Start = parse "Alice Smith 20" // (Person "Alice Smith" 20)
