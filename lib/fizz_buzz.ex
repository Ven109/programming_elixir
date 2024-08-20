defmodule FizzBuzz do
  def upto(n) when n > 0, do: _upto(1, n)

  defp _upto(current, n) when current > n, do: []

  defp _upto(current, n) do
    answer =
      cond do
        rem(current, 3) == 0 and rem(current, 5) == 0 -> "FizzBuzz"
        rem(current, 3) == 0 -> "Fizz"
        rem(current, 5) == 0 -> "Buzz"
        true -> current
      end

    [answer | _upto(current + 1, n)]
  end
end
