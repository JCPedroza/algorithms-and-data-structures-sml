signature TEST = sig
  val describeAll : 'a list -> ('a -> 'b) -> unit
  val describeOne : string -> string -> (unit -> 'a) -> 'a
  val describe : string -> (unit -> 'a) -> 'a
  val it : string -> (unit -> 'a) -> 'a
  val test : string -> (unit -> 'a) -> 'a (* Alias for [it] *)
end

(**
 * Tests that use the "describe-it" pattern. The body of the provided callback
 * function is evaluated in search for Fail exceptions.
 *)
structure Test :> TEST = struct

  (** Print [msg] and rails a Fail exception with [fail]. *)
  fun printRaise msg fail =
    (print (msg ^ "\n"); raise Fail fail)

  (** Error message used for test groups. *)
  fun itErrMsg id fail =
    "\n  Test Error:" ^
    "\n  '" ^ id ^ "' encountered " ^ fail

  (** Error message used for test suites. *)
  fun descErrMsg id fail =
    "\n    Suite Error:" ^
    "\n    '" ^ id ^ "' encountered " ^ fail ^ "\n"

  (**
   * Test suite for multiple functions that share the same test cases. The
   * [funs] list holds these functions (or a data structure that contains
   * behavior), that are passed to the next level of test suites or test cases,
   * to be used individually.
   * Runs [body] searching for Fail exceptions.
   * 'a list -> ('a -> 'b) -> unit
   *)
  fun describeAll funs body = case funs of
      [] => ()
    | f :: fs => (body f; describeAll fs body)

  (**
   * Test suite that holds groups of tests or other test suites that need
   * separate general and specific descriptions.
   * Runs [body] searching for Fail exceptions. Use [idGen] for a general
   * description, and [idSpec] for a particular description for the tests.
   * string -> string -> (unit -> 'a ) -> 'a
   *)
  fun describeOne idGen idSpec body =
    body ()
    handle Fail fail =>
      printRaise (descErrMsg (idGen ^ " <" ^ idSpec ^ ">") fail) "Suite Error"

  (**
   * Test suite that holds groups of tests or other test suites.
   * Runs [body] searching for Fail exceptions. The [id] is used to describe and
   * label the test suite. Returns the result of evaluating the function.
   * string -> (unit -> 'a) -> 'a
   *)
  fun describe id body =
    body ()
    handle Fail fail =>
      printRaise (descErrMsg id fail) "Suite Error"

  (**
   * Group tests together, describing a specific behavior.
   * Runs [body] searching for Fail exceptions. The [id] is used to describe and
   * label the test. Returns the result of evaluating the function.
   * string -> (unit -> 'a) -> 'a
   *)
  fun it id body =
    body ()
    handle Fail fail =>
      printRaise (itErrMsg id fail) "Test Error"

  (** Alias for the [it] function. *)
  val test = it
end
