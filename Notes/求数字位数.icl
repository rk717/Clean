module test
import StdEnv

cnt :: Int Int -> Int
cnt m n
|m / 10 <> 0 = cnt (m/10) (n+1)
= n + 1


askdigit :: Int -> Int

askdigit num
| num == 0 = 1
= cnt num 0

Start = askdigit 1234

//4
