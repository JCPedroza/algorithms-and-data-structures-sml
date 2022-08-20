fun map f xs =
  let
    fun loop maps [] = maps
      | loop maps (y :: ys) = loop (f y :: maps) ys
  in
    rev (loop [] xs)
  end

fun double x = x * 2
val nums = [0, 1, 2, 3]
val doubleNums = map double nums
