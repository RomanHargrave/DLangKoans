module about_associative_arrays;

import helpers;
import dunit;

class AboutAssociativeArrays
{
  mixin UnitTest;

  @Test
  void creation_and_assignment() {
    int[string] mymap;
    mymap["hello"] = 3;
    assertEquals(mymap["hello"], 3);
  }

  @Test
  void other_operations() {
    int[string] ages = ["bob" : 20, "joe" : 30, "dan" : 40];

    assertEquals(ages.length, 3);

    auto age = ages["bob"];
    assertEquals(age, 20);

    ages["bob"] = 77;
    assertEquals(ages["bob"], 77);

    import core.exception: RangeError;
    try
    {
      age = ages["steven"];
    }
    catch (RangeError e)
    {
      // accessing non existing elements raise an exception
      assertEquals(e.msg, "Range violation");
    }

    ages["steven"] = 66;  //new ones can be added
    assertEquals(ages["steven"], 66);

    assertEquals(ages.length, 4);

    ages.remove("joe");  // you can also remove elements

    assertEquals(ages.length, 3);
  }

}
