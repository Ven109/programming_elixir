defmodule FizzBuzzTest do
  use ExUnit.Case, async: true

  test "returns a list of FizzBuzz" do
    assert [1, 2, "Fizz", 4, "Buzz"] == FizzBuzz.upto(5)
  end
end
