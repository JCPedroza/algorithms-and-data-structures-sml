(**
 * Compute sum of two numbers, where the numbers' digits are represented as
 * non-negative integers in a list.
 * Uses a functional approach with tail call recursion and a case expression.
 * Complexity: time O(n), space O(n).
 * Type: int list -> int list -> int list.
 *)
fun addListnums listnumA listnumB =
  let
    fun loop result carry listA listB = case (carry, listA, listB) of
        (0, [], []) => rev result

      | (cry, n :: ns, m :: ms) =>
          loop (((n + m + cry) mod 10) :: result) ((n + m + cry) div 10) ns ms

      | (cry, [], m :: ms) =>
          loop (((m + cry) mod 10) :: result) ((m + cry) div 10) [] ms

      | (cry, n :: ns, []) =>
          loop (((n + cry) mod 10) :: result) ((n + cry) div 10) ns []

      | (cry, [], []) =>
          loop (cry :: result) 0 [] []
  in
    loop [] 0 listnumA listnumB
  end

val solution = {
  function = addListnums,
  id = "tail call recursion and pattern matching"
}
