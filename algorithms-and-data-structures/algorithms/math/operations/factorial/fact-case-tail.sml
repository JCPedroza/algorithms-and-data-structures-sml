(* Computes x! using case pattern matching and tail recursion. *)
fun fact x =
  let
    fun loop prod n = case n of
        0 => prod
      | n => loop (prod * n) (n - 1)
  in
    loop 1 x
  end

val tests =
  fact 0 = 1 andalso
  fact 1 = 1 andalso
  fact 2 = 2 andalso
  fact 3 = 6 andalso
  fact 4 = 24
