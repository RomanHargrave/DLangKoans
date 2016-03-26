module about_strings;

import helpers;
import dunit;

class AboutStrings {
  mixin UnitTest;

  @Test
  public void stringSlicing() {
    auto sentence = "The quick brown fox";
    assertEquals(sentence[0], 'T');
    assertEquals(sentence[1..3], "he");
    assertEquals(sentence[$-1], 'x');
    assertEquals(sentence[$-3..$], "fox");
  }

  @Test
  public void stringConcatenation() {
    auto str1 = "Hello";
    auto str2 = " World";
    auto str = str1 ~ str2;
    assertEquals(str, "Hello World");
  }

  @Test
  public void stringsAreImmutable() {
    auto str = "hello";
    char[] s = "hello".dup;
    s[0] = 'H';
    assertEquals(s, "Hello");
  }

  @Test
  public void unicodeLiterals() {
    string s = "résumé"c;   // same as "résumé"
    wstring w = "résumé"w;
    dstring d = "résumé"d;

    assertEquals(s.length, 8);
    assertEquals(w.length, 6);
    assertEquals(d.length, 6);
  }
}
