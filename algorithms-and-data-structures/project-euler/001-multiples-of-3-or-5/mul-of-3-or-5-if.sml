(* Computes the sum of multiples of 3 or 5 below the given limit using
if expression. *)
fun mulOf3Or5 limit =
  let
    val limit = limit - 1 (* Limit is exclusive. *)
    fun loop n = case n of
          0 => 0
        | n =>
          if n mod 3 = 0 orelse n mod 5 = 0
          then n + loop (n - 1)
          else loop (n - 1)
  in
    loop limit
  end

val subject = {
  algorithm = mulOf3Or5,
  id = "naive, trial division, if expression"
}
