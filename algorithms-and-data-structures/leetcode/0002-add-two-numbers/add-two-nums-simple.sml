(** Compute sum of two numbers, where the numbers' digits are represented as
non-negative integers in a list.
Uses a functional approach with simple recursion.
Complexity: time O(n), space O(n). *)
fun addListnums listnuma listnumb =
  let
    fun loop carry lista listb =
      if null lista andalso null listb andalso carry = 0
      then []
      else
        let
          val vala = if null lista then 0 else hd lista
          val valb = if null listb then 0 else hd listb
          val tla = if null lista then [] else tl lista
          val tlb = if null listb then [] else tl listb
          val sum = vala + valb + carry
        in
          sum mod 10 :: loop (sum div 10) tla tlb
        end
  in
    loop 0 listnuma listnumb
  end

val solution = {
  function = addListnums,
  id = "simple recursion"
}
