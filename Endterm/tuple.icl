module tuple
import StdEnv

// Get all the unique names that start with the given character
:: People :== [(Int, String)]

snd :: (a,b) -> b
snd (x,y) = y

checkName :: Char String -> Bool
checkName letter name
|name.[0] == letter = True
=False

startsWith :: Char People -> [String]
startsWith letter myPe
=[snd x \\ x <- myPe | checkName letter (snd x) ]

Start = startsWith 'A' [(1, "Alice"), (2, "Anne"), (3, "Anne"), (4, "Bob")] // ["Alice", "Anne"]
