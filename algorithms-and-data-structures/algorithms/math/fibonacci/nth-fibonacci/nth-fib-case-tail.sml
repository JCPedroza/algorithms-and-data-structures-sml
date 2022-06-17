(* Computes the nth fibonacci number using a case expression and
tail recurssion. *)
fun fib n =
  let fun loop now nxt n = case n of
      0 => now
    | n => loop nxt (now + nxt) (n - 1)
  in
    loop 0 1 n
  end

val subject = {
  algorithm = fib,
  id = "tail recursion, case of expression"
}
