(* Computes x! using case pattern matching. *)
fun fact x = case x of
    0 => 1
  | x => x * fact (x - 1)

val tests =
  fact 0 = 1 andalso
  fact 1 = 1 andalso
  fact 2 = 2 andalso
  fact 3 = 6 andalso
  fact 4 = 24
