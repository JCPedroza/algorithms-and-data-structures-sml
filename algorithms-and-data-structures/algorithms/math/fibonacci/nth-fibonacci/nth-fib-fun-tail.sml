(* Computes the nth fibonacci number using function pattern matching and
tail recurssion. *)
fun fib n =
    let
      fun loop now nxt 0 = now
        | loop now nxt n = loop (nxt) (now + nxt) (n - 1)
    in
      loop 0 1 n
    end

val tests =
  fib 0 = 0 andalso
  fib 1 = 1 andalso
  fib 6 = 8 andalso
  fib 30 = 832040
