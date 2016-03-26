module about_foreach;

import helpers;
import dunit;

class AboutForeach
{
  mixin UnitTest;

  @Test
  public void arrays_iteration() {
    auto array = [3, 4, 5, 6];

    foreach(x; array){ // simple iteration, what is the scope of 'x'?
      x = x * 2;
    }
    assertEquals(array[0], 3);

    foreach(ref x ; array) { // what is changed ?
      x = x * 2;
    }
    assertEquals(array[0], 6);
  }

  @Test
  public void strings_iteration() {  // in D, string are immutable arrays of chars
    char k;

    foreach(c; "this is a short string") {
      k = c;
    }

    assertEquals(k, 'g');
  }

  @Test
  public void foreach_with_associative_arrays() {
    int[string] aa;
    string s;
    int v;

    aa["Torvalds"] = 1969;
    aa["Stallman"] = 1953;
    aa["Kernighan"] = 1942;
    aa["Ritchie"] = 1941;

    foreach (key, value; aa) {
      s ~= key[0];
      v += value - 1900;
    }

    assertEquals(s, "TKSR");
    assertEquals(v, 205);
  }


}

