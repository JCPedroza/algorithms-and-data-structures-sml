(* Computes the nth fibonacci number using an if expression. *)
fun fib n =
  if n < 2
  then n
  else fib (n - 1) + fib (n - 2)

val subject = {
  algorithm = fib,
  id = "if expression"
}
