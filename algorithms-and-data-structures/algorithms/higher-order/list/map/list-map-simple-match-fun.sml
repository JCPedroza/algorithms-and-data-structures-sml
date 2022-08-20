fun map f [] = []
  | map f (x :: xs) = f x :: map f xs

fun double x = x * 2
val nums = [0, 1, 2, 3]
val doubleNums = map double nums
