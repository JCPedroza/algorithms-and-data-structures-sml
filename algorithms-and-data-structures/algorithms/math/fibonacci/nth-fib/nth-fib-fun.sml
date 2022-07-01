(* Computes the nth fibonacci number using function pattern matching. *)
fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib (n - 1) + fib (n - 2)

val subject = {
  algorithm = fib,
  id = "function pattern matching"
}
