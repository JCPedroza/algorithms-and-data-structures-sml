(* Computes the sum of multiples of 3 or 5 below the given limit using
tabulate, filter, and fold left. *)
fun mulOf3Or5 limit =
  let
    fun numFilter num =
      num mod 3 = 0 orelse
      num mod 5 = 0

    val nums = List.tabulate (limit, fn x => x)
    val validNums = List.filter numFilter nums
  in
    List.foldl op+ 0 validNums
  end

val subject = {
  algorithm = mulOf3Or5,
  id = "list tabulate filter fold"
}
