module test_4
import StdEnv

//write a function that will return the sum of a tree's nodes
//return the sum as a simplified Q.

::Tree a = Node a(Tree a)(Tree a) | Leaf

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



:: Q = {
    nom :: Int,
    den :: Int}

simplify :: Q -> Q
simplify {nom = a, den = b}
| b == 0 = abort "Division cant be zero"
| b < 0 = simplify {nom = -1 * a, den = -1 * b}
={nom = a/m, den = b/m}
where
    m = gcd a b

instance + Q
where
    (+)n1 n2 = simplify{nom = (n1.nom)*(n2.den) + (n2.nom)*(n1.den), den = com}
    where
        com = (n1.den)*(n2.den)

sumTree :: (Tree Q) -> Q
sumTree Leaf = {nom = 0, den = 1}
sumTree (Node x l r) = x + sumTree l + sumTree r

Start = sumTree miniTree //{nom=19, den=20}
