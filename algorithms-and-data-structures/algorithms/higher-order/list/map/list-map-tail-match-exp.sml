fun map f xs =
  let
    fun loop maps ys = case ys of
        [] => maps
      | z :: zs => loop (f z :: maps) zs
  in
    rev (loop [] xs)
  end

fun double x = x * 2
val nums = [0, 1, 2, 3]
val doubleNums = map double nums
