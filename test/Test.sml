signature TEST = sig
  val describeAll : 'a list -> ('a -> 'b) -> unit
  val describeOne : string -> string -> (unit -> 'a) -> 'a
  val describe : string -> (unit -> 'a) -> 'a
  val it : string -> (unit -> 'a) -> 'a
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

  fun describeAll funStructs body = case funStructs of
      [] => ()
    | s :: ss => (body s; describeAll ss body)

  fun describeOne idGen idSpec body =
    body ()
    handle Fail fail =>
      printRaise (descErrMsg (idGen ^ " <" ^ idSpec ^ ">") fail) "Suite Error"

  fun describe id body =
    body ()
    handle Fail fail =>
      printRaise (descErrMsg id fail) "Suite Error"

  fun it id body =
    body ()
    handle Fail fail =>
      printRaise (itErrMsg id fail) "Test Error"
end
