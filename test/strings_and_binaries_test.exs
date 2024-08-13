defmodule StringsAndBinariesTest do
  use ExUnit.Case, async: true

  test "single-quoted string contains only printable ASCII characters" do
    assert true == StringsAndBinaries.printable_ascii?(~c"hello")
    assert false == StringsAndBinaries.printable_ascii?(~c"hello\x00")
  end

  test "anagram? returns true if two strings are anagrams" do
    assert true == StringsAndBinaries.anagram?('listen', 'silent')
    assert false == StringsAndBinaries.anagram?('hello', 'world')
  end

  test "calculates a single-quoted string and returns the result" do
    assert 150 == StringsAndBinaries.calculate('50 + 100')
    assert 160 == StringsAndBinaries.calculate('100 + 60')
    assert 40 == StringsAndBinaries.calculate('100 - 60')
    assert 10 == StringsAndBinaries.calculate('5 * 2')
    assert 3 == StringsAndBinaries.calculate('6 / 2')
  end

  test "center a list of words and prints in right order" do
    assert """
    cat
    """ == StringsAndBinaries.center(["cat"])
    assert """
     cat
    zebra
    """ == StringsAndBinaries.center(["cat", "zebra"])
  end

  test "capitalize the string" do
    assert "Hello" == StringsAndBinaries.capitalize("hello")
    assert "Hello. World. " == StringsAndBinaries.capitalize("hello. world. ")
    assert "Oh. A dog. Woof. " == StringsAndBinaries.capitalize("oh. a DOG. woof. ")
  end
end
