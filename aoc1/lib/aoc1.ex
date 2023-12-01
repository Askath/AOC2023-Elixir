defmodule Aoc1 do
  @moduledoc """
  Documentation for `Aoc1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc1.hello()
      :world

  """
  def first_and_last(string) do
    first = String.first(string)
    last = String.last(string)
    IO.puts("first: #{first}, last: #{last}")

    {first, last}
  end

  def read_file do
    case File.read("input") do
      {:ok, result} ->
        result

      {:error, error} ->
        IO.puts("Error: #{error}")
    end
  end

  def replace_spoken_numbers(list) do
    digits = [
      {"eighthree", 83},
      {"eightwo", 82},
      {"fiveight", 58},
      {"threeight", 38},
      {"sevenine", 79},
      {"oneight", 18},
      {"twone", 21},
      {"one", 1},
      {"two", 2},
      {"three", 3},
      {"four", 4},
      {"five", 5},
      {"six", 6},
      {"seven", 7},
      {"eight", 8},
      {"nine", 9},
      {"zero", 0}
    ]

    Enum.map(list, fn line ->
      Enum.reduce(digits, line, fn {word, digit}, acc ->
        String.replace(acc, word, Integer.to_string(digit))
      end)
    end)
  end

  def parse(file) do
    file |> String.split("\n", trim: true) |> replace_spoken_numbers()
  end

  def hello do
    numbers =
      parse(read_file())
      |> Enum.map(fn line ->
        Regex.replace(~r/[a-z]/, line, "") |> first_and_last()
      end)

    Enum.reduce(numbers, 0, fn {first, last}, acc ->
      num = first <> last
      IO.puts(num)
      acc = acc + String.to_integer(num)
      acc
    end)
    |> IO.inspect()
  end
end

Aoc1.hello()
