signature TEST = sig
  val it : string -> (unit -> 'a) -> 'a
  val describe : string -> (unit -> 'a) -> 'a
end

structure Test :> TEST = struct
  fun printRaise msg fail =
    (print (msg ^ "\n"); raise Fail fail)

  fun itErrMsg id fail =
    "\n  Test Error:" ^
    "\n  '" ^ id ^ "' encountered " ^ fail

  fun descErrMsg id fail =
    "\n    Suite Error:" ^
    "\n    '" ^ id ^ "' encountered " ^ fail ^ "\n"

  fun describe id f =
    f ()
    handle Fail fail => printRaise (descErrMsg id fail) "Suite Error"

  fun it id f =
    f ()
    handle Fail fail => printRaise (itErrMsg id fail) "Test Error"
end
