fun labelTest label id =
  label ^ " '" ^ id ^ "'"

fun runTest test subjects label =
  let
    fun loop results [] = results
      | loop results ({function = x, id = id} :: xs) =
        loop ({result = test x, id = labelTest label id} :: results) xs
  in
    loop [] subjects
  end
