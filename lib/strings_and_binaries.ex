defmodule StringsAndBinaries do
  def printable_ascii?([]), do: true
  def printable_ascii?([head | list]) when head >= 32 and head <= 126, do: printable_ascii?(list)
  def printable_ascii?(_), do: false

  def anagram?(word1, word2), do: Enum.sort(word1) == Enum.sort(word2)

  def calculate([a, "+", b]), do: a + b
  def calculate([a, "-", b]), do: a - b
  def calculate([a, "*", b]), do: a * b
  def calculate([a, "/", b]), do: div(a,b)

  def calculate(expression) do
    [number1, operator, number2] =
      expression
      |> to_string()
      |> String.split(" ")

    calculate([String.to_integer(number1), operator, String.to_integer(number2)])
  end

  def center(words) do
    sorted = Enum.sort_by(words, &String.length/1)
    max_length = Enum.at(sorted,-1) |> String.length
    Enum.reduce(sorted, "", fn word, acc ->
      acc <> String.duplicate(" ", div(max_length - String.length(word), 2)) <> word <> "\n"
    end)
  end

  def capitalize(word) do
    String.split(word, ". ")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(". ")
  end
end
