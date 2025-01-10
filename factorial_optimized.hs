To fix this, we need to rewrite the factorial function to use an accumulator, making the recursive call tail-recursive:

```haskell
factorial :: Integer -> Integer
factorial n = factorial' n 1

factorial' :: Integer -> Integer -> Integer
factorial' 0 acc = acc
factorial' n acc = factorial' (n - 1) (n * acc)
```

Now, the recursive call to `factorial'` is in tail position. The compiler can optimize this into a loop, preventing the stack from overflowing.  This revised version handles much larger inputs without issues.