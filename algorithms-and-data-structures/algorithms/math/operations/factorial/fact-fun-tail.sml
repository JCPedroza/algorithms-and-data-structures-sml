(* Computes x! using function pattern matching and tail recursion. *)
fun fact x =
  let
    fun loop prod 0 = prod
      | loop prod x = loop (x * prod) (x - 1)
  in
    loop 1 x
  end

val tests =
  fact 0 = 1 andalso
  fact 1 = 1 andalso
  fact 2 = 2 andalso
  fact 3 = 6 andalso
  fact 4 = 24
