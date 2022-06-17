(* Computes x! using case pattern matching and tail recursion. *)
fun fact x =
  let
    fun loop prod n = case n of
        0 => prod
      | n => loop (prod * n) (n - 1)
  in
    loop 1 x
  end

val subject = {
  algorithm = fact,
  id = "tail recursion, case of expression"
}
