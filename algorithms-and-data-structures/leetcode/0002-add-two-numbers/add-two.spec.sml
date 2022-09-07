use "../../../test/Assert.sml";
use "../../../test/Test.sml";
use "add-two.repo.sml";
open Test;

describeAll solutions (fn {function, id} => (
  describeOne "Leet 2 solution" id (fn () => (
    it "sums numbers represented as lists" (fn () => (
      Assert.intList
        "[0] [0]"
        (function [0] [0])
        [0];

      Assert.intList
        "[1, 2, 3] [4, 5, 6]"
        (function [1, 2, 3] [4, 5, 6])
        [5, 7, 9];

      Assert.intList
        "[9, 9] [9, 9, 9, 9]"
        (function [9, 9] [9, 9, 9, 9])
        [8, 9, 0, 0, 1];

      Assert.intList
        "[9, 9, 9, 9] [9, 9]"
        (function [9, 9, 9, 9] [9, 9])
        [8, 9, 0, 0, 1]
    ))
  ))
))
