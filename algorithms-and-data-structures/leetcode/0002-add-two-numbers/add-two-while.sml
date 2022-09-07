(**
 * Compute sum of two numbers, where the numbers' digits are represented as
 * non-negative integers in a list.
 * Uses an imperative approach with mutation and a while loop.
 * Complexity: time O(n), space O(n).
 * Type: int list -> int list -> int list.
 *)
fun addListnums listnumA listnumB =
  let
    val numA = ref 0
    val numB = ref 0
    val sum = ref 0
    val carry = ref 0
    val listA = ref listnumA
    val listB = ref listnumB
    val result = ref []
  in
    while ((!listA <> []) orelse (!listB <> []) orelse (!carry <> 0)) do (
      numA := (if null (!listA) then 0 else hd (!listA));
      numB := (if null (!listB) then 0 else hd (!listB));

      sum := !numA + !numB + !carry;
      carry := !sum div 10;
      result := !sum mod 10 :: !result;

      listA := (if null (!listA) then [] else tl (!listA));
      listB := (if null (!listB) then [] else tl (!listB))
    ); rev (!result)
  end

val solution = {
  function = addListnums,
  id = "while loop"
}
