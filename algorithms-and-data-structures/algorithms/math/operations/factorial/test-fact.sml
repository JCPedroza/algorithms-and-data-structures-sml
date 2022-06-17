use "../../../../../test/test-utils.sml";

use "fact-if.sml"; val subjects = [subject];
use "fact-case.sml"; val subjects = subject :: subjects;
use "fact-case-tail.sml"; val subjects = subject :: subjects;
use "fact-fun.sml"; val subjects = subject :: subjects;
use "fact-fun-tail.sml"; val subjects = subject :: subjects;
use "fact-while.sml"; val subjects = subject :: subjects;

fun testFact f =
  f 0 = 1 andalso
  f 1 = 1 andalso
  f 2 = 2 andalso
  f 3 = 6 andalso
  f 4 = 24

val testResults = runTest testFact subjects "Factorial"
