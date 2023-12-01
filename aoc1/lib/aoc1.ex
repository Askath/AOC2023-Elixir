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
    {String.first(string), String.last(string)}
  end

  def hello do
    {_, file} = File.read("input")

    Enum.map(String.split(file, "\n"), fn string ->
      integers = Regex.scan(~r/\d+/, string)

      Enum.map(integers, fn s ->
        {first, last} =
          Enum.map(s, fn t ->
            first_and_last(t)
          end)
          |> Enum.at(0)

        String.to_integer(first) + String.to_integer(last)
      end)
      |> Enum.at(0)
    end)
    |> Enum.filter(fn nn -> nn != nil end)
    |> Enum.sum()
    |> IO.puts()
  end
end

Aoc1.hello()
