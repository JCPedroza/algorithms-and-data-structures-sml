use "../../../utest/utest.sml";
use "add-two-nums.repo.sml";

fun test f =
  f [0] [0] = [0] andalso
  f [1, 2, 3] [4, 5, 6] = [5, 7, 9] andalso
  f [9, 9] [9, 9, 9, 9] = [8, 9, 0, 0, 1]

val results = runTest test solutions "Add two numbers"
