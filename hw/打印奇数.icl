func2 :: [Int] -> [Int]
func2 [] = []
func2 [x] = [x]
func2 [h:t] = [h: (func2 (tl t)) ]

Start = func2 [1..10]
