signature ASSERT = sig
  val int : string -> int -> int -> unit
  val str : string -> string -> string -> unit
  val bool : string -> bool -> bool -> unit
  val intList : string -> int list -> int list -> unit
  val intPair : string -> int * int -> int * int -> unit
end

structure Assert :> ASSERT = struct
  structure Utils = struct
    fun strToStr str = "'" ^ str ^ "'"

    fun rawIntListToStr intList =
      String.concatWith ", " (map Int.toString intList)

    fun intListToStr intList =
      "[" ^ rawIntListToStr intList ^ "]"

    fun intPairToStr intPair =
      "(" ^ Int.toString (#1 intPair) ^ ", " ^ Int.toString (#2 intPair) ^ ")"
  end

  fun eqErrMsg arg act exp =
    "\n    Equals Error:" ^
    "\n    Expected: " ^ "f(" ^ arg ^ ") = " ^ exp ^
    "\n    Actual: " ^ act ^ "\n"

  fun makeTypeMsg toString = fn arg => fn act => fn exp =>
    eqErrMsg arg (toString act) (toString exp)

  fun makeAssert typeMsg = fn arg => fn act => fn exp =>
    if act = exp
    then ()
    else raise Fail (typeMsg arg act exp)

  (* All asserts are string -> 'a -> 'a -> unit *)
  val bool =  makeAssert (makeTypeMsg Bool.toString)
  val int = makeAssert (makeTypeMsg Int.toString)
  val str = makeAssert (makeTypeMsg Utils.strToStr)
  val intList = makeAssert (makeTypeMsg Utils.intListToStr)
  val intPair = makeAssert (makeTypeMsg Utils.intPairToStr)
end
