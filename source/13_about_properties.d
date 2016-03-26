module about_properties;

import helpers;
import dunit;

class AboutProperties {
  mixin UnitTest;

  @Test
  public void nativeProperties() {
    auto x = 3;
    assertEquals(x.sizeof, 4);
    assertEquals(typeof(x).stringof, "int");
  }

  @Test
  public void userDefinedProperties() {
    struct Rectangle {
      int width;
      int height;
      @property auto area() { return width * height;}
    }

    Rectangle r;
    r.width = 4;
    r.height = 3;
    assertEquals(r.area, 12);
  }

}
