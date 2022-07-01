use "../../../../../utest/utest.sml";

use "nth-fib-analytic.sml"; val subjects = [subject];
use "nth-fib-case-tail.sml"; val subjects = subject :: subjects;
use "nth-fib-case.sml"; val subjects = subject :: subjects;
use "nth-fib-fun-tail.sml"; val subjects = subject :: subjects;
use "nth-fib-fun.sml"; val subjects = subject :: subjects;
use "nth-fib-if.sml"; val subjects = subject :: subjects;
use "nth-fib-memo.sml"; val subjects = subject :: subjects;

fun testFib f =
  f 0 = 0 andalso
  f 1 = 1 andalso
  f 2 = 1 andalso
  f 3 = 2 andalso
  f 4 = 3 andalso
  f 5 = 5 andalso
  f 6 = 8 andalso
  f 7 = 13 andalso
  f 30 = 832040

val testResults = runTest testFib subjects "Nth Fibonacci"
