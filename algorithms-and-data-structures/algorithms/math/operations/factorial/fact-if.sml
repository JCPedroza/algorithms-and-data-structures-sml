(* Computes x! using if expression. *)
fun fact x =
  if x = 0
  then 1
  else x * fact (x - 1)

val subject = {
  algorithm = fact,
  id = "if then else"
}
