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
          val vala = if null listA then 0 else hd listA
          val valb = if null listB then 0 else hd listB
          val tla = if null listA then [] else tl listA
          val tlb = if null listB then [] else tl listB
          val sum = vala + valb + carry
        in
          sum mod 10 :: loop (sum div 10) tla tlb
        end
  in
    loop 0 listnumA listnumB
  end

val solution = {
  function = addListnums,
  id = "simple recursion"
}
