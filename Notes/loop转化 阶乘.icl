所有 loop 能写的都能翻译成 recursion 写
int factorial(int n) {
    int result = 1;
    for (int i = 1; i <= n; ++i)
        result *= i;
    return result;
}

factorial :: Int -> Int
factorial n = factorial1 n 1 1

factorial1 n result i
  | i <= n = factorial1 n (result * i) (i + 1)
           = result
