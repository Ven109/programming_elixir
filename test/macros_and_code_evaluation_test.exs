defmodule MacrosAndCodeEvaluationTest do
  use ExUnit.Case, async: true

  def times_n(n) do
    fn b -> b * n end
  end

  test "3 times 4 equals 12" do
    assert Test.times_3(4) == 12

    times_8 = times_n(8)
    assert times_8.(2) == 16
  end
end
