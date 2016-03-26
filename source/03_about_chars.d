module about_chars;

import helpers;
import dunit;

class AboutChars
{
  mixin UnitTest;

  @Test
  public void lonely_char() {
    char a_character = 'a';
    assertEquals(a_character, 'a');
  }

  @Test
  public void chars_have_a_size() {
    char a_character = 'b';
    assertEquals(a_character.sizeof, 1);
  }

  @Test
  public void chars_are_numbers() {
    char a_character = 'A';
    assertEquals(cast(int)(a_character), 65);
  }

  @Test
  public void more_chars_are_a_string() {
    string some_characters = "Hello World";
    assertEquals(some_characters.length, 11);
  }

  @Test
  public void unicode_chars() {
    char  e1 = 'e';
    wchar e2 = 'è';
    dchar e3 = 'é';
    assertEquals(e1.sizeof,1);
    assertEquals(e2.sizeof,2);
    assertEquals(e3.sizeof,4);
  }

}
