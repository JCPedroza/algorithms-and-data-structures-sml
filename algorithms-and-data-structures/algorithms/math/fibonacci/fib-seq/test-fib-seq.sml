use "../../../../../utest/utest.sml";

use "fib-seq-case-tail.sml"; val subjects = [subject];

fun testFibSeq f =
  f 0 = [] andalso
  f 1 = [0] andalso
  f 2 = [0, 1] andalso
  f 7 = [0, 1, 1, 2, 3, 5, 8]

val testResults = runTest testFibSeq subjects "Fibonacci sequence"
