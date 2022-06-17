(* Computes the sum of numbers divisible by n below the given limit. *)
fun sumDivBy n limit =
  let val p = (limit - 1) div n
  in n * (p * (p + 1)) div 2 end

val sumDivBy3 = sumDivBy 3
val sumDivBy5 = sumDivBy 5
val sumDivBy15 = sumDivBy 15

(* Computes the sum of mpultiples of 3 or 5 below the given limit using an
analytic approach. *)
fun mulOf3Or5 limit =
  sumDivBy3 limit + sumDivBy5 limit - sumDivBy15 limit

val subject = {
  algorithm = mulOf3Or5,
  id = "analytic, partial application"
}
