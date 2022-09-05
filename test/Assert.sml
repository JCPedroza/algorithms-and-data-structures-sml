signature ASSERT = sig
  val int : string -> int -> int -> unit
  val str : string -> string -> string -> unit
  val bool : string -> bool -> bool -> unit
  val intList : string -> int list -> int list -> unit
end

structure Assert = struct
  structure Utils = struct
    fun intListToStr intList =
      String.concatWith ", " (map Int.toString intList)
  end

  fun printRaise msg =
    (print (msg ^ "\n"); raise Fail "Equals Error")

  fun errMsg arg act exp =
    "\nAssertion Error:" ^
    "\nExpected: " ^ "f(" ^ arg ^ ") = " ^ exp ^
    "\nActual: " ^ act

  val strMsg = errMsg

  fun intMsg arg act exp =
    errMsg arg (Int.toString act) (Int.toString exp)

  fun boolMsg arg act exp =
    errMsg arg (Bool.toString act) (Bool.toString exp)

  fun intListMsg arg act exp =
    errMsg arg (Utils.intListToStr act) (Utils.intListToStr exp)

  fun buildAsserter typeMsg = fn arg => fn act => fn exp =>
    if act = exp
    then ()
    else printRaise (typeMsg arg act exp)

  val str = buildAsserter strMsg
  val int = buildAsserter intMsg
  val bool =  buildAsserter boolMsg
  val intList = buildAsserter intListMsg
end
