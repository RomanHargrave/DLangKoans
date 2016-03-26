module about_enum;

import helpers;
import dunit;

class AboutEnum {
  mixin UnitTest;

  enum Color { RED = 1, GREEN, BLUE };

  @Test
  public void enum_properties() {
    assertEquals(Color.init, Color.RED);
    assertEquals(Color.min, Color.RED);
    assertEquals(Color.max, Color.BLUE);
    assertEquals(Color.sizeof, 4);
  }

}
