(* Computes the nth fibonacci number using a case expression. *)
fun fib n = case n of
    0 => 0
  | 1 => 1
  | n => fib (n - 1) + fib (n - 2)

val subject = {
  algorithm = fib,
  id = "case of expression"
}
