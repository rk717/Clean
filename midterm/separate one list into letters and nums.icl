/**6
Given a list of characters, split it into a tuple in which the first part only contains digits ('0'..'9'),
the second part contains the rest. */
//Start = TwoLists  ['1', 'a', '2', 'b', '3'] // (['1','2','3'],['a','b'])

TwoLists :: [Char] -> ([Char], [Char])
TwoLists myList = (filter (\char = char >= '0' && char <= '9')myList, filter(\char = char >= 'a' && cahr <= 'z')myList)
