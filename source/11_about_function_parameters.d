module about_functions_parameters;

import helpers;
import dunit;

class AboutFunctionParameters {
  mixin UnitTest;


  // parameters are passed by value as default and ALWAYS copied

  void decrement(int value) {
          value -= 10;
  }

  @Test
  public void testParameterByValue()
  {
      auto number=100;
      decrement(number);
      assertEquals(number, 100);
  }


  // ... this is also true for slices
  // but you can force the reference semantic by adding a "ref" qualifier

  void wrong_append(int[] arr, int elem) {
      arr ~= elem;  // this doesn't work as expected
  }

  void right_append(ref int[] arr, int elem) {
      arr ~= elem;  // that's better
  }

  @Test
  public void testSliceParameter()
  {

      auto my_array=[4,8,15,16,23];
      wrong_append(my_array,42);
      assertEquals(my_array.length, 5);
      right_append(my_array,42);
      assertEquals(my_array.length, 6);
  }


  // parameters can have "in" and "out" qualifiers, 
  // where "in" stands for input and
  // "out" for values that will be returned to the caller

  int sumAndProduct(in int n1, in int n2, out int product) {
    product=n1*n2;
    return n1+n2;
  }

  @Test
  public void exerciseInOutParameters()
  {
      int prod;
      int result = sumAndProduct(7, 3, prod);
      assertEquals(result,  10);
      assertEquals(prod,    21);
  }

  /*-----------------------------------------*/


}
