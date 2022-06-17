(* Computes x! using function pattern matching. *)
fun fact 0 = 1
  | fact x = x * fact (x - 1)

val subject = {
  algorithm = fact,
  id = "function pattern matching"
}
