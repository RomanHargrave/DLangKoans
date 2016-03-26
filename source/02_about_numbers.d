module about_numbers;

import helpers;
import dunit;

class AboutNumbers {
  mixin UnitTest;

  // fill in the value replacing the underscore

  @Test
  public void IntegersEqual() {
    auto integer = 1;
    auto expected = 1;
    assertEquals(expected, integer);
  }

  @Test
  public void IntegersHaveSize() {
    int an_integer = 1;
    assertEquals(int.sizeof, 4);
    assertEquals(an_integer.sizeof, 4);
  }

  // hint: here you may want to use assertLessThan
  @Test
  public void IntegersCanBeNegative() {
    int an_integer = -42;
    assertEquals(an_integer, -42);
  }
}
