module test_5
import StdEnv

//write a function that will check if a tree of Q is a Binary Serach tree
half = { nom=1, den=2 }
third = { nom=1, den=3 }
fourth = { nom=1, den=4 }
fifth = { nom=1, den=5 }
sixth = { nom=1, den=6 }
threehalf = { nom=3, den=2 }
twothird = { nom=2, den=3 }
ninefourth = { nom=9, den=4 }
threefifth = { nom=3, den=5 }

miniTree = Node fifth (Node sixth Leaf Leaf)(Node third (Node fourth Leaf Leaf) Leaf)
smallTree = Node half (Node fourth Leaf Leaf) (Node ninefourth Leaf Leaf)
bigTree = Node half (Node fifth (Node sixth Leaf Leaf)(Node third (Node fourth Leaf Leaf) Leaf))(Node threehalf (Node threefifth Leaf (Node twothird Leaf Leaf))(Node ninefourth Leaf Leaf))
badTree = Node third (Node fourth Leaf Leaf)(Node ninefourth (Node sixth Leaf Leaf) Leaf)

::Tree a = Node a(Tree a)(Tree a) | Leaf

:: Q = {
    nom :: Int,
    den :: Int}

instance < Q
where
    (<)n1 n2 = (n1.nom*n2.den) < (n2.nom*n1.den)

    // x > y = y < x
    // x >= y = not (x < y)
    // x <= y = not (y < x)

checkLeft :: Q (Tree Q) -> Bool //看 Tree 里所有的数有没有小于第一个 Q
checkLeft x Leaf = True
checkLeft x (Node y l r)
| x > y && checkLeft x l && checkLeft x r = True
= False

checkRight :: Q (Tree Q) -> Bool
checkRight x Leaf = True
checkRight x (Node y l r)
| y < x && checkLeft x l && checkLeft x r = True
= False

checkTree :: (Tree Q) -> Bool
checkTree Leaf = True
checkTree (Node x l r)
|checkLeft x l == True && checkRight x r == True && checkTree l && checkTree r =True
=False

Start = checkTree bigTree //True
