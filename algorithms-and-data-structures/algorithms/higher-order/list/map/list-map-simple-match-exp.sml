fun map f xs = case xs of
    [] => []
  | y :: ys => f y :: map f ys

fun double x = x * 2
val nums = [0, 1, 2, 3]
val doubleNums = map double nums
