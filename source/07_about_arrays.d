module about_arrays;

import helpers;
import dunit;

class AboutArrays
{
  mixin UnitTest;


  @Test
   void fixed_length_arrays() {
    string[4] fruits = ["banana", "mango", "apple", "orange"];
    assertEquals(fruits[0], "banana");
    assertEquals(fruits.length, 4);
    int[5] b = 1; // 5 elements with same value 1
    assertEquals(b, [1, 1, 1, 1, 1]);
  }

  @Test
  void dynamic_length_arrays() {
    string[] fruits = ["banana", "mango"];
    assertEquals(fruits.length, 2);
    fruits ~= "strawberry";
    assertEquals(fruits.length, 3);
    assertEquals(fruits[2], "strawberry");
  }


  @Test
  void array_slicing() {
    int[] a = [4, 3, 2, 1];
    a[0..2] = [1, 2];
    assertEquals(a, [1, 2, 2, 1]);
    a[0..$] = [0, 0, 0, 0]; // $ is always the last element
    assertEquals(a, [0, 0, 0, 0]);
  }

  @Test
  void array_append() {
    int [] a;
    a.length = 3; // length extended, elements using default value
    assertEquals(a, [0, 0, 0]);
    a ~= [3, 4];
    assertEquals(a, [0, 0, 0, 3, 4]);
  }

}
