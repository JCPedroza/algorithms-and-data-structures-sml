signature ASSERT = sig
  val int : string -> int -> int -> unit
  val str : string -> string -> string -> unit
  val bool : string -> bool -> bool -> unit
  val intList : string -> int list -> int list -> unit
end

structure Assert :> ASSERT = struct
  structure Utils = struct
    fun rawIntListToStr intList =
      String.concatWith ", " (map Int.toString intList)

    fun intListToStr intList =
      "[" ^ rawIntListToStr intList ^ "]"

    fun strToStr str = "'" ^ str ^ "'"
  end

  fun printRaise msg =
    (print (msg ^ "\n"); raise Fail "Equals Error")

  fun eqErrMsg arg act exp =
    "\nEquals Error:" ^
    "\nExpected: " ^ "f(" ^ arg ^ ") = " ^ exp ^
    "\nActual: " ^ act

  fun makeTypeMsg toString = fn arg => fn act => fn exp =>
    eqErrMsg arg (toString act) (toString exp)

  val boolMsg = makeTypeMsg Bool.toString
  val intMsg = makeTypeMsg Int.toString
  val intListMsg = makeTypeMsg Utils.intListToStr
  val strMsg = makeTypeMsg Utils.strToStr

  fun makeAssert typeMsg = fn arg => fn act => fn exp =>
    if act = exp
    then ()
    else printRaise (typeMsg arg act exp)

  (* All asserts are string -> 'a -> 'a -> unit *)
  val bool =  makeAssert boolMsg
  val int = makeAssert intMsg
  val intList = makeAssert intListMsg
  val str = makeAssert strMsg
end
