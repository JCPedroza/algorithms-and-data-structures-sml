use "../../../utest/utest.sml";

use "mul-of-3-or-5-if.sml"; val subjects = [subject];
use "mul-of-3-or-5-fun-tail.sml"; val subjects = subject :: subjects;
use "mul-of-3-or-5-analytic.sml"; val subjects = subject :: subjects;
use "mul-of-3-or-5-filter-fold.sml"; val subjects = subject :: subjects;
use "mul-of-3-or-5-while.sml"; val subjects = subject :: subjects;

fun testMulOf3Or5 f =
  f 3 = 0 andalso
  f 5 = 3 andalso
  f 10 = 23 andalso
  f 50 = 543 andalso
  f 100 = 2318

val testResults = runTest testMulOf3Or5 subjects "Multiples of 3 or 5"
