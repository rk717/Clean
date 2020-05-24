module test_3
import StdEnv

//Define a Q type for rational numbers.
//Write a function that receives two fractions
//and calculates their division.
//Simplify the fraction before returning.
//In case the nominator is zero, set the
//denominator to zero as well.


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

instance / Q
where
    (/)n1 n2 = simplify{nom = n1.nom * n2.den, den = n1.den * n2.nom}

fracDivision :: Q Q -> Q
fracDivision a b = a/b

Start = fracDivision {nom=5, den=1} {nom=6, den=5} //{nom=25, den=6}
