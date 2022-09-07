(**
 * Compute sum of two numbers, where the numbers' digits are represented as
 * non-negative integers in a list.
 * Uses a functional approach with simple recursion.
 * Complexity: time O(n), space O(n).
 * Type: int list -> int list -> int list.
 *)
fun addListnums listnumA listnumB =
  let
    fun loop carry listA listB =
      if null listA andalso null listB andalso carry = 0
      then []
      else
        let
          val numA = if null listA then 0 else hd listA
          val numB = if null listB then 0 else hd listB
          val nxtA = if null listA then [] else tl listA
          val nxtB = if null listB then [] else tl listB
          val sum = numA + numB + carry
        in
          sum mod 10 :: loop (sum div 10) nxtA nxtB
        end
  in
    loop 0 listnumA listnumB
  end

val solution = {
  function = addListnums,
  id = "simple recursion"
}
