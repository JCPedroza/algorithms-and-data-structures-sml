use "Assert.sml";
use "Test.sml";
open Test;

describe "Assertion module" (fn () => (
  it "asserts primitives" (fn () => (
    Assert.bool "a" true true;
    Assert.int "b" 0 0;
    Assert.str "'c'" "yo" "yo"
  ));

  it "asserts lists" (fn () => (
    Assert.intList "h" [1, 2, 3] [1, 2, 3]
  ))
))
