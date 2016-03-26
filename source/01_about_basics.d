module about_basics;

import helpers;
import dunit;

import std.math;  // for isNaN

class AboutBasics
{
  mixin UnitTest;

  struct k {
    int x;
    float f;
    string s;
  }

  @Test
  void about_basics() {
    assertEquals(true, true, "what is truth ?");
    assertEquals(5 % 2, 1);
    assertEquals(5 * 2, 10);
    assertEquals(5 ^ 2, 7);

    //zero values
    int x;
    assertEquals(x, 0);

    //for all types
    float f;
    assertEquals(isNaN(f), true);  // float equality is not defined, e.g. nan != nan

    k c;  //also composite gets default initializers

    assertEquals(c.x, 0);
    assertEquals(isNaN(c.f), true);
    assertEquals(c.s, null);
  }

}
