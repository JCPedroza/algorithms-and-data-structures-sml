(* Computes the nth fibonacci number using a case expression. *)
fun fib n = case n of
    0 => 0
  | 1 => 1
  | n => fib (n - 1) + fib (n - 2)

val tests =
  fib 0 = 0 andalso
  fib 1 = 1 andalso
  fib 6 = 8 andalso
  fib 30 = 832040
