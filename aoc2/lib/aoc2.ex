# only 12 red cubes, 13 green cubes, and 14 blue cubes
defmodule Aoc2 do
  def parse_file do
    file = File.read!("input") |> String.trim() |> String.split("\n")
    file
  end

  def game_number(string) do
    game = String.split(string, "\n") |> Enum.at(0)
    Regex.scan(~r/[0-9]:+/, game) |> Enum.at(0)
  end

  def sets(string) do
    game = String.split(string, "\n") |> Enum.at(0)
    set_string = String.split(game, ":") |> Enum.at(1)
    String.split(set_string, ";", trim: true)
  end

  def hello do
    parse_file()
  end
end

file = Aoc2.parse_file()

Enum.each(file, fn x ->
  game = Aoc2.game_number(x)
  game_id = String.replace(Enum.at(game, 0), ":", "")
  sets = Aoc2.sets(x)
end)
