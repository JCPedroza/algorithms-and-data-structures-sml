(* See http://sml.sourceforge.net/Basis/timer.html for documentaion on the
timing functions used. *)

(* Intertan type of Timer.startCPUTimer. Usr is time spent by code in user
space, sys is time spent in the operating system on behalf of the program. *)
type cpu_time = {
  usr : Time.time,
  sys : Time.time
}

(* Return type of Timer.startCPUTimer. Nongc is time spent in the program, gc
is time spent in the garbage collector. *)
type cpu_times = {
  nongc : cpu_time,
  gc : cpu_time
}

(* Timing profile result. *)
type profile = {
  id : string,
  inAsStr : string,
  rounds: int,
  cpuTimes : cpu_times,
  realTime : Time.time
}

(* Run a function multiple times with the same arguments. *)
fun runFunManyRounds f xs output rounds = case rounds of
    0 => output
  | _ => runFunManyRounds f xs (f xs) (rounds - 1)

(* Time one function run. *)
fun timeOneRun f xs id inAsStr : profile =
  let
    val cpuTimer = Timer.startCPUTimer ()
    val realTimer = Timer.startRealTimer ()

    val fxs = f xs

    val realTime = Timer.checkRealTimer realTimer
    val cpuTime = Timer.checkCPUTimes cpuTimer
  in {
      id = id,
      inAsStr = inAsStr,
      rounds = 1,
      cpuTimes = cpuTime,
      realTime = realTime
  }
  end

(* Time many function runs. *)
fun timeManyRuns f xs rounds id inAsStr : profile =
  let
    val cpuTimer = Timer.startCPUTimer ()
    val realTimer = Timer.startRealTimer ()

    val _ = runFunManyRounds f xs (f xs) rounds

    val realTime = Timer.checkRealTimer realTimer
    val cpuTime = Timer.checkCPUTimes cpuTimer
  in {
    id = id,
    inAsStr = inAsStr,
    rounds = rounds,
    cpuTimes = cpuTime,
    realTime = realTime
  }
  end
