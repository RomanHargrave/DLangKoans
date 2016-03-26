module about_bitwise_operators;

import helpers;
import dunit;

class AboutBitwiseOperators
{
  mixin UnitTest;

  @Test
  public void shifts() {
    auto i = 1;
    auto j = -8;
    assertEquals(j << 3, -64);
    assertEquals(j >>> 3, 536870911);
    assertEquals(j >> 3, -1);
    assertEquals(i << 3, 8);
  }

  @Test
  public void operators() {
    assertEquals(2 | 4, 6); // or
    assertEquals(3 & 5, 1); // and
    assertEquals(6 ^ 4, 2); // xor
    assertEquals(~3, -4);  // not
  }

}
