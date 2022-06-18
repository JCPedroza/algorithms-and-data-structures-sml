(* Computes the sum of multiples of 3 or 5 below the given limit using
trial division. *)
fun mulOf3Or5 limit =
  let
    fun loop sum 0 = sum
      | loop sum num =
        if num mod 3 = 0 orelse num mod 5 = 0
        then loop (sum + num) (num - 1)
        else loop (sum) (num - 1)
  in
    loop 0 (limit - 1)
  end

val subject = {
  algorithm = mulOf3Or5,
  id = "naive, trial division, tail recursion, function pattern matching"
}
