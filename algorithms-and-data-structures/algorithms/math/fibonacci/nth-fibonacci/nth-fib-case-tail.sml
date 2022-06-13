(* Computes the nth fibonacci number using a case expression and
tail recurssion. *)
fun fib n =
  let fun loop now nxt n = case n of
      0 => now
    | n => loop nxt (now + nxt) (n - 1)
  in
    loop 0 1 n
  end

val tests =
  fib 0 = 0 andalso
  fib 1 = 1 andalso
  fib 6 = 8 andalso
  fib 30 = 832040
