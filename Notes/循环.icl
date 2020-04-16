用 loop 的可以一行一行的翻译到 Clean：

def gcd(a, b):
    while b != 0:  # 1
        t = b      # 2
        b = a % b  # 3
        a = t      # 4
    return a       # 5

gcd a b = f1 a b 0
  // we'll initialise t to 0, its initial value
  // was unspecified in the imperative program
f1 a b t
  | if b /= 0 = f2 a b t  // test the loop condition, if it holds, we go to the body of the loop
  = f5 a b t  // otherwise, we skip it
f2 a b t = f3 a b b  // set t to b
f3 a b t = f4 a (a mod b) t  // set b to mod a b
f4 a b t = f1 t b t  // set a to t and go back to the top of the while loop
f5 a b t = a
