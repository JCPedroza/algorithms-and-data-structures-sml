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

val tests =
  fact 0 = 1 andalso
  fact 1 = 1 andalso
  fact 2 = 2 andalso
  fact 3 = 6 andalso
  fact 4 = 24
