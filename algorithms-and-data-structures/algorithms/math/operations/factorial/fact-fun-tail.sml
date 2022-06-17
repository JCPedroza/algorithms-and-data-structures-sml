(* Computes x! using function pattern matching and tail recursion. *)
fun fact x =
  let
    fun loop prod 0 = prod
      | loop prod x = loop (x * prod) (x - 1)
  in
    loop 1 x
  end

val subject = {
  algorithm = fact,
  id = "tail recursion, function pattern matching"
}
