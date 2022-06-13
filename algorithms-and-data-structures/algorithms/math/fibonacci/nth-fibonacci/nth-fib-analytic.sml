(* Computes the nth fibonacci number using an analytic approach. *)
fun fib n =
  let
    val sqrt5 = Math.sqrt(5.0)
    val p = (sqrt5 + 1.0) / 2.0
    val q = 1.0 / p
    val m = Real.fromInt n
    val pToTheM = Math.pow (p, m)
    val qToTheM = Math.pow (q, m)
  in
    Real.trunc((pToTheM + qToTheM) / sqrt5)
  end

val tests =
  fib 0 = 0 andalso
  fib 1 = 1 andalso
  fib 6 = 8 andalso
  fib 30 = 832040
