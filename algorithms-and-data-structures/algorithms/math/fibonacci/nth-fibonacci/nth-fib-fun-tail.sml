(* Computes the nth fibonacci number using function pattern matching and
tail recurssion. *)
fun fib n =
    let
      fun loop now nxt 0 = now
        | loop now nxt n = loop (nxt) (now + nxt) (n - 1)
    in
      loop 0 1 n
    end

val subject = {
  algorithm = fib,
  id = "tail recursion, function pattern matching"
}
