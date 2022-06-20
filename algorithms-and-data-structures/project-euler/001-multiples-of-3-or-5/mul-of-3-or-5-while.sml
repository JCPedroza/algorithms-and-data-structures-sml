(* Computes the sum of multiples of 3 or 5 below the given limit using
a while loop (not idiomatic). *)
fun mulOf3Or5 limit =
  let
    val sum = ref 0
    val idx = ref (limit - 1)
  in
    while !idx > 0
    do (
      if !idx mod 3 = 0 orelse !idx mod 5 = 0
      then sum := !sum + !idx
      else sum := !sum;
      idx := !idx - 1
    );
    !sum
  end

val subject = {
  algorithm = mulOf3Or5,
  id = "imperative while loop"
}
