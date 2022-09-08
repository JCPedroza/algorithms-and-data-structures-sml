(**
 * Finds two numbers in [nums] that add up to [target], and returns their
 * indexes as a tuple. Returns (~1, ~1) if no solution is found.
 * Uses a functional approach with tail call recursion.
 * Complexity: time AO(n²) BO(1) WO(n²), space AO(1) TO(n).
 * int -> int list -> int * int
 *)
fun twoSum target nums =
  if null nums then (~1, ~1) else
    let
      fun loop idxHead idxTail head tail nxtTail = case (tail, nxtTail) of
          ([], []) => (~1, ~1) (* No solution found *)

        | ([], nt :: nts) => (* Reached end of list, start next iteration *)
          loop (idxHead + 1) (idxHead + 2) nt nts nts

        | (t :: ts, _) =>
            if head + t = target
            then (idxHead, idxTail)
            else loop idxHead (idxTail + 1) head ts nxtTail
    in
      loop 0 1 (hd nums) (tl nums) (tl nums)
    end

val solution = {
  function = twoSum,
  id = "tail call recursion"
}
