use "two-sum.repo.sml";
use "../../../test/Assert.sml";
use "../../../test/Test.sml";
open Test;

describeAll solutions (fn {function, id} => (
  describeOne "Leet 1 solution" id (fn () => (
    it "finds indexes that add up to target value" (fn () => (
      Assert.intPair "12 [11, 3, 9, 15]"
        (function 12 [11, 3, 9, 15])
        (1, 2);

      Assert.intPair "6 [2, 4, 3]"
        (function 6 [2, 4, 3])
        (0, 1);

      Assert.intPair "~16 [5, 6, ~8, 13, ~8]"
        (function ~16 [5, 6, ~8, 13, ~8])
        (2, 4)
    ));

    it "evaluates to (~1, ~1) when no solution is found" (fn () => (
      Assert.intPair "0 []"
        (function 0 [])
        (~1, ~1);

      Assert.intPair "0 [1]"
        (function 0 [1])
        (~1, ~1);

      Assert.intPair "1000 [~2, ~1, 0, 1, 2]"
        (function 1000 [~2, ~1, 0, 1, 2])
        (~1, ~1)
    ))
  ))
))
