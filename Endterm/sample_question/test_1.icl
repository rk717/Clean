module test_1
import StdEnv

//Define a tree type and use the followings for testing your solution
tree1 = Node 10 (Node 7 (Node 3 Leaf Leaf) (Node 15 Leaf Leaf)) (Node 5 Leaf (Node 10 Leaf Leaf))
tree2 = Node 9 (Node 1 (Node 0 (Node 7 Leaf Leaf) Leaf) (Node 15 Leaf Leaf)) (Node 4 (Node 4561 Leaf Leaf) (Node 8 (Node 1663 Leaf Leaf) Leaf))
unitTree = Node 1337 Leaf Leaf
noTree = Leaf

:: Tree a = Node a (Tree a) (Tree a) | Leaf

//Write a function that takes a tree as a parameter
//and returns a list of nodes which have at least one prime child.
//An empty tree will return [].

isPrime :: Int -> Bool
isPrime n
| n <= 1= False
= isEmpty(filter(\x -> n rem x == 0)[2..n-1])

/*
hasPrimeRoot :: (Tree Int) -> Bool
hasPrimeRoot Leaf = False
hasPrimeRoot (Node x l r ) = isPrime x

hasPrimeChild :: (Tree Int) -> Bool
hasPrimeChild Leaf = False
hasPrimeChild (Node _ l r) = hasPrimeRoot l || hasPrimeRoot r
*/

hasPrimeChild :: (Tree Int) -> Bool
hasPrimeChild (Node x (Node lx ll lr) _ )  = isPrime lx
hasPrimeChild (Node x _ (Node rx rl rr)) = isPrime rx
hasPrimeChild (Node _ (Node l _ _) (Node r _ _)) = isPrime l || isPrime r
hasPrimeChild _ = False

nodePrime :: (Tree Int) -> [Int]
nodePrime (Node x l r)
| hasPrimeChild (Node x l r) == True = [x] ++ nodePrime l ++ nodePrime r
| hasPrimeChild (Node x l r) == False = [] ++ nodePrime l ++ nodePrime r
nodePrime _ = []

Start = nodePrime tree2 //[0,4,8]

// 比如自己用 pattern matching 写 or fuction：
// or :: Bool Bool -> Bool
// or True _ = True
// or _ True = True
// or False False = False
