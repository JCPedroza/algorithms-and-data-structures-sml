(* Computes x! using case pattern matching. *)
fun fact x = case x of
    0 => 1
  | x => x * fact (x - 1)

val subject = {
  algorithm = fact,
  id = "tail case"
}
