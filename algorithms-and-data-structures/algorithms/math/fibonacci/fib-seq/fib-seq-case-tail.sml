(* Create a list of the given size containing the fibonacci sequence. *)
fun fibSeq size =
  let
    fun loop fibs fibA fibB size = case size of
        0 => fibs
      | x => loop (fibA :: fibs) (fibB) (fibA + fibB) (size - 1)
  in
    List.rev (loop [] 0 1 size)
  end

val subject = {
  algorithm = fibSeq,
  id = "tail recursion case match"
}
