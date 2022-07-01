(* Computes the nth fibonacci number using array memoization and
simple recursion. *)
fun fib n =
  let
    val memo = Array.array(n + 1, NONE)
    fun loop x = case Array.sub(memo, x) of
        SOME num => num
      | NONE =>
        let val num =
          if x < 2
          then x
          else loop (x - 1) + loop (x - 2)
        in
          Array.update(memo, x, SOME num);
          num
        end
  in
    loop n
  end

val subject = {
  algorithm = fib,
  id = "array memoization and simple recursion"
}
