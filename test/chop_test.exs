defmodule ProgrammingElixir.ChopTest do
  use ExUnit.Case, async: true

  alias ProgrammingElixir.Chop

  test "guess the number" do
    assert Chop.guess(1, 1..1) == 1
    assert Chop.guess(2, 1..10) == 2
    assert Chop.guess(273, 1..1000) == 273
  end
end
