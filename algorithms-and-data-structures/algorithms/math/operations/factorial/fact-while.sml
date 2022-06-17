(* Computes x! using while loop (not idiomatic). *)
fun fact x =
  let
    val n = ref x
    val prod = ref 1
  in
    while !n <> 0
    do (prod := !prod * !n; n := !n - 1);
    !prod
  end

val subject = {
  algorithm = fact,
  id = "while loop"
}
