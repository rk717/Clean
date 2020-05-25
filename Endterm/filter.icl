module filter
import StdEnv

// Get the names of people under 18 years old
:: Person = { name :: String, age :: Int }

Tom :: Person
Tom = {name = "Tom", age = 20}

Tim :: Person
Tim = {name = "Tim", age = 15}

Jackson :: Person
Jackson = {name = "Jackson", age = 33}

Bob :: Person
Bob = {name = "Bob", age = 23}



checkage :: Int -> Bool
checkage num
|num >= 18 = False
=True

under18 :: [Person] -> [String]
under18 myli
=[n.name\\n<-myli | checkage n.age]

Start = under18[Tom, Tim, Jackson, Bob]
