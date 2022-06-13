(* Computes the nth fibonacci number using an if expression. *)
fun fib n =
  if n < 2
  then n
  else fib (n - 1) + fib (n - 2)

val tests =
  fib 0 = 0 andalso
  fib 1 = 1 andalso
  fib 6 = 8 andalso
  fib 30 = 832040
