module 1_tree
import StdEnv

//Tree 和 Algebraic types

:: Month = Jan | Feb | Mar | Apr | May

func :: Month -> Int
func x = 1

Start = func Jan //1

/////////////////////
:: Date = {
    day :: Int,
    month :: Int,
    year :: Int
}
/////////////////////////////////////
:: Status = On | Off

checkStatus :: States -> String
checkStatus On = "This is On"
checkStatus Off = "This is Off"

p1 = On
p2 = Off
p3 = On

Start = checkStatus p1  //"This is On"
Start = checkStatus p2  //"This is Off"

///////////////////////////////////
//树

::Tree a = Node a (Tree a) (Tree a) | Leaf
//Tree = Node Tree Tree | Leaf
//Tree = Node [Tree] | Leaf


/*
   8
  / \
 6  12
*/
smallTree = Node 8 (Node 6 Leaf Leaf) (Node 12 Leaf Leaf)

extractNode :: (Tree a) -> a  //::(Tree Int) -> Int
extractNode (Node x leftSubtree rightSubtree) = x

extractNode Leaf = abort "Leaf encountered\n"

Start = smallTree //(Node 8 (Node 6 Leaf Leaf) (Node 12 Leaf Leaf))

Start = extractNode smallTree //8

//////////////////////////////////////////////
treeToList :: (Tree a) -> [a]
treeToList Leaf = []
treeToList (Node x l r) = (treeToList l) ++ [x] ++ (treeToList r)

//:: Tree a = Node a (Tree a) (Tree a) | Leaf
Start = treeToList smallTree //[6,8,12]


///////////////////////////////
//add a new node to a BST
addNode :: a (Tree a) -> (Tree a) | Ord, Eq a
addNode n Leaf = (Node n Leaf Leaf)
addNode n (Node x l r)
| n == x = (Node x l r)
| n < x = (Ndde x (addNode n l) r)
| n > x = (Node x l (addNode n r))

/////////////////////////////////////
//如何写一个树
getNode :: (Tree a) -> a
getNode (Node x l r) = x
//Start = getNode (Node 1 Leaf Leaf)  // getNode (Node 1 (Node 0 Leaf Leaf (Node 5 Leaf Leaf)))

///////////////////////
getLeft :: (Tree a) -> (Tree a)
getLeft (Node x l r) = l

/////////////////
gerRight :: (Tree a) -> (Tree a)
gerRight (Node x l r) = r

////////////////
SumTree :: (Tree Int) -> Int
SumTree Leaf = 0
SumTree (Node x l r) = x + SumTree l + SumTree r

//////////////////
isLeaf :: (Tree a) -> Bool
isLeaf Leaf = True
isLeaf Leaf = False
//查取数的最小值
getMin :: (Tree a) -> a
getMin (Node x l r)
| isLeaf l = getNode l
=getMin l

Start = getMin (Node 1(Node 0 (Node -1 Leaf Leaf)Leaf)(Node 5 Leaf Leaf)) // -1

////////////
//查取最大值
getMax :: (Tree a) -> a
getMax t = getMin(reverseTree(t))

//////////
//reverse tree
reverseTree :: (Tree a) -> (Tree a)
reverseTree Leaf = Leaf
reverseTree (Node x l r) = (Node x (reverseTree r)(reverseTree l))
